#!/bin/bash

# binary_scanner.sh
# This bash script will:
#   0. have the current directory (where the script is invoked) as the work directory.
#   1. convert all the *.o *.elf files in the work direcotry into *.s files.
#   2. scan the all the *.s files for privileged instructions.
#   3. write the results in .csv text file in the work directory.
#
# Usage:
#
#  In IDE:
#    1. copy this script into the root directory of the project.
#    2. In project properties-> C/C++ Build -> Settings -> Build Steps -> Post-build Steps,
#       add one more command ' && bash ../binary_scanner.sh' at the end of 'Command'.
#    3. Clean and Rebuild the project.
#
#  Out of IDE:
#
#   cd $WORK_DIR
#   bash $PATH_TO_THIS_SCRIPT
#
# counting source code line: cat binary_scanner.sh | sed '/^\s*#.*$/d;/^\s*$/d' | wc -l

##############################
####### configurations #######

binary_dir="."

#instr_and_sigs[0]="mov,r0" 
instr_and_sigs[0]="mrs,psp,msp,control" 
instr_and_sigs[1]="msr,psp,msp,control"
instr_and_sigs_size=2

echo "instr and sigs: ${instr_and_sigs[@]}"

output_file_name="./binary_scanner_output.csv"

arm_objdump=arm-none-eabi-objdump
#arm_objdump=/home/smeller/extdisks/work/lab/iot-arm/ide/plugins/fr.ac6.mcu.externaltools.arm-none.linux64_1.17.0.201812190825/tools/compiler/bin/arm-none-eabi-objdump

#####################################
#### utiliti var and functions ######


# get_instruction_lines 
#
# Search one file for privileged instructions, 
# instructions recognized by two parts: <instr, instr_sig>
# return (via echo) a list of line numbers where matches occur.
# 
# - Input: 
#     $1 filename,  the file to search
#     $2 instr, the instruction name
#     $3 instr_sig, an operands of the instruction as an additional signature
#
# - Output:
#     echo $all_lines, a list of line numbers matched the condition
#
function get_instruction_lines(){
	filename=$1
	instr=$2 		# the instruction name, e.g. msr
	instr_sig=$3 	# the secondary signature of the instruction, e.g. psp/msp/control
	
	all_lines=`grep -ni "$instr" $filename | grep -i "$instr_sig" | cut -f1 -d:`
	echo $all_lines
}


# report_one_line 
# 
# Generate a line of report given a line of code in the assembly file.
# It will search for the function name that contains a given line of code. 
# function names recognized by regular expression pattern '<.*>:'
#
# A record of report for each line has format of:
# <instr, instr_sig> file_name line_number <function_name> assembly_line_code
# 
# - Input: 
#     $1 filename,  the file to search
#     $2 instr, the instruction name
#     $3 instr_sig, an operands of the instruction as an additional signature
#     $4 line_num, the line number of the code contain <instr, instr_sig>
#
# - Output:
#     $all_results, one line of record will be added to this global variable. 
#
function report_one_line(){
	filename=$1
	instr=$2 		# the instruction name, e.g. msr
	instr_sig=$3 	# the secondary signature of the instruction, e.g. psp/msp/control
	line_num=$4
	
	#echo "report_one_line($1,$2,$3,$4)"
	#echo "1. find function name of the line $4; 2. report it in all results"
	
	line_text=$(sed -n "$line_num p" $filename)
	line_text=$(awk -v line=$line_num 'NR==line{print $0}' $filename)
	
	reverse_lines=$(head -n $line_num $filename | tac)
	
	function_name=$(awk '/<.*>:/{print $2; exit}' <<< $reverse_lines)
	function_name_without_colon=${function_name%?}
	
	#echo "function_name: $function_name_without_colon"
	
	all_results="$all_results<$instr,$instr_sig>\t$filename\t$line_num\t$function_name_without_colon\t$line_text\n"
	
	
}

