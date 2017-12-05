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
static const char *ng0 = "C:/Xilinx/xilinx/7/decoder38/decoder38.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {1U, 0U};
static unsigned int ng3[] = {2U, 0U};
static unsigned int ng4[] = {4U, 0U};
static unsigned int ng5[] = {3U, 0U};
static unsigned int ng6[] = {8U, 0U};
static unsigned int ng7[] = {16U, 0U};
static unsigned int ng8[] = {5U, 0U};
static unsigned int ng9[] = {32U, 0U};
static unsigned int ng10[] = {6U, 0U};
static unsigned int ng11[] = {64U, 0U};
static unsigned int ng12[] = {128U, 0U};



static void Always_26_0(char *t0)
{
    char t4[8];
    char *t1;
    char *t2;
    char *t3;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    int t9;
    char *t10;
    char *t11;

LAB0:    t1 = (t0 + 1536U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1732);
    *((int *)t2) = 1;
    t3 = (t0 + 1564);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(27, ng0);

LAB5:    xsi_set_current_line(28, ng0);
    t5 = (t0 + 784U);
    t6 = *((char **)t5);
    t5 = (t0 + 692U);
    t7 = *((char **)t5);
    t5 = (t0 + 600U);
    t8 = *((char **)t5);
    xsi_vlogtype_concat(t4, 3, 3, 3U, t8, 1, t7, 1, t6, 1);

LAB6:    t5 = ((char*)((ng1)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t5, 3);
    if (t9 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng2)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng3)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB13;

LAB14:    t2 = ((char*)((ng4)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB15;

LAB16:    t2 = ((char*)((ng8)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB17;

LAB18:    t2 = ((char*)((ng10)));
    t9 = xsi_vlog_unsigned_case_compare(t4, 3, t2, 3);
    if (t9 == 1)
        goto LAB19;

LAB20:
LAB22:
LAB21:    xsi_set_current_line(36, ng0);
    t2 = ((char*)((ng12)));
    t3 = (t0 + 1012);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 8);

LAB23:    goto LAB2;

LAB7:    xsi_set_current_line(29, ng0);
    t10 = ((char*)((ng2)));
    t11 = (t0 + 1012);
    xsi_vlogvar_assign_value(t11, t10, 0, 0, 8);
    goto LAB23;

LAB9:    xsi_set_current_line(30, ng0);
    t3 = ((char*)((ng3)));
    t5 = (t0 + 1012);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB23;

LAB11:    xsi_set_current_line(31, ng0);
    t3 = ((char*)((ng4)));
    t5 = (t0 + 1012);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB23;

LAB13:    xsi_set_current_line(32, ng0);
    t3 = ((char*)((ng6)));
    t5 = (t0 + 1012);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB23;

LAB15:    xsi_set_current_line(33, ng0);
    t3 = ((char*)((ng7)));
    t5 = (t0 + 1012);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB23;

LAB17:    xsi_set_current_line(34, ng0);
    t3 = ((char*)((ng9)));
    t5 = (t0 + 1012);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB23;

LAB19:    xsi_set_current_line(35, ng0);
    t3 = ((char*)((ng11)));
    t5 = (t0 + 1012);
    xsi_vlogvar_assign_value(t5, t3, 0, 0, 8);
    goto LAB23;

}


extern void work_m_00000000001965439301_2643301623_init()
{
	static char *pe[] = {(void *)Always_26_0};
	xsi_register_didat("work_m_00000000001965439301_2643301623", "isim/test_isim_beh.exe.sim/work/m_00000000001965439301_2643301623.didat");
	xsi_register_executes(pe);
}
