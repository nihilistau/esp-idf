SOC_NAME := $(IDF_TARGET)

COMPONENT_SRCDIRS := $(SOC_NAME) src src/hal

COMPONENT_ADD_INCLUDEDIRS := $(SOC_NAME) $(SOC_NAME)/include include

-include $(COMPONENT_PATH)/$(SOC_NAME)/component.mk
COMPONENT_ADD_LDFRAGMENTS += linker.lf

ifdef IS_BOOTLOADER_BUILD
	COMPONENT_OBJEXCLUDE += src/regi2c_ctrl.o
endif
