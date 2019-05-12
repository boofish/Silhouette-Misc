#
# Compile BEEBS programs in a terminal rather than in IDE.
# 
#
ECLIPSE = eclipse
ECLIPSE_OPTIONS = -nosplash \
				  --launcher.suppressErrors \
                  -application  \
				   org.eclipse.cdt.managedbuilder.core.headlessbuild \
                  -data
WORKSPACE = ~/projects/silhouette/projs
BUILD = -cleanBuild
BUILD_ALL = $(BUILD) all

ECLIPSE += $(ECLIPSE_OPTIONS) $(WORKSPACE)

PROJ_NAME = beebs

build:
	$(ECLIPSE) $(BUILD) $(PROJ_NAME) 

build-all:
	$(ECLIPSE) $(BUILD_ALL)

