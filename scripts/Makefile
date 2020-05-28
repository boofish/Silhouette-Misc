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

stm32f469i-disco_hal_lib/%:
	$(ECLIPSE) $(BUILD) $@

beebs/%:
	$(ECLIPSE) $(BUILD) $@

coremark/%:
	$(ECLIPSE) $(BUILD) $@

coremark-pro/%:
	$(ECLIPSE) $(BUILD) $@
