#!/bin/bash

source "./helper-scripts/abstract/abstract-compile.sh"
source "./helper-scripts/project-impl/variables.sh"

compile ${TOOLCHAIN_HOME} ${mcu_atmega328p} ${source_dir}
