#
# Compile programs in a terminal rather than in IDE.
#

ECLIPSE = eclipse
ECLIPSE_OPTIONS = -nosplash						\
		  --launcher.suppressErrors				\
		  -application org.eclipse.cdt.managedbuilder.core.headlessbuild \
		  -data
WORKSPACE = ~/projects/silhouette/projs
BUILD = -cleanBuild

ECLIPSE += $(ECLIPSE_OPTIONS) $(WORKSPACE)

beebs:
	$(ECLIPSE) $(BUILD) beebs/Release

beebs-debug:
	$(ECLIPSE) $(BUILD) beebes/Debug

coremark:
	$(ECLIPSE) $(BUILD) coremark/Release

coremark-debug:
	$(ECLIPSE) $(BUILD) coremark/Debug
