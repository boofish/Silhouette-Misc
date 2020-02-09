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

beebs/%:
	$(ECLIPSE) $(BUILD) $@

coremark/%:
	$(ECLIPSE) $(BUILD) $@

coremark-pro/%:
	$(ECLIPSE) $(BUILD) $@
