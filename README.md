# stm32-prog-makefile-rules
This additional makefile rule allows you to download a binary file into a target MCU using a `make` command.

## Features
- `make download`: Download the content of a binary file into the target MCU.
- `make rebuild`: Clean a build folder. And re-compile the project.
- `make run`: Execute `make rebuild` and `make download` respectively.
> Note: It just a simple Makefile rule so feel free to implement as you like :)

## Dependencies
- [STM32CubeProgrammer CLI](https://www.st.com/en/development-tools/stm32cubeprog.html)
- [STM32CubeMX](https://www.st.com/en/development-tools/stm32cubemx.html) (optional)

> Note: If you are generating a project from the STM32CubeMX, make sure the `Makefile` is selected from the `Project` -> `Toolchain/IDE` from the Project Manager.

## How to use it
1. Copy and paste into your Makefile.

> Note: For STM32cubeMX users, paste the rule inside of your project's Makefile above the `EOF` comment. 
> ```Makefile
> #######################################
> # dependencies
> #######################################
> -include $(wildcard $(BUILD_DIR)/*.d)
>
> # Some other Makefiles rules
>
> Paste in here.
>
> # *** EOF ***
> ```

2. Specify a path of the STM32CubeProgrammer CLI.
```Makefile
STM32_PROG_PATH = /your/stm32cubeprogrammer/cli/path
```

3. Execute the rules.
