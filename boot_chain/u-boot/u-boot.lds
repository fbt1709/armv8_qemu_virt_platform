OUTPUT_FORMAT("elf64-littleaarch64", "elf64-littleaarch64", "elf64-littleaarch64")
OUTPUT_ARCH(aarch64)
ENTRY(_start)
SECTIONS
{
 . = 0x00000000;
 . = ALIGN(8);
 __image_copy_start = ADDR(.text);
 .text :
 {
  arch/arm/cpu/armv8/start.o (.text*)
 }
 .efi_runtime : {
                __efi_runtime_start = .;
  *(.text.efi_runtime*)
  *(.rodata.efi_runtime*)
  *(.data.efi_runtime*)
                __efi_runtime_stop = .;
 }
 .text_rest :
 {
  __text_start = .;
  *(.text*)
  __text_end = .;
 }
 .efi_runtime_rel : {
                __efi_runtime_rel_start = .;
  *(.rel*.efi_runtime)
  *(.rel*.efi_runtime.*)
                __efi_runtime_rel_stop = .;
 }
 .rodata ALIGN(8) : {
  __start_rodata = .;
  *(SORT_BY_ALIGNMENT(SORT_BY_NAME(.rodata*)))
 }
 __u_boot_list ALIGN(8) : {
  KEEP(*(SORT(__u_boot_list*)));
  __end_rodata = .;
 }
 .data ALIGN(8) : {
     __start_data = .;
  *(.data*)
 }
 . = ALIGN(8);
 __image_copy_end = .;
 .rela.dyn ALIGN(8) : {
  __rel_dyn_start = .;
  *(.rela*)
  __rel_dyn_end = .;
  . = ALIGN(8);
 }
 _end = .;
 .bss ADDR(.rela.dyn) (OVERLAY) : {
  __bss_start = .;
  *(.bss*)
  . = ALIGN(8);
  __bss_end = .;
  __end_data = .;
 }
 /DISCARD/ : { *(.dynsym) }
 /DISCARD/ : { *(.dynstr*) }
 /DISCARD/ : { *(.dynamic*) }
 /DISCARD/ : { *(.plt*) }
 /DISCARD/ : { *(.interp*) }
 /DISCARD/ : { *(.gnu*) }
}
ASSERT(_end % 8 == 0, "_end must be 8-byte aligned for device tree");
