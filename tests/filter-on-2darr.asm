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
# Function write_1darr
write_1darr:
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
# was:	ori	_write_1darrres_5_, 28, 0
	sll	$11, $16, 2
# was:	sll	_tmp_16_, _size_reg_6_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_16_, _tmp_16_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_16_
	sw	$16, 0($17)
# was:	sw	_size_reg_6_, 0(_write_1darrres_5_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_10_, _write_1darrres_5_, 4
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
# was:	ori	2, _write_1darrres_5_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function write_2darr
write_2darr:
	sw	$31, -4($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -28
	ori	$10, $2, 0
# was:	ori	_param_x_17_, 2, 0
# 	ori	_arr_reg_20_,_param_x_17_,0
	lw	$16, 0($10)
# was:	lw	_size_reg_19_, 0(_arr_reg_20_)
	ori	$17, $28, 0
# was:	ori	_write_2darrres_18_, 28, 0
	sll	$11, $16, 2
# was:	sll	_tmp_29_, _size_reg_19_, 2
	addi	$11, $11, 4
# was:	addi	_tmp_29_, _tmp_29_, 4
	add	$28, $28, $11
# was:	add	28, 28, _tmp_29_
	sw	$16, 0($17)
# was:	sw	_size_reg_19_, 0(_write_2darrres_18_)
	addi	$18, $17, 4
# was:	addi	_addr_reg_23_, _write_2darrres_18_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_24_, 0, 0
	addi	$20, $10, 4
# was:	addi	_elem_reg_21_, _arr_reg_20_, 4
_loop_beg_25_:
	sub	$10, $19, $16
# was:	sub	_tmp_reg_27_, _i_reg_24_, _size_reg_19_
	bgez	$10, _loop_end_26_
# was:	bgez	_tmp_reg_27_, _loop_end_26_
	lw	$2, 0($20)
# was:	lw	_res_reg_22_, 0(_elem_reg_21_)
# 	ori	2,_res_reg_22_,0
	jal	write_1darr
# was:	jal	write_1darr, 2
# 	ori	_tmp_reg_28_,2,0
# 	ori	_res_reg_22_,_tmp_reg_28_,0
	addi	$20, $20, 4
# was:	addi	_elem_reg_21_, _elem_reg_21_, 4
	sw	$2, 0($18)
# was:	sw	_res_reg_22_, 0(_addr_reg_23_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_23_, _addr_reg_23_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_24_, _i_reg_24_, 1
	j	_loop_beg_25_
_loop_end_26_:
	ori	$2, $17, 0
# was:	ori	2, _write_2darrres_18_, 0
	addi	$29, $29, 28
	lw	$20, -24($29)
	lw	$19, -20($29)
	lw	$18, -16($29)
	lw	$17, -12($29)
	lw	$16, -8($29)
	lw	$31, -4($29)
	jr	$31
# Function even
even:
	sw	$31, -4($29)
	addi	$29, $29, -8
# 	ori	_param_a_30_,2,0
# 	ori	_divide_L_36_,_param_a_30_,0
	ori	$10, $0, 2
# was:	ori	_divide_R_37_, 0, 2
	div	$11, $2, $10
# was:	div	_times_L_34_, _divide_L_36_, _divide_R_37_
	ori	$10, $0, 2
# was:	ori	_times_R_35_, 0, 2
	mul	$10, $11, $10
# was:	mul	_eq_L_32_, _times_L_34_, _times_R_35_
# 	ori	_eq_R_33_,_param_a_30_,0
	ori	$11, $0, 0
# was:	ori	_evenres_31_, 0, 0
	bne	$10, $2, _false_38_
# was:	bne	_eq_L_32_, _eq_R_33_, _false_38_
	ori	$11, $0, 1
# was:	ori	_evenres_31_, 0, 1
_false_38_:
	ori	$2, $11, 0
# was:	ori	2, _evenres_31_, 0
	addi	$29, $29, 8
	lw	$31, -4($29)
	jr	$31
# Function main
main:
	sw	$31, -4($29)
	sw	$22, -32($29)
	sw	$21, -28($29)
	sw	$20, -24($29)
	sw	$19, -20($29)
	sw	$18, -16($29)
	sw	$17, -12($29)
	sw	$16, -8($29)
	addi	$29, $29, -36
	jal	getint
# was:	jal	getint, 2
	ori	$11, $2, 0
# was:	ori	_letBind_40_, 2, 0
# 	ori	_size_reg_46_,_letBind_40_,0
	addi	$11, $11, -1
# was:	addi	_size_reg_46_, _size_reg_46_, -1
	bgez	$11, _safe_lab_47_
# was:	bgez	_size_reg_46_, _safe_lab_47_
	ori	$5, $0, 11
# was:	ori	5, 0, 11
	j	_IllegalArrSizeError_
_safe_lab_47_:
	addi	$11, $11, 1
# was:	addi	_size_reg_46_, _size_reg_46_, 1
	ori	$10, $28, 0
# was:	ori	_arr_reg_43_, 28, 0
	sll	$12, $11, 2
# was:	sll	_tmp_53_, _size_reg_46_, 2
	addi	$12, $12, 4
# was:	addi	_tmp_53_, _tmp_53_, 4
	add	$28, $28, $12
# was:	add	28, 28, _tmp_53_
	sw	$11, 0($10)
# was:	sw	_size_reg_46_, 0(_arr_reg_43_)
	addi	$14, $10, 4
# was:	addi	_addr_reg_48_, _arr_reg_43_, 4
	ori	$12, $0, 0
# was:	ori	_i_reg_49_, 0, 0
_loop_beg_50_:
	sub	$13, $12, $11
# was:	sub	_tmp_reg_52_, _i_reg_49_, _size_reg_46_
	bgez	$13, _loop_end_51_
# was:	bgez	_tmp_reg_52_, _loop_end_51_
	sw	$12, 0($14)
# was:	sw	_i_reg_49_, 0(_addr_reg_48_)
	addi	$14, $14, 4
# was:	addi	_addr_reg_48_, _addr_reg_48_, 4
	addi	$12, $12, 1
# was:	addi	_i_reg_49_, _i_reg_49_, 1
	j	_loop_beg_50_
_loop_end_51_:
	lw	$11, 0($10)
# was:	lw	_size_reg_42_, 0(_arr_reg_43_)
	ori	$12, $28, 0
# was:	ori	_letBind_41_, 28, 0
	sll	$13, $11, 2
# was:	sll	_tmp_70_, _size_reg_42_, 2
	addi	$13, $13, 4
# was:	addi	_tmp_70_, _tmp_70_, 4
	add	$28, $28, $13
# was:	add	28, 28, _tmp_70_
	sw	$11, 0($12)
# was:	sw	_size_reg_42_, 0(_letBind_41_)
	addi	$14, $12, 4
# was:	addi	_addr_reg_54_, _letBind_41_, 4
	ori	$13, $0, 0
# was:	ori	_i_reg_55_, 0, 0
	addi	$15, $10, 4
# was:	addi	_elem_reg_44_, _arr_reg_43_, 4
_loop_beg_56_:
	sub	$10, $13, $11
# was:	sub	_tmp_reg_58_, _i_reg_55_, _size_reg_42_
	bgez	$10, _loop_end_57_
# was:	bgez	_tmp_reg_58_, _loop_end_57_
	lw	$16, 0($15)
# was:	lw	_res_reg_45_, 0(_elem_reg_44_)
# 	ori	_plus_L_61_,_res_reg_45_,0
	ori	$10, $0, 2
# was:	ori	_plus_R_62_, 0, 2
	add	$17, $16, $10
# was:	add	_size_reg_60_, _plus_L_61_, _plus_R_62_
	addi	$17, $17, -1
# was:	addi	_size_reg_60_, _size_reg_60_, -1
	bgez	$17, _safe_lab_63_
# was:	bgez	_size_reg_60_, _safe_lab_63_
	ori	$5, $0, 10
# was:	ori	5, 0, 10
	j	_IllegalArrSizeError_
_safe_lab_63_:
	addi	$17, $17, 1
# was:	addi	_size_reg_60_, _size_reg_60_, 1
	ori	$16, $28, 0
# was:	ori	_fun_arg_res_59_, 28, 0
	sll	$10, $17, 2
# was:	sll	_tmp_69_, _size_reg_60_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_69_, _tmp_69_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_69_
	sw	$17, 0($16)
# was:	sw	_size_reg_60_, 0(_fun_arg_res_59_)
	addi	$18, $16, 4
# was:	addi	_addr_reg_64_, _fun_arg_res_59_, 4
	ori	$19, $0, 0
# was:	ori	_i_reg_65_, 0, 0
_loop_beg_66_:
	sub	$10, $19, $17
# was:	sub	_tmp_reg_68_, _i_reg_65_, _size_reg_60_
	bgez	$10, _loop_end_67_
# was:	bgez	_tmp_reg_68_, _loop_end_67_
	sw	$19, 0($18)
# was:	sw	_i_reg_65_, 0(_addr_reg_64_)
	addi	$18, $18, 4
# was:	addi	_addr_reg_64_, _addr_reg_64_, 4
	addi	$19, $19, 1
# was:	addi	_i_reg_65_, _i_reg_65_, 1
	j	_loop_beg_66_
_loop_end_67_:
# 	ori	_res_reg_45_,_fun_arg_res_59_,0
	addi	$15, $15, 4
# was:	addi	_elem_reg_44_, _elem_reg_44_, 4
	sw	$16, 0($14)
# was:	sw	_res_reg_45_, 0(_addr_reg_54_)
	addi	$14, $14, 4
# was:	addi	_addr_reg_54_, _addr_reg_54_, 4
	addi	$13, $13, 1
# was:	addi	_i_reg_55_, _i_reg_55_, 1
	j	_loop_beg_56_
_loop_end_57_:
# 	ori	_arr_reg_73_,_letBind_41_,0
	lw	$17, 0($12)
# was:	lw	_size_reg_72_, 0(_arr_reg_73_)
	ori	$16, $28, 0
# was:	ori	_letBind_71_, 28, 0
	sll	$10, $17, 2
# was:	sll	_tmp_96_, _size_reg_72_, 2
	addi	$10, $10, 4
# was:	addi	_tmp_96_, _tmp_96_, 4
	add	$28, $28, $10
# was:	add	28, 28, _tmp_96_
	sw	$17, 0($16)
# was:	sw	_size_reg_72_, 0(_letBind_71_)
	addi	$19, $16, 4
# was:	addi	_addr_reg_77_, _letBind_71_, 4
	ori	$10, $0, 0
# was:	ori	_bool_reg_76_, 0, 0
	ori	$20, $0, 0
# was:	ori	_i_reg_78_, 0, 0
	ori	$18, $4, 0
# was:	ori	_k_reg_79_, 4, 0
	addi	$21, $12, 4
# was:	addi	_elem_reg_74_, _arr_reg_73_, 4
_loop_beg_80_:
	sub	$10, $20, $17
# was:	sub	_tmp_reg_82_, _i_reg_78_, _size_reg_72_
	bgez	$10, _loop_end_81_
# was:	bgez	_tmp_reg_82_, _loop_end_81_
	lw	$22, 0($21)
# was:	lw	_res_reg_75_, 0(_elem_reg_74_)
	ori	$11, $22, 0
# was:	ori	_arr_reg_86_, _res_reg_75_, 0
	lw	$10, 0($11)
# was:	lw	_size_reg_87_, 0(_arr_reg_86_)
	ori	$14, $0, 0
# was:	ori	_letBind_85_, 0, 0
	addi	$11, $11, 4
# was:	addi	_arr_reg_86_, _arr_reg_86_, 4
	ori	$12, $0, 0
# was:	ori	_ind_var_88_, 0, 0
_loop_beg_90_:
	sub	$13, $12, $10
# was:	sub	_tmp_reg_89_, _ind_var_88_, _size_reg_87_
	bgez	$13, _loop_end_91_
# was:	bgez	_tmp_reg_89_, _loop_end_91_
	lw	$13, 0($11)
# was:	lw	_tmp_reg_89_, 0(_arr_reg_86_)
	addi	$11, $11, 4
# was:	addi	_arr_reg_86_, _arr_reg_86_, 4
# 	ori	_plus_L_93_,_letBind_85_,0
# 	ori	_plus_R_94_,_tmp_reg_89_,0
	add	$14, $14, $13
# was:	add	_fun_arg_res_92_, _plus_L_93_, _plus_R_94_
# 	ori	_letBind_85_,_fun_arg_res_92_,0
	addi	$12, $12, 1
# was:	addi	_ind_var_88_, _ind_var_88_, 1
	j	_loop_beg_90_
_loop_end_91_:
# 	ori	_arg_95_,_letBind_85_,0
	ori	$2, $14, 0
# was:	ori	2, _arg_95_, 0
	jal	even
# was:	jal	even, 2
	ori	$10, $2, 0
# was:	ori	_fun_arg_res_84_, 2, 0
# 	ori	_bool_reg_76_,_fun_arg_res_84_,0
	addi	$21, $21, 4
# was:	addi	_elem_reg_74_, _elem_reg_74_, 4
	beq	$10, $0, _loop_footer_83_
# was:	beq	_bool_reg_76_, 0, _loop_footer_83_
	addi	$18, $18, 1
# was:	addi	_k_reg_79_, _k_reg_79_, 1
	sw	$22, 0($19)
# was:	sw	_res_reg_75_, 0(_addr_reg_77_)
	addi	$19, $19, 4
# was:	addi	_addr_reg_77_, _addr_reg_77_, 4
_loop_footer_83_:
	addi	$20, $20, 1
# was:	addi	_i_reg_78_, _i_reg_78_, 1
	j	_loop_beg_80_
_loop_end_81_:
	sw	$18, 0($16)
# was:	sw	_k_reg_79_, 0(_letBind_71_)
# 	ori	_arg_97_,_letBind_71_,0
	ori	$2, $16, 0
# was:	ori	2, _arg_97_, 0
	jal	write_2darr
# was:	jal	write_2darr, 2
# 	ori	_mainres_39_,2,0
# 	ori	2,_mainres_39_,0
	addi	$29, $29, 36
	lw	$22, -32($29)
	lw	$21, -28($29)
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