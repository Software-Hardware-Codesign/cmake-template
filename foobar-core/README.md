# foobar-core

This is your core code module, it's compiled into a static library.

To compile to a target mcu use the following script:
```bash
source "./helper-scripts/abstract/abstract-compile.sh"
source "./helper-scripts/project-impl/variables.sh"

compile ${TOOLCHAIN_HOME} ${mcu_atmega32A} ${source_dir}
```

Edit the variables at `variables.sh` to satisfy your needs, to get more out of this, add your chip compilation script to `compile-all.sh`.