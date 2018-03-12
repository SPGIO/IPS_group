	.text	0x00400000
	.globl	main
	la	$28, _heap_
	la	$11, _Incorre_32_
# was:	la	_Incorre_32__addr, _Incorre_32_
	ori	$10, $0, 16
# was:	ori	_Incorre_32__init, 0, 16
	sw	$10, 0($11)
# was:	sw	_Incorre_32__init, 0(_Incorre_32__addr)
	la	$11, _Incorre_21_
# was:	la	_Incorre_21__addr, _Incorre_21_
	ori	$10, $0, 16
# was:	ori	_Incorre_21__init, 0, 16
	sw	$10, 0($11)
# was:	sw	_Incorre_21__init, 0(_Incorre_21__addr)
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
# Function double
double:
	sw	$31, -4($29)
	addi	$29, $29, -8
	ori	$10, $2, 0
# was:	ori	_param_x_1_, 2, 0
	ori	$11, $10, 0
# was:	ori	_plus_L_3_, _param_x_1_, 0
# 	ori	_plus_R_4_,_param_x_1_,0
	add	$2, $11, $10
# was:	add	_doubleres_2_, _plus_L_3_, _plus_R_4_
# 	ori	2,_doubleres_2_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function plus
plus:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_x_5_,2,0
# 	ori	_param_y_6_,3,0
# 	ori	_plus_L_8_,_param_x_5_,0
# 	ori	_plus_R_9_,_param_y_6_,0
	add	$2, $2, $3
# was:	add	_plusres_7_, _plus_L_8_, _plus_R_9_
# 	ori	2,_plusres_7_,0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	jal	getint
# was:	jal	getint, 2
	ori	$11, $2, 0
# was:	ori	_letBind_11_, 2, 0
# 	ori	_eq_L_16_,_letBind_11_,0
	ori	$12, $0, 0
# was:	ori	_eq_R_17_, 0, 0
	ori	$10, $0, 0
# was:	ori	_cond_15_, 0, 0
	bne	$11, $12, _false_18_
# was:	bne	_eq_L_16_, _eq_R_17_, _false_18_
	ori	$10, $0, 1
# was:	ori	_cond_15_, 0, 1
_false_18_:
	bne	$10, $0, _then_12_
# was:	bne	_cond_15_, 0, _then_12_
	j	_else_13_
_then_12_:
	la	$2, _Incorre_21_
# was:	la	_tmp_20_, _Incorre_21_
# _Incorre_21_: string "Incorrect Input!"
# 	ori	_letBind_19_,_tmp_20_,0
# 	ori	2,_tmp_20_,0
	jal	putstring
# was:	jal	putstring, 2
	ori	$11, $0, 0
# was:	ori	_minus_L_22_, 0, 0
	ori	$10, $0, 1
# was:	ori	_minus_R_23_, 0, 1
	sub	$16, $11, $10
# was:	sub	_mainres_10_, _minus_L_22_, _minus_R_23_
	j	_endif_14_
_else_13_:
# 	ori	_lt_L_28_,_letBind_11_,0
	ori	$10, $0, 0
# was:	ori	_lt_R_29_, 0, 0
	slt	$10, $11, $10
# was:	slt	_cond_27_, _lt_L_28_, _lt_R_29_
	bne	$10, $0, _then_24_
# was:	bne	_cond_27_, 0, _then_24_
	j	_else_25_
_then_24_:
	la	$2, _Incorre_32_
# was:	la	_tmp_31_, _Incorre_32_
# _Incorre_32_: string "Incorrect Input!"
# 	ori	_letBind_30_,_tmp_31_,0
# 	ori	2,_tmp_31_,0
	jal	putstring
# was:	jal	putstring, 2
	ori	$11, $0, 0
# was:	ori	_minus_L_33_, 0, 0
	ori	$10, $0, 1
# was:	ori	_minus_R_34_, 0, 1
	sub	$16, $11, $10
# was:	sub	_mainres_10_, _minus_L_33_, _minus_R_34_
	j	_endif_26_
_else_25_:
# 	ori	_size_reg_36_,_letBind_11_,0
	addi	$11, $11, -1
# was:	addi	_size_reg_36_, _size_reg_36_, -1
	bgez	$11, _safe_lab_37_
# was:	bgez	_size_reg_36_, _safe_lab_37_
	ori	$5, $0, 11
# was:	ori	5, 0, 11
	j	_IllegalArrSizeError_
_safe_lab_37_:
	addi	$11, $11, 1
# was:	addi	_size_reg_36_, _size_reg_36_, 1
	ori	$10, $28, 0
# was:	ori	_letBind_35_, 28, 0
	sll	$12, $11, 2
# was:	sll	_tmp_43_, _size_reg_36_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_43_, _tmp_43_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_43_
	sw	$11, 0($10)
