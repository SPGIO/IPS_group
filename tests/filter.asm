	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _true
# was:	la	_true_addr, _true
	ori	$10, $0, 4
# was:	ori	_true_init, 0, 4
	sw	$10, 0($11)
# was:	sw	_true_init, 0(_true_addr)
	la	$10, _false
# was:	la	_false_addr, _false
	ori	$11, $0, 5
# was:	ori	_false_init, 0, 5
	sw	$11, 0($10)
# was:	sw	_false_init, 0(_false_addr)
	jal	main
_stop_:
	ori	$2, $0, 10
	syscall
# Function write_int
write_int:
	sw	$31, -4($29)
	sw	$16, -8($29)
	addi	$29, $29, -12
	ori	$16, $2, 0
# was:	ori	_param_x_1_, 2, 0
# 	ori	_tmp_3_,_param_x_1_,0
# 	ori	_write_intres_2_,_tmp_3_,0
	ori	$2, $16, 0
# was:	ori	2, _write_intres_2_, 0
	jal	putint
# was:	jal	putint, 2
	ori	$2, $16, 0
# was:	ori	2, _write_intres_2_, 0
	addi	$29, $29, 12
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function write_int_arr
write_int_arr:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	ori	$10, $2, 0
# was:	ori	_param_x_4_, 2, 0
# 	ori	_arr_reg_7_,_param_x_4_,0
	lw	$16, 0($10)
# was:	lw	_size_reg_6_, 0(_arr_reg_7_)
	ori	$17, $28, 0
# was:	ori	_write_int_arrres_5_, 28, 0
	sll	$11, $16, 2
# was:	sll	_tmp_16_, _size_reg_6_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_16_, _tmp_16_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_16_
	sw	$16, 0($17)
# was:	sw	_size_reg_6_, 0(_write_int_arrres_5_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_10_, _write_int_arrres_5_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_11_, 0, 0
	addi	$20, $10, 4
# was:	addi	_elem_reg_8_, _arr_reg_7_, 4
_loop_beg_12_:
	sub	$10, $19, $16
# was:	sub	_tmp_reg_14_, _i_reg_11_, _size_reg_6_
	bgez	$10, _loop_end_13_
# was:	bgez	_tmp_reg_14_, _loop_end_13_
	lw	$2, 0($20)
# was:	lw	_res_reg_9_, 0(_elem_reg_8_)
# 	ori	2,_res_reg_9_,0
	jal	write_int
# was:	jal	write_int, 2
# 	ori	_tmp_reg_15_,2,0
# 	ori	_res_reg_9_,_tmp_reg_15_,0
	addi	$20, $20, 4
# was:	addi	_elem_reg_8_, _elem_reg_8_, 4
	sw	$2, 0($18)
# was:	sw	_res_reg_9_, 0(_addr_reg_10_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_10_, _addr_reg_10_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_11_, _i_reg_11_, 1
	j	_loop_beg_12_
_loop_end_13_:
	ori	$2, $17, 0
# was:	ori	2, _write_int_arrres_5_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function isMul16
isMul16:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_a_17_,2,0
# 	ori	_divide_L_23_,_param_a_17_,0
	ori	$10, $0, 16
# was:	ori	_divide_R_24_, 0, 16
	div	$11, $2, $10
# was:	div	_times_L_21_, _divide_L_23_, _divide_R_24_
	ori	$10, $0, 16
# was:	ori	_times_R_22_, 0, 16
	mul	$10, $11, $10
# was:	mul	_eq_L_19_, _times_L_21_, _times_R_22_
# 	ori	_eq_R_20_,_param_a_17_,0
	ori	$11, $0, 0
# was:	ori	_isMul16res_18_, 0, 0
	bne	$10, $2, _false_25_
# was:	bne	_eq_L_19_, _eq_R_20_, _false_25_
	ori	$11, $0, 1
# was:	ori	_isMul16res_18_, 0, 1
_false_25_:
	ori	$2, $11, 0
# was:	ori	2, _isMul16res_18_, 0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -24
	jal	getint
# was:	jal	getint, 2
	ori	$13, $2, 0
# was:	ori	_letBind_27_, 2, 0
# 	ori	_size_reg_37_,_letBind_27_,0
	addi	$13, $13, -1
# was:	addi	_size_reg_37_, _size_reg_37_, -1
	bgez	$13, _safe_lab_38_
# was:	bgez	_size_reg_37_, _safe_lab_38_
	ori	$5, $0, 10
# was:	ori	5, 0, 10
	j	_IllegalArrSizeError_
_safe_lab_38_:
	addi	$13, $13, 1
# was:	addi	_size_reg_37_, _size_reg_37_, 1
	ori	$10, $28, 0
