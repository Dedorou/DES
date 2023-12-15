| RTL-module | Changing list | Descrtiption |
|---|---|---|
| scr_base_core_bmu.sv | change interface and some internal logic |  |
| scr_base_pipe_top.sv | add BMU instance and idu2bmu interface,<br> add BMU to pipeline status logic |  |
| scr_base_pipe_idu.sv | add idu2bmu interface, bmu decoding signals,<br> add BMU to readiness logic and HPM interface logic |  |
| scr_base_riscv_decoder.sv | add BMU instructions |  |
| scr_base_pipe_wb.sv | add bmu2wb interface, logic for ID Queue and Bypassing |  |
| scr_base_core_types.svh | add BMU instruction types and structure,<br>add BMU to WB dependency |  |
| scr_base_core_bdgc.svh | change Core Debug Pipeline Status Register,<br> add BMU to type_scr_base_dbgc_busy_s structure |  |
| scr_base_arch_descritpion.svh |  |  |
