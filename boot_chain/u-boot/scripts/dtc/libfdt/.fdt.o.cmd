cmd_scripts/dtc/libfdt/fdt.o := cc -Wp,-MMD,scripts/dtc/libfdt/.fdt.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11      -I./scripts/dtc/libfdt -DNO_YAML  -c -o scripts/dtc/libfdt/fdt.o scripts/dtc/libfdt/fdt.c

source_scripts/dtc/libfdt/fdt.o := scripts/dtc/libfdt/fdt.c

deps_scripts/dtc/libfdt/fdt.o := \
  scripts/dtc/libfdt/libfdt_env.h \
  scripts/dtc/libfdt/fdt.h \
  scripts/dtc/libfdt/libfdt.h \
  scripts/dtc/libfdt/libfdt_env.h \
  scripts/dtc/libfdt/fdt.h \
  scripts/dtc/libfdt/libfdt_internal.h \

scripts/dtc/libfdt/fdt.o: $(deps_scripts/dtc/libfdt/fdt.o)

$(deps_scripts/dtc/libfdt/fdt.o):