# was:	ori	_arr_reg_29_, 28, 0
	sll	$11, $13, 2
# was:	sll	_tmp_44_, _size_reg_37_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_44_, _tmp_44_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_44_
	sw	$13, 0($10)
# was:	sw	_size_reg_37_, 0(_arr_reg_29_)
	addi	$11, $10, 4
# was:	addi	_addr_reg_39_, _arr_reg_29_, 4
	ori	$12, $0, 0
# was:	ori	_i_reg_40_, 0, 0
_loop_beg_41_:
	sub	$14, $12, $13
# was:	sub	_tmp_reg_43_, _i_reg_40_, _size_reg_37_
	bgez	$14, _loop_end_42_
# was:	bgez	_tmp_reg_43_, _loop_end_42_
	sw	$12, 0($11)
# was:	sw	_i_reg_40_, 0(_addr_reg_39_)
	addi	$11, $11, 4
# was:	addi	_addr_reg_39_, _addr_reg_39_, 4
	addi	$12, $12, 1
# was:	addi	_i_reg_40_, _i_reg_40_, 1
	j	_loop_beg_41_
_loop_end_42_:
	lw	$11, 0($10)
# was:	lw	_size_reg_30_, 0(_arr_reg_29_)
	addi	$10, $10, 4
# was:	addi	_arr_reg_29_, _arr_reg_29_, 4
	ori	$12, $0, 0
# was:	ori	_ind_var_31_, 0, 0
_loop_beg_34_:
	sub	$13, $12, $11
# was:	sub	_tmp_reg_33_, _ind_var_31_, _size_reg_30_
	bgez	$13, _loop_end_35_
# was:	bgez	_tmp_reg_33_, _loop_end_35_
	lb	$13, 0($10)
# was:	lb	_tmp_reg_33_, 0(_arr_reg_29_)
	addi	$10, $10, 1
# was:	addi	_arr_reg_29_, _arr_reg_29_, 1
# 	ori	_eq_L_46_,_letBind_28_,0
	ori	$14, $17, 0
# was:	ori	_divide_L_50_, _letBind_28_, 0
	ori	$13, $0, 2
# was:	ori	_divide_R_51_, 0, 2
	div	$14, $14, $13
# was:	div	_times_L_48_, _divide_L_50_, _divide_R_51_
	ori	$13, $0, 2
# was:	ori	_times_R_49_, 0, 2
	mul	$14, $14, $13
# was:	mul	_eq_R_47_, _times_L_48_, _times_R_49_
	ori	$13, $0, 0
# was:	ori	_fun_arg_res_45_, 0, 0
	bne	$17, $14, _false_52_
# was:	bne	_eq_L_46_, _eq_R_47_, _false_52_
	ori	$13, $0, 1
# was:	ori	_fun_arg_res_45_, 0, 1
_false_52_:
	ori	$17, $13, 0
# was:	ori	_letBind_28_, _fun_arg_res_45_, 0
	addi	$12, $12, 1
# was:	addi	_ind_var_31_, _ind_var_31_, 1
	beq	$17, $0, _loop_beg_34_
# was:	beq	_letBind_28_, 0, _loop_beg_34_
	j	_loop_beg_34_
_loop_end_35_:
	ori	$11, $17, 0
# was:	ori	_arr_reg_55_, _letBind_28_, 0
	lw	$10, 0($11)
# was:	lw	_size_reg_54_, 0(_arr_reg_55_)
	ori	$17, $28, 0
# was:	ori	_letBind_53_, 28, 0
	sll	$12, $10, 2
# was:	sll	_tmp_66_, _size_reg_54_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_66_, _tmp_66_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_66_
	sw	$10, 0($17)
# was:	sw	_size_reg_54_, 0(_letBind_53_)
	addi	$13, $17, 4
# was:	addi	_addr_reg_58_, _letBind_53_, 4
	ori	$14, $0, 0
# was:	ori	_i_reg_59_, 0, 0
	addi	$15, $11, 4
# was:	addi	_elem_reg_56_, _arr_reg_55_, 4
_loop_beg_60_:
	sub	$11, $14, $10
# was:	sub	_tmp_reg_62_, _i_reg_59_, _size_reg_54_
	bgez	$11, _loop_end_61_
# was:	bgez	_tmp_reg_62_, _loop_end_61_
	lw	$11, 0($15)
# was:	lw	_res_reg_57_, 0(_elem_reg_56_)
# 	ori	_times_L_64_,_res_reg_57_,0
	ori	$12, $11, 0
# was:	ori	_times_R_65_, _res_reg_57_, 0
	mul	$11, $11, $12
# was:	mul	_fun_arg_res_63_, _times_L_64_, _times_R_65_
# 	ori	_res_reg_57_,_fun_arg_res_63_,0
	addi	$15, $15, 4