# was:	sw	_size_reg_36_, 0(_letBind_35_)
	addi	$14, $10, 4
# was:	addi	_addr_reg_38_, _letBind_35_, 4
	ori	$13, $0, 0
# was:	ori	_i_reg_39_, 0, 0
_loop_beg_40_:
	sub	$12, $13, $11
# was:	sub	_tmp_reg_42_, _i_reg_39_, _size_reg_36_
	bgez	$12, _loop_end_41_
# was:	bgez	_tmp_reg_42_, _loop_end_41_
	sw	$13, 0($14)
# was:	sw	_i_reg_39_, 0(_addr_reg_38_)
	addi	$14, $14, 4
# was:	addi	_addr_reg_38_, _addr_reg_38_, 4
	addi	$13, $13, 1
# was:	addi	_i_reg_39_, _i_reg_39_, 1
	j	_loop_beg_40_
_loop_end_41_:
# 	ori	_arr_reg_46_,_letBind_35_,0
	lw	$17, 0($10)
# was:	lw	_size_reg_45_, 0(_arr_reg_46_)
	ori	$16, $28, 0
# was:	ori	_letBind_44_, 28, 0
	sll	$11, $17, 2
# was:	sll	_tmp_55_, _size_reg_45_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_55_, _tmp_55_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_55_
	sw	$17, 0($16)
# was:	sw	_size_reg_45_, 0(_letBind_44_)
	addi	$19, $16, 4
# was:	addi	_addr_reg_49_, _letBind_44_, 4
	ori	$18, $0, 0
# was:	ori	_i_reg_50_, 0, 0
	addi	$20, $10, 4
# was:	addi	_elem_reg_47_, _arr_reg_46_, 4
_loop_beg_51_:
	sub	$10, $18, $17
# was:	sub	_tmp_reg_53_, _i_reg_50_, _size_reg_45_
	bgez	$10, _loop_end_52_
# was:	bgez	_tmp_reg_53_, _loop_end_52_
	lw	$2, 0($20)
# was:	lw	_res_reg_48_, 0(_elem_reg_47_)
# 	ori	2,_res_reg_48_,0
	jal	double
# was:	jal	double, 2
# 	ori	_tmp_reg_54_,2,0
# 	ori	_res_reg_48_,_tmp_reg_54_,0
	addi	$20, $20, 4
# was:	addi	_elem_reg_47_, _elem_reg_47_, 4
	sw	$2, 0($19)
# was:	sw	_res_reg_48_, 0(_addr_reg_49_)
	addi	$19, $19, 4
# was:	addi	_addr_reg_49_, _addr_reg_49_, 4
	addi	$18, $18, 1
# was:	addi	_i_reg_50_, _i_reg_50_, 1
	j	_loop_beg_51_
_loop_end_52_:
	ori	$17, $16, 0
# was:	ori	_arr_reg_57_, _letBind_44_, 0
	lw	$16, 0($17)
# was:	lw	_size_reg_58_, 0(_arr_reg_57_)
	ori	$2, $0, 0
# was:	ori	_letBind_56_, 0, 0
	addi	$17, $17, 4
# was:	addi	_arr_reg_57_, _arr_reg_57_, 4
	ori	$18, $0, 0
# was:	ori	_ind_var_59_, 0, 0
_loop_beg_61_:
	sub	$3, $18, $16
# was:	sub	_tmp_reg_60_, _ind_var_59_, _size_reg_58_
	bgez	$3, _loop_end_62_
# was:	bgez	_tmp_reg_60_, _loop_end_62_
	lw	$3, 0($17)
# was:	lw	_tmp_reg_60_, 0(_arr_reg_57_)
	addi	$17, $17, 4
# was:	addi	_arr_reg_57_, _arr_reg_57_, 4
# 	ori	2,_letBind_56_,0
# 	ori	3,_tmp_reg_60_,0
	jal	plus
# was:	jal	plus, 2 3
# 	ori	_tmp_reg_63_,2,0
# 	ori	_letBind_56_,_tmp_reg_63_,0
	addi	$18, $18, 1
# was:	addi	_ind_var_59_, _ind_var_59_, 1
	j	_loop_beg_61_
_loop_end_62_:
	ori	$16, $2, 0
# was:	ori	_tmp_64_, _letBind_56_, 0
# 	ori	_mainres_10_,_tmp_64_,0
	ori	$2, $16, 0
# was:	ori	2, _mainres_10_, 0
	jal	putint
# was:	jal	putint, 2
_endif_26_:
_endif_14_:
	ori	$2, $16, 0
# was:	ori	2, _mainres_10_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
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
_Incorre_32_:
	.space	4
	.asciiz	"Incorrect Input!"
	.align	2
_Incorre_21_:
	.space	4
	.asciiz	"Incorrect Input!"
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