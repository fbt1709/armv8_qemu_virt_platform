OUTPUT_FORMAT("elf64-littleaarch64")
OUTPUT_ARCH(aarch64)
ENTRY(bl2_entrypoint)
MEMORY {
    RAM (rwx): ORIGIN = ((((0x0e000000 + 0x00001000) + (0x00100000 - 0x00001000) - 0) - 0x70000) - 0x35000), LENGTH = (((0x0e000000 + 0x00001000) + (0x00100000 - 0x00001000) - 0) - 0x70000) - ((((0x0e000000 + 0x00001000) + (0x00100000 - 0x00001000) - 0) - 0x70000) - 0x35000)
}
SECTIONS {
    RAM_REGION_START = ORIGIN(RAM);
    RAM_REGION_LENGTH = LENGTH(RAM);
    . = ((((0x0e000000 + 0x00001000) + (0x00100000 - 0x00001000) - 0) - 0x70000) - 0x35000);
    ASSERT(. == ALIGN(((1) << (12))),
        "BL2_BASE address is not aligned on a page boundary.")
    .text . : {
        ASSERT(. == ALIGN(((1) << (12))),
        ".text address is not aligned on a page boundary.");
        __TEXT_START__ = .;
        *bl2_entrypoint.o(.text*)
        *(SORT_BY_ALIGNMENT(.text*))
        *(.vectors)
        __TEXT_END_UNALIGNED__ = .;
        . = ALIGN(((1) << (12)));
        __TEXT_END__ = .;
    } >RAM
    .ARM.extab . : {
        *(.ARM.extab* .gnu.linkonce.armextab.*)
    } >RAM
    .ARM.exidx . : {
        *(.ARM.exidx* .gnu.linkonce.armexidx.*)
    } >RAM
    .rodata . : {
        __RODATA_START__ = .;
        *(SORT_BY_ALIGNMENT(.rodata*))
        . = ALIGN(8); __RT_SVC_DESCS_START__ = .; KEEP(*(.rt_svc_descs)) __RT_SVC_DESCS_END__ = .; . = ALIGN(8); __FCONF_POPULATOR_START__ = .; KEEP(*(.fconf_populator)) __FCONF_POPULATOR_END__ = .; . = ALIGN(8); __PMF_SVC_DESCS_START__ = .; KEEP(*(.pmf_svc_descs)) __PMF_SVC_DESCS_END__ = .; . = ALIGN(8); __PARSER_LIB_DESCS_START__ = .; KEEP(*(.img_parser_lib_descs)) __PARSER_LIB_DESCS_END__ = .; . = ALIGN(8); __CPU_OPS_START__ = .; KEEP(*(.cpu_ops)) __CPU_OPS_END__ = .; . = ALIGN(8); __GOT_START__ = .; *(.got) __GOT_END__ = .;
        __RODATA_END_UNALIGNED__ = .;
        . = ALIGN(((1) << (12)));
        __RODATA_END__ = .;
    } >RAM
    __RW_START__ = .;
    .data . : ALIGN(1) { __DATA_START__ = .; *(SORT_BY_ALIGNMENT(.data*)) __DATA_END__ = .; } >RAM
    .stacks (NOLOAD) : { __STACKS_START__ = .; *(.tzfw_normal_stacks) __STACKS_END__ = .; } >RAM
    .bss (NOLOAD) : ALIGN(16) { __BSS_START__ = .; *(SORT_BY_ALIGNMENT(.bss*)) *(COMMON) . = ALIGN((1 << 6)); __BAKERY_LOCK_START__ = .; __PERCPU_BAKERY_LOCK_START__ = .; *(.bakery_lock) . = ALIGN((1 << 6)); __PERCPU_BAKERY_LOCK_END__ = .; __PERCPU_BAKERY_LOCK_SIZE__ = ABSOLUTE(__PERCPU_BAKERY_LOCK_END__ - __PERCPU_BAKERY_LOCK_START__); . = . + (__PERCPU_BAKERY_LOCK_SIZE__ * ((((1) << (4)) + ((1) << (4))) - 1)); __BAKERY_LOCK_END__ = .; . = ALIGN((1 << 6)); __PMF_TIMESTAMP_START__ = .; KEEP(*(.pmf_timestamp_array)) . = ALIGN((1 << 6)); __PMF_PERCPU_TIMESTAMP_END__ = .; __PERCPU_TIMESTAMP_SIZE__ = ABSOLUTE(. - __PMF_TIMESTAMP_START__); . = . + (__PERCPU_TIMESTAMP_SIZE__ * ((((1) << (4)) + ((1) << (4))) - 1)); __PMF_TIMESTAMP_END__ = .; . = ALIGN(16); __BASE_XLAT_TABLE_START__ = .; *(.base_xlat_table) __BASE_XLAT_TABLE_END__ = .; __BSS_END__ = .; } >RAM
    .xlat_table (NOLOAD) : { __XLAT_TABLE_START__ = .; *(.xlat_table) __XLAT_TABLE_END__ = .; } >RAM
    __RW_END__ = .;
    __BL2_END__ = .;
    RAM_REGION_END = .;
    __BSS_SIZE__ = SIZEOF(.bss);
    ASSERT(. <= (((0x0e000000 + 0x00001000) + (0x00100000 - 0x00001000) - 0) - 0x70000), "BL2 image has exceeded its limit.")
}
