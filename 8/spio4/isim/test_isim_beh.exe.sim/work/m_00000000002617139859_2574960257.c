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

/* This file is designed for use with ISim build 0x1048c146 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "C:/Xilinx/xilinx/7/spio4/spio4.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {2, 0};
static int ng3[] = {0, 0};
static int ng4[] = {3, 0};



static void Always_27_0(char *t0)
{
    char t4[8];
    char t21[8];
    char t22[8];
    char t23[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    unsigned int t7;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    char *t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    char *t19;
    char *t20;
    char *t24;
    char *t25;
    char *t26;
    char *t27;
    int t28;
    char *t29;
    int t30;
    int t31;
    char *t32;
    int t33;
    int t34;
    int t35;
    unsigned int t36;
    unsigned int t37;
    int t38;
    int t39;

LAB0:    t1 = (t0 + 1536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(27, ng0);
    t2 = (t0 + 1732);
    *((int *)t2) = 1;
    t3 = (t0 + 1564);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(28, ng0);

LAB5:    xsi_set_current_line(29, ng0);
    t5 = (t0 + 692U);
    t6 = *((char **)t5);
    memset(t4, 0, 8);
    t5 = (t6 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (~(t7));
    t9 = *((unsigned int *)t6);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t5) == 0)
        goto LAB6;

LAB8:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB9:    t13 = (t4 + 4);
    t14 = *((unsigned int *)t13);
    t15 = (~(t14));
    t16 = *((unsigned int *)t4);
    t17 = (t16 & t15);
    t18 = (t17 != 0);
    if (t18 > 0)
        goto LAB10;

LAB11:    xsi_set_current_line(31, ng0);

LAB13:    xsi_set_current_line(32, ng0);
    t2 = (t0 + 1012);
    t3 = (t2 + 36U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t4 + 4);
    t12 = (t5 + 4);
    t7 = *((unsigned int *)t5);
    t8 = (t7 >> 1);
    *((unsigned int *)t4) = t8;
    t9 = *((unsigned int *)t12);
    t10 = (t9 >> 1);
    *((unsigned int *)t6) = t10;
    t11 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t11 & 7U);
    t14 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t14 & 7U);
    t13 = (t0 + 1012);
    t19 = (t0 + 1012);
    t20 = (t19 + 44U);
    t24 = *((char **)t20);
    t25 = ((char*)((ng2)));
    t26 = ((char*)((ng3)));
    xsi_vlog_convert_partindices(t21, t22, t23, ((int*)(t24)), 2, t25, 32, 1, t26, 32, 1);
    t27 = (t21 + 4);
    t15 = *((unsigned int *)t27);
    t28 = (!(t15));
    t29 = (t22 + 4);
    t16 = *((unsigned int *)t29);
    t30 = (!(t16));
    t31 = (t28 && t30);
    t32 = (t23 + 4);
    t17 = *((unsigned int *)t32);
    t33 = (!(t17));
    t34 = (t31 && t33);
    if (t34 == 1)
        goto LAB14;

LAB15:    xsi_set_current_line(33, ng0);
    t2 = (t0 + 784U);
    t3 = *((char **)t2);
    t2 = (t0 + 1012);
    t5 = (t0 + 1012);
    t6 = (t5 + 44U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng4)));
    xsi_vlog_generic_convert_bit_index(t4, t12, 2, t13, 32, 1);
    t19 = (t4 + 4);
    t7 = *((unsigned int *)t19);
    t28 = (!(t7));
    if (t28 == 1)
        goto LAB16;

LAB17:
LAB12:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB10:    xsi_set_current_line(29, ng0);
    t19 = ((char*)((ng1)));
    t20 = (t0 + 1012);
    xsi_vlogvar_assign_value(t20, t19, 0, 0, 4);
    goto LAB12;

LAB14:    t18 = *((unsigned int *)t23);
    t35 = (t18 + 0);
    t36 = *((unsigned int *)t21);
    t37 = *((unsigned int *)t22);
    t38 = (t36 - t37);
    t39 = (t38 + 1);
    xsi_vlogvar_assign_value(t13, t4, t35, *((unsigned int *)t22), t39);
    goto LAB15;

LAB16:    xsi_vlogvar_assign_value(t2, t3, 0, *((unsigned int *)t4), 1);
    goto LAB17;

}


extern void work_m_00000000002617139859_2574960257_init()
{
	static char *pe[] = {(void *)Always_27_0};
	xsi_register_didat("work_m_00000000002617139859_2574960257", "isim/test_isim_beh.exe.sim/work/m_00000000002617139859_2574960257.didat");
	xsi_register_executes(pe);
}