# was:	addi	_elem_reg_56_, _elem_reg_56_, 4
	sw	$11, 0($13)
# was:	sw	_res_reg_57_, 0(_addr_reg_58_)
	addi	$13, $13, 4
# was:	addi	_addr_reg_58_, _addr_reg_58_, 4
	addi	$14, $14, 1
# was:	addi	_i_reg_59_, _i_reg_59_, 1
	j	_loop_beg_60_
_loop_end_61_:
# 	ori	_arr_reg_68_,_letBind_53_,0
	lw	$19, 0($17)
# was:	lw	_size_reg_69_, 0(_arr_reg_68_)
	addi	$17, $17, 4
# was:	addi	_arr_reg_68_, _arr_reg_68_, 4
	ori	$18, $0, 0
# was:	ori	_ind_var_70_, 0, 0
_loop_beg_73_:
	sub	$3, $18, $19
# was:	sub	_tmp_reg_72_, _ind_var_70_, _size_reg_69_
	bgez	$3, _loop_end_74_
# was:	bgez	_tmp_reg_72_, _loop_end_74_
	lb	$3, 0($17)
# was:	lb	_tmp_reg_72_, 0(_arr_reg_68_)
	addi	$17, $17, 1
# was:	addi	_arr_reg_68_, _arr_reg_68_, 1
	ori	$2, $16, 0
# was:	ori	2, _letBind_67_, 0
# 	ori	3,_tmp_reg_72_,0
	jal	isMul16
# was:	jal	isMul16, 2 3
	ori	$16, $2, 0
# was:	ori	_tmp_reg_76_, 2, 0
# 	ori	_letBind_67_,_tmp_reg_76_,0
	addi	$18, $18, 1
# was:	addi	_ind_var_70_, _ind_var_70_, 1
	beq	$16, $0, _loop_beg_73_
# was:	beq	_letBind_67_, 0, _loop_beg_73_
	j	_loop_beg_73_
_loop_end_74_:
# 	ori	_arg_77_,_letBind_67_,0
	ori	$2, $16, 0
# was:	ori	2, _arg_77_, 0
	jal	write_int_arr
# was:	jal	write_int_arr, 2
# 	ori	_mainres_26_,2,0
# 	ori	2,_mainres_26_,0
	addi	$29, $29, 24
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
ord:
	jr	$31
chr:
	andi	$2, $2, 255
	jr	$31
putint:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 1
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getint:
	ori	$2, $0, 5
	syscall
	jr	$31
putchar:
	addi	$29, $29, -8
	sw	$2, 0($29)
	sw	$4, 4($29)
	ori	$4, $2, 0
	ori	$2, $0, 11
	syscall
	ori	$2, $0, 4
	la	$4, _space_
	syscall
	lw	$2, 0($29)
	lw	$4, 4($29)
	addi	$29, $29, 8
	jr	$31
getchar:
	addi	$29, $29, -8
	sw	$4, 0($29)
	sw	$5, 4($29)
	ori	$2, $0, 12
	syscall
	ori	$5, $2, 0
	ori	$2, $0, 4
	la	$4, _cr_
	syscall
	ori	$2, $5, 0
	lw	$4, 0($29)
	lw	$5, 4($29)
	addi	$29, $29, 8
	jr	$31
putstring:
	addi	$29, $29, -16
	sw	$2, 0($29)
	sw	$4, 4($29)
	sw	$5, 8($29)
	sw	$6, 12($29)
	lw	$4, 0($2)
	addi	$5, $2, 4
	add	$6, $5, $4
	ori	$2, $0, 11
putstring_begin:
	sub	$4, $5, $6
	bgez	$4, putstring_done
	lb	$4, 0($5)
	syscall
	addi	$5, $5, 1
	j	putstring_begin
putstring_done:
	lw	$2, 0($29)
	lw	$4, 4($29)
	lw	$5, 8($29)
	lw	$6, 12($29)
	addi	$29, $29, 16
	jr	$31
_IllegalArrSizeError_:
	la	$4, _IllegalArrSizeString_
	ori	$2, $0, 4
	syscall
	ori	$4, $5, 0
	ori	$2, $0, 1
	syscall
	la	$4, _cr_
	ori	$2, $0, 4
	syscall
	j	_stop_
	.data	
_cr_:
	.asciiz	"\n"
_space_:
	.asciiz	" "
_IllegalArrSizeString_:
	.asciiz	"Error: Array size less or equal to 0 at line "
# String Literals
	.align	2
_true:
	.space	4
	.asciiz	"true"
	.align	2
_false:
	.space	4
	.asciiz	"false"
	.align	2
_heap_:
	.space	100000