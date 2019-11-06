#!/usr/bin/python3

'''
This script checks if the binary of a test program has functions that contain 
inline asm code.

Arguments:
    1 - the name of a BEEBS program.
'''

import sys

INLINE_ASM_LIST = [
        "HAL_NVIC_SystemReset",
        "HAL_MPU_Disable",
        "HAL_MPU_Enable",
        "HAL_FLASH_Program",
        "HAL_FLASH_Program_IT",
        "HAL_NOR_Read_ID",
        "HAL_NOR_ReturnToReadMode",
        "HAL_NOR_Read",
        "HAL_NOR_Program",
        "HAL_NOR_ReadBuffer",
        "HAL_NOR_ProgramBuffer",
        "HAL_NOR_Erase_Block",
        "HAL_NOR_Erase_Chip",
        "HAL_NOR_Read_CFI",
        "HAL_NAND_Read_ID",
        "HAL_NAND_Read_Page_8b",
        "HAL_NAND_Read_Page_16b",
        "HAL_NAND_Write_Page_8b",
        "HAL_NAND_Write_Page_16b",
        "HAL_NAND_Read_SpareArea_8b",
        "HAL_NAND_Read_SpareArea_16b",
        "HAL_NAND_Write_SpareArea_8b",
        "HAL_NAND_Write_SpareArea_16b",
        "HAL_NAND_Erase_Block"
]

prog = sys.argv[1]
prog_path = "../../debug/" + prog + "/" + prog + ".s"

for line in open(prog_path).readlines():
    for func_name in INLINE_ASM_LIST:
        if func_name in line:
            print("Function " + func_name + " is in " + prog + ".")



