cmd_scripts/kconfig/zconf.tab.o := cc -Wp,-MMD,scripts/kconfig/.zconf.tab.o.d -Wall -Wstrict-prototypes -O2 -fomit-frame-pointer -std=gnu11       -Iscripts/kconfig -c -o scripts/kconfig/zconf.tab.o scripts/kconfig/zconf.tab.c

source_scripts/kconfig/zconf.tab.o := scripts/kconfig/zconf.tab.c

deps_scripts/kconfig/zconf.tab.o := \
  scripts/kconfig/lkc.h \
    $(wildcard include/config/prefix.h) \
  scripts/kconfig/expr.h \
  scripts/kconfig/list.h \
  scripts/kconfig/lkc_proto.h \
  scripts/kconfig/zconf.tab.h \
  scripts/kconfig/kconf_id.c \
  scripts/kconfig/zconf.lex.c \
  scripts/kconfig/util.c \
  scripts/kconfig/confdata.c \
  scripts/kconfig/expr.c \
  scripts/kconfig/symbol.c \
  scripts/kconfig/menu.c \
  scripts/kconfig/preprocess.c \

scripts/kconfig/zconf.tab.o: $(deps_scripts/kconfig/zconf.tab.o)

$(deps_scripts/kconfig/zconf.tab.o):
