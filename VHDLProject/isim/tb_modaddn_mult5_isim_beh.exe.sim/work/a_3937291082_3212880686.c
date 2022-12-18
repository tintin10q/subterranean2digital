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
static const char *ng0 = "/home/qc/School/2022-2023/Selected-Topics-On-Hardware-Security/Assignments/2/VHDLProject/addsubn.vhd";
extern char *IEEE_P_2592010699;
extern char *IEEE_P_1242562249;

char *ieee_p_1242562249_sub_1701011461141717515_1035706684(char *, char *, char *, char *, char *, char *);
char *ieee_p_2592010699_sub_16439989833707593767_503743352(char *, char *, char *, char *, char *, char *);


static void work_a_3937291082_3212880686_p_0(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    unsigned char t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    char *t10;

LAB0:    xsi_set_current_line(40, ng0);

LAB3:    t1 = xsi_get_transient_memory(5U);
    memset(t1, 0, 5U);
    t2 = t1;
    t3 = (t0 + 1352U);
    t4 = *((char **)t3);
    t5 = *((unsigned char *)t4);
    memset(t2, t5, 5U);
    t3 = (t0 + 4032);
    t6 = (t3 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memcpy(t9, t1, 5U);
    xsi_driver_first_trans_fast(t3);

LAB2:    t10 = (t0 + 3920);
    *((int *)t10) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}

static void work_a_3937291082_3212880686_p_1(char *t0)
{
    char t1[16];
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    unsigned int t8;
    unsigned int t9;
    unsigned char t10;
    char *t11;
    char *t12;
    char *t13;
    char *t14;
    char *t15;
    char *t16;

LAB0:    xsi_set_current_line(45, ng0);

LAB3:    t2 = (t0 + 1192U);
    t3 = *((char **)t2);
    t2 = (t0 + 6664U);
    t4 = (t0 + 1672U);
    t5 = *((char **)t4);
    t4 = (t0 + 6696U);
    t6 = ieee_p_2592010699_sub_16439989833707593767_503743352(IEEE_P_2592010699, t1, t3, t2, t5, t4);
    t7 = (t1 + 12U);
    t8 = *((unsigned int *)t7);
    t9 = (1U * t8);
    t10 = (5U != t9);
    if (t10 == 1)
        goto LAB5;

LAB6:    t11 = (t0 + 4096);
    t12 = (t11 + 56U);
    t13 = *((char **)t12);
    t14 = (t13 + 56U);
    t15 = *((char **)t14);
    memcpy(t15, t6, 5U);
    xsi_driver_first_trans_fast(t11);

LAB2:    t16 = (t0 + 3936);
    *((int *)t16) = 1;

LAB1:    return;
LAB4:    goto LAB2;

LAB5:    xsi_size_not_matching(5U, t9, 0);
    goto LAB6;

}

static void work_a_3937291082_3212880686_p_2(char *t0)
{
    char t1[16];
    char t2[16];
    char t13[16];
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    char *t14;
    char *t15;
    int t16;
    unsigned int t17;
    char *t18;
    char *t19;
    char *t20;
    char *t21;
    char *t22;
    char *t23;

LAB0:    xsi_set_current_line(51, ng0);

LAB3:    t3 = (t0 + 1032U);
    t4 = *((char **)t3);
    t3 = (t0 + 6648U);
    t5 = (t0 + 1832U);
    t6 = *((char **)t5);
    t5 = (t0 + 6696U);
    t7 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t2, t4, t3, t6, t5);
    t8 = (t0 + 1672U);
    t9 = *((char **)t8);
    t10 = (4 - 0);
    t11 = (t10 * 1U);
    t12 = (0 + t11);
    t8 = (t9 + t12);
    t14 = (t13 + 0U);
    t15 = (t14 + 0U);
    *((int *)t15) = 0;
    t15 = (t14 + 4U);
    *((int *)t15) = 0;
    t15 = (t14 + 8U);
    *((int *)t15) = -1;
    t16 = (0 - 0);
    t17 = (t16 * -1);
    t17 = (t17 + 1);
    t15 = (t14 + 12U);
    *((unsigned int *)t15) = t17;
    t15 = ieee_p_1242562249_sub_1701011461141717515_1035706684(IEEE_P_1242562249, t1, t7, t2, t8, t13);
    t18 = (t0 + 4160);
    t19 = (t18 + 56U);
    t20 = *((char **)t19);
    t21 = (t20 + 56U);
    t22 = *((char **)t21);
    memcpy(t22, t15, 5U);
    xsi_driver_first_trans_fast_port(t18);

LAB2:    t23 = (t0 + 3952);
    *((int *)t23) = 1;

LAB1:    return;
LAB4:    goto LAB2;

}


extern void work_a_3937291082_3212880686_init()
{
	static char *pe[] = {(void *)work_a_3937291082_3212880686_p_0,(void *)work_a_3937291082_3212880686_p_1,(void *)work_a_3937291082_3212880686_p_2};
	xsi_register_didat("work_a_3937291082_3212880686", "isim/tb_modaddn_mult5_isim_beh.exe.sim/work/a_3937291082_3212880686.didat");
	xsi_register_executes(pe);
}
