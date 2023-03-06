#######################################
# STM32CubeProgrammer
#######################################
NPROC=$(shell nproc)

# You must specify a path of STM32CubeProgrammer CLI
STM32_PROG_PATH = stm32-programmer-cli 
STM32_PROG_SWD_FREQ_FLAG = 4000
STM32_PROG_PORT_FLAG = -c port=swd freq=$(STM32_PROG_SWD_FREQ_FLAG)
STM32_PROG_DOWNLOAD_FLAG = -d "$(CURDIR)/$(BUILD_DIR)/$(TARGET).bin"
STM32_PROG_DOWNLOAD_ADDR_FLAG = 0x08000000
STM32_PROG_OPTIONAL_FLAG = -v -rst

download: 
	$(STM32_PROG_PATH) $(STM32_PROG_PORT_FLAG) $(STM32_PROG_DOWNLOAD_FLAG) $(STM32_PROG_DOWNLOAD_ADDR_FLAG) $(STM32_PROG_OPTIONAL_FLAG)

rebuild: clean
	make -j$(NPROC) all

run: rebuild download