#
# iterate all lines and report it via report_one_line(...)
#
function report_all_lines(){
	filename=$1
	instr=$2 		# the instruction name, e.g. msr
	instr_sig=$3 	# the secondary signature of the instruction, e.g. psp/msp/control
	all_lines=$4
	
	#echo "report_all_lines($1, $2, $3, $4)"
	for each_line in $all_lines
	do 
	 report_one_line $filename $instr $instr_sig $each_line
	done
	
}

#
# convert_o_to_s
#
# convert object file into assembly file
#
# NOTE: 
#   Not all object file will be linked into the final executable elf file. Thus
# a report of privileged instruction does not mean the final executable has the
# instruction. However, here we still scan the object file as reference for easier
# locating the privileged instruction's source code.
#
function convert_o_to_s(){
	
  all_o_files=$(find  $binary_dir/ -name "*.o")

  #echo "convert_o_to_s: file list: $all_o_files"
  
  for each_file in $all_o_files
  do
   #echo "dumping file: $each_file"
   $arm_objdump -d $each_file > $each_file.s
   
  done
}

# 
# convert_elf_to_s
#
# convert elf file into assembly file
#
# NOTE: 
#   This is the final executable elf file. Thus a report of privileged instruction does
# mean this binary is a potentially dangerous. To locate the source code contain the 
# privileged instruction, we can find the same occurance of the function from the *.o
# files.
#
function convert_elf_to_s(){
	
  all_elf_files=$(find  $binary_dir/ -name "*.elf")

  #echo "convert_elf_to_s: file list: $all_elf_files"
  
  for each_file in $all_elf_files
  do
   #echo "dumping file: $each_file"
   $arm_objdump -d $each_file > $each_file.s
   
  done
}

#######################################
#####   MAIN ENTRY  ###################
# iterate through all the .o files
# report if found msr instructions operating on PSP/MSP/CONTROL reg for further analysis

all_results=""

all_results+="<instr,instr_sig>\tfile\tline\tfunction\tassembly_line(addr:binary_code instr op1, op2; cmts)\n"

if [ -z "$1" ]; then # dumping the file if no parameter given.

  # convert .o to .s for searching
  echo "convert all .o to .s files..."
  convert_o_to_s
  
  echo "convert elf files to .s file ..."
  convert_elf_to_s
  
fi
 
# scann and get all the .s files
ALL_S_FILES=$(find  $binary_dir/ -name "*.s")

echo ""
echo "-----------------------------"
echo "all .s files to be scanned:"
echo -e "$ALL_S_FILES"
 
for file in $ALL_S_FILES 
do
  echo ""
  echo "--------------------------------"
  echo "scanning file: $file"
  
  i="0"
  while [ $i -lt $instr_and_sigs_size ]
  do 
  	#echo "index = $i"
  	instr_sigs=${instr_and_sigs[$i]}
  	if [ -z "$instr_sigs" ];then
  		echo "ERROR: index $index is empty in instr_and_sigs"
  	fi
 
  	echo "instr_sigs: $instr_sigs"
  	
  	# split string into arrays
  	IFS=',' read -a array_instr_sigs <<< "$instr_sigs"
  	
  	# first element of the array is the instructino name
  	instr_name=${array_instr_sigs[0]}
  	
  	# the instruction signature for a named instruction is
  	# the ones starting from the second element in the array.
  	for each_instr_sig in ${array_instr_sigs[@]:1}
  	do
  		#echo "searching <$instr_name, $each_instr_sig>"
  		
		# searching the instruction with specified signatures
		# and get back all the line numbers in the current file
		
		lines_found=$(get_instruction_lines "$file" "$instr_name" "$each_instr_sig")
		
		if [ -n "$lines_found" ];then
		 echo -e "lines contain <$instr_name, $each_instr_sig> in $file:\n\t$lines_found"
		 report_all_lines "$file" "$instr_name" "$each_instr_sig" "$lines_found"
		#else
		# echo "no lines contain <$instr_name, $each_instr_sig> in $file"
		fi
  		
    done
  	
  	
  	
  	i=$[$i+1]
  done
 
  
done


echo ""
echo "-----------------------"

echo "binary scanner: results:"

echo -e "$all_results"

echo -e "$all_results" > $output_file_name

echo "binary scanner: all done; scanned results written into $output_file_name"
