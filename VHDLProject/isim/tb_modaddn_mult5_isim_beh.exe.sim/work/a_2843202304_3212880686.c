/**********************************************************************/
/*   ____  ____                                                       */
/*  /   /\/   /                                                       */
/* /___/  \  /                                                        */
/* \   \   \/                                                       */
/*  \   \        Copyright (c) 2003-2009 Xilinx, Inc.                */
/*  /   /          All Right Reserved.                                 */
/* /---/   /\                                                         */
/* \   \  /  \                                                      */
/*  \___\/\___\                                                    */
/***********************************************************************/

/* This file is designed for use with ISim build 0xfbc00daa */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "/home/qc/School/2022-2023/Selected-Topics-On-Hardware-Security/Assignments/2/VHDLProject/tb_modaddn_mult5.vhd";



static void work_a_2843202304_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    unsigned char t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    int64 t10;
    int64 t11;

LAB0:    t1 = (t0 + 3864U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(73, ng0);

LAB4:    t2 = (t0 + 2472U);
    t3 = *((char **)t2);
    t4 = *((unsigned char *)t3);
    t5 = (!(t4));
    if (t5 != 0)
        goto LAB5;

LAB7:    xsi_set_current_line(79, ng0);

LAB18:    *((char **)t1) = &&LAB19;

LAB1:    return;
LAB5:    xsi_set_current_line(74, ng0);
    t2 = (t0 + 4528);
    t6 = (t2 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    *((unsigned char *)t9) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t10 = *((int64 *)t3);
    t11 = (t10 / 2);
    t2 = (t0 + 3672);
    xsi_process_wait(t2, t11);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB6:;
LAB8:    xsi_set_current_line(76, ng0);
    t2 = (t0 + 4528);
    t3 = (t2 + 56U);
    t6 = *((char **)t3);
    t7 = (t6 + 56U);
    t8 = *((char **)t7);
    *((unsigned char *)t8) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(77, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t10 = *((int64 *)t3);
    t11 = (t10 / 2);
    t2 = (t0 + 3672);
    xsi_process_wait(t2, t11);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    goto LAB4;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    goto LAB2;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

}

static void work_a_2843202304_3212880686_p_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    int64 t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned char t10;
    unsigned char t11;
    unsigned int t12;
    char *t13;
    char *t14;
    int64 t15;
    int64 t16;

LAB0:    t1 = (t0 + 4112U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(85, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3920);
    xsi_process_wait(t2, t4);

LAB6:    *((char **)t1) = &&LAB7;

LAB1:    return;
LAB4:    xsi_set_current_line(87, ng0);
    t2 = (t0 + 4592);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(89, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3920);
    xsi_process_wait(t2, t4);

LAB10:    *((char **)t1) = &&LAB11;
    goto LAB1;

LAB5:    goto LAB4;

LAB7:    goto LAB5;

LAB8:    xsi_set_current_line(91, ng0);
    t2 = (t0 + 4592);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(93, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3920);
    xsi_process_wait(t2, t4);

LAB14:    *((char **)t1) = &&LAB15;
    goto LAB1;

LAB9:    goto LAB8;

LAB11:    goto LAB9;

LAB12:    xsi_set_current_line(95, ng0);
    t2 = (t0 + 8537);
    t5 = (t0 + 4656);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(96, ng0);
    t2 = (t0 + 8541);
    t5 = (t0 + 4720);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 4784);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(98, ng0);
    t2 = (t0 + 8545);
    t5 = (t0 + 4848);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(99, ng0);
    t2 = (t0 + 4912);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(100, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3920);
    xsi_process_wait(t2, t4);

LAB18:    *((char **)t1) = &&LAB19;
    goto LAB1;

LAB13:    goto LAB12;

LAB15:    goto LAB13;

LAB16:    xsi_set_current_line(102, ng0);
    t2 = (t0 + 4784);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(104, ng0);

LAB22:    t2 = (t0 + 4432);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB23;
    goto LAB1;

LAB17:    goto LAB16;

LAB19:    goto LAB17;

LAB20:    t3 = (t0 + 4432);
    *((int *)t3) = 0;
    xsi_set_current_line(106, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t10 = 1;
    if (4U == 4U)
        goto LAB27;

LAB28:    t10 = 0;

LAB29:    if ((!(t10)) != 0)
        goto LAB24;

LAB26:    xsi_set_current_line(109, ng0);
    t2 = (t0 + 4912);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB25:    xsi_set_current_line(112, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t15 = (3 * t4);
    t16 = (t15 / 2);
    t2 = (t0 + 3920);
    xsi_process_wait(t2, t16);

LAB35:    *((char **)t1) = &&LAB36;
    goto LAB1;

LAB21:    t3 = (t0 + 1992U);
    t5 = *((char **)t3);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB20;
    else
        goto LAB22;

LAB23:    goto LAB21;

LAB24:    xsi_set_current_line(107, ng0);
    t7 = (t0 + 4912);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t7);
    goto LAB25;

LAB27:    t12 = 0;

LAB30:    if (t12 < 4U)
        goto LAB31;
    else
        goto LAB29;

LAB31:    t2 = (t3 + t12);
    t6 = (t5 + t12);
    if (*((unsigned char *)t2) != *((unsigned char *)t6))
        goto LAB28;

LAB32:    t12 = (t12 + 1);
    goto LAB30;

LAB33:    xsi_set_current_line(114, ng0);
    t2 = (t0 + 8549);
    t5 = (t0 + 4656);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(115, ng0);
    t2 = (t0 + 8553);
    t5 = (t0 + 4720);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(116, ng0);
    t2 = (t0 + 4784);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)3;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(117, ng0);
    t2 = (t0 + 8557);
    t5 = (t0 + 4848);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t2, 4U);
    xsi_driver_first_trans_fast(t5);
    xsi_set_current_line(118, ng0);
    t2 = (t0 + 4912);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(119, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t2 = (t0 + 3920);
    xsi_process_wait(t2, t4);

LAB39:    *((char **)t1) = &&LAB40;
    goto LAB1;

LAB34:    goto LAB33;

LAB36:    goto LAB34;

LAB37:    xsi_set_current_line(121, ng0);
    t2 = (t0 + 4784);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(123, ng0);

LAB43:    t2 = (t0 + 4448);
    *((int *)t2) = 1;
    *((char **)t1) = &&LAB44;
    goto LAB1;

LAB38:    goto LAB37;

LAB40:    goto LAB38;

LAB41:    t3 = (t0 + 4448);
    *((int *)t3) = 0;
    xsi_set_current_line(125, ng0);
    t2 = (t0 + 2152U);
    t3 = *((char **)t2);
    t2 = (t0 + 1832U);
    t5 = *((char **)t2);
    t10 = 1;
    if (4U == 4U)
        goto LAB48;

LAB49:    t10 = 0;

LAB50:    if ((!(t10)) != 0)
        goto LAB45;

LAB47:    xsi_set_current_line(128, ng0);
    t2 = (t0 + 4912);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)2;
    xsi_driver_first_trans_fast(t2);

LAB46:    xsi_set_current_line(131, ng0);
    t2 = (t0 + 2888U);
    t3 = *((char **)t2);
    t4 = *((int64 *)t3);
    t15 = (3 * t4);
    t16 = (t15 / 2);
    t2 = (t0 + 3920);
    xsi_process_wait(t2, t16);

LAB56:    *((char **)t1) = &&LAB57;
    goto LAB1;

LAB42:    t3 = (t0 + 1992U);
    t5 = *((char **)t3);
    t10 = *((unsigned char *)t5);
    t11 = (t10 == (unsigned char)3);
    if (t11 == 1)
        goto LAB41;
    else
        goto LAB43;

LAB44:    goto LAB42;

LAB45:    xsi_set_current_line(126, ng0);
    t7 = (t0 + 4912);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    t13 = (t9 + 56U);
    t14 = *((char **)t13);
    *((unsigned char *)t14) = (unsigned char)3;
    xsi_driver_first_trans_fast(t7);
    goto LAB46;

LAB48:    t12 = 0;

LAB51:    if (t12 < 4U)
        goto LAB52;
    else
        goto LAB50;

LAB52:    t2 = (t3 + t12);
    t6 = (t5 + t12);
    if (*((unsigned char *)t2) != *((unsigned char *)t6))
        goto LAB49;

LAB53:    t12 = (t12 + 1);
    goto LAB51;

LAB54:    xsi_set_current_line(132, ng0);
    t2 = (t0 + 4976);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    *((unsigned char *)t7) = (unsigned char)1;
    xsi_driver_first_trans_fast(t2);
    xsi_set_current_line(133, ng0);

LAB60:    *((char **)t1) = &&LAB61;
    goto LAB1;

LAB55:    goto LAB54;

LAB57:    goto LAB55;

LAB58:    goto LAB2;

LAB59:    goto LAB58;

LAB61:    goto LAB59;

}


extern void work_a_2843202304_3212880686_init()
{
	static char *pe[] = {(void *)work_a_2843202304_3212880686_p_0,(void *)work_a_2843202304_3212880686_p_1};
	xsi_register_didat("work_a_2843202304_3212880686", "isim/tb_modaddn_mult5_isim_beh.exe.sim/work/a_2843202304_3212880686.didat");
	xsi_register_executes(pe);
}
