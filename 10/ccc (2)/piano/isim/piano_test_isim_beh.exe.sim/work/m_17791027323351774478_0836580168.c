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
static const char *ng0 = "/data/home/gary/piano/piano.v";
static unsigned int ng1[] = {0U, 0U};
static int ng2[] = {0, 0};
static int ng3[] = {1910, 0};
static int ng4[] = {1, 0};
static int ng5[] = {1703, 0};
static int ng6[] = {1517, 0};
static int ng7[] = {1432, 0};
static int ng8[] = {1276, 0};
static int ng9[] = {1136, 0};
static int ng10[] = {1012, 0};
static int ng11[] = {956, 0};



static void Always_17_0(char *t0)
{
    char t4[8];
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
    char *t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    char *t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    char *t29;
    char *t30;

LAB0:    t1 = (t0 + 4120U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(17, ng0);
    t2 = (t0 + 4688);
    *((int *)t2) = 1;
    t3 = (t0 + 4152);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(18, ng0);

LAB5:    xsi_set_current_line(19, ng0);
    t5 = (t0 + 1048U);
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
    t14 = (t6 + 4);
    t15 = *((unsigned int *)t6);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB11;

LAB10:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t4 + 4);
    t24 = *((unsigned int *)t23);
    t25 = (~(t24));
    t26 = *((unsigned int *)t4);
    t27 = (t26 & t25);
    t28 = (t27 != 0);
    if (t28 > 0)
        goto LAB12;

LAB13:    xsi_set_current_line(25, ng0);

LAB16:    xsi_set_current_line(26, ng0);
    t2 = (t0 + 1368U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB17;

LAB18:    xsi_set_current_line(37, ng0);
    t2 = (t0 + 1528U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB31;

LAB32:    xsi_set_current_line(48, ng0);
    t2 = (t0 + 1688U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB45;

LAB46:    xsi_set_current_line(59, ng0);
    t2 = (t0 + 1848U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB59;

LAB60:    xsi_set_current_line(70, ng0);
    t2 = (t0 + 2008U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB73;

LAB74:    xsi_set_current_line(81, ng0);
    t2 = (t0 + 2168U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB87;

LAB88:    xsi_set_current_line(92, ng0);
    t2 = (t0 + 2328U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB101;

LAB102:    xsi_set_current_line(103, ng0);
    t2 = (t0 + 2488U);
    t3 = *((char **)t2);
    t2 = (t3 + 4);
    t7 = *((unsigned int *)t2);
    t8 = (~(t7));
    t9 = *((unsigned int *)t3);
    t10 = (t9 & t8);
    t11 = (t10 != 0);
    if (t11 > 0)
        goto LAB115;

LAB116:    xsi_set_current_line(115, ng0);

LAB129:    xsi_set_current_line(116, ng0);
    t2 = ((char*)((ng1)));
    t3 = (t0 + 3048);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 1);
    xsi_set_current_line(117, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);

LAB117:
LAB103:
LAB89:
LAB75:
LAB61:
LAB47:
LAB33:
LAB19:
LAB14:    goto LAB2;

LAB6:    *((unsigned int *)t4) = 1;
    goto LAB9;

LAB11:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB10;

LAB12:    xsi_set_current_line(20, ng0);

LAB15:    xsi_set_current_line(21, ng0);
    t29 = ((char*)((ng1)));
    t30 = (t0 + 3048);
    xsi_vlogvar_assign_value(t30, t29, 0, 0, 1);
    xsi_set_current_line(22, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 3208);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 32);
    goto LAB14;

LAB17:    xsi_set_current_line(27, ng0);

LAB20:    xsi_set_current_line(28, ng0);
    t5 = (t0 + 3208);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng3)));
    memset(t4, 0, 8);
    xsi_vlog_signed_greatereq(t4, 32, t12, 32, t13, 32);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB21;

LAB22:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 3208);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);

LAB23:    goto LAB19;

LAB21:    xsi_set_current_line(29, ng0);

LAB24:    xsi_set_current_line(30, ng0);
    t23 = ((char*)((ng2)));
    t29 = (t0 + 3208);
    xsi_vlogvar_assign_value(t29, t23, 0, 0, 32);
    xsi_set_current_line(31, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB28;

LAB26:    if (*((unsigned int *)t6) == 0)
        goto LAB25;

LAB27:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB28:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB30;

LAB29:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 3048);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    goto LAB23;

LAB25:    *((unsigned int *)t4) = 1;
    goto LAB28;

LAB30:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB29;

LAB31:    xsi_set_current_line(38, ng0);

LAB34:    xsi_set_current_line(39, ng0);
    t5 = (t0 + 3208);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng5)));
    memset(t4, 0, 8);
    xsi_vlog_signed_greatereq(t4, 32, t12, 32, t13, 32);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB35;

LAB36:    xsi_set_current_line(45, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 3208);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);

LAB37:    goto LAB33;

LAB35:    xsi_set_current_line(40, ng0);

LAB38:    xsi_set_current_line(41, ng0);
    t23 = ((char*)((ng2)));
    t29 = (t0 + 3208);
    xsi_vlogvar_assign_value(t29, t23, 0, 0, 32);
    xsi_set_current_line(42, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB42;

LAB40:    if (*((unsigned int *)t6) == 0)
        goto LAB39;

LAB41:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB42:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB44;

LAB43:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 3048);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    goto LAB37;

LAB39:    *((unsigned int *)t4) = 1;
    goto LAB42;

LAB44:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB43;

LAB45:    xsi_set_current_line(49, ng0);

LAB48:    xsi_set_current_line(50, ng0);
    t5 = (t0 + 3208);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng6)));
    memset(t4, 0, 8);
    xsi_vlog_signed_greatereq(t4, 32, t12, 32, t13, 32);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB49;

LAB50:    xsi_set_current_line(56, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 3208);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);

LAB51:    goto LAB47;

LAB49:    xsi_set_current_line(51, ng0);

LAB52:    xsi_set_current_line(52, ng0);
    t23 = ((char*)((ng2)));
    t29 = (t0 + 3208);
    xsi_vlogvar_assign_value(t29, t23, 0, 0, 32);
    xsi_set_current_line(53, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB56;

LAB54:    if (*((unsigned int *)t6) == 0)
        goto LAB53;

LAB55:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB56:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB58;

LAB57:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 3048);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    goto LAB51;

LAB53:    *((unsigned int *)t4) = 1;
    goto LAB56;

LAB58:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB57;

LAB59:    xsi_set_current_line(60, ng0);

LAB62:    xsi_set_current_line(61, ng0);
    t5 = (t0 + 3208);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng7)));
    memset(t4, 0, 8);
    xsi_vlog_signed_greatereq(t4, 32, t12, 32, t13, 32);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB63;

LAB64:    xsi_set_current_line(67, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 3208);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);

LAB65:    goto LAB61;

LAB63:    xsi_set_current_line(62, ng0);

LAB66:    xsi_set_current_line(63, ng0);
    t23 = ((char*)((ng2)));
    t29 = (t0 + 3208);
    xsi_vlogvar_assign_value(t29, t23, 0, 0, 32);
    xsi_set_current_line(64, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB70;

LAB68:    if (*((unsigned int *)t6) == 0)
        goto LAB67;

LAB69:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB70:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB72;

LAB71:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 3048);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    goto LAB65;

LAB67:    *((unsigned int *)t4) = 1;
    goto LAB70;

LAB72:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB71;

LAB73:    xsi_set_current_line(71, ng0);

LAB76:    xsi_set_current_line(72, ng0);
    t5 = (t0 + 3208);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng8)));
    memset(t4, 0, 8);
    xsi_vlog_signed_greatereq(t4, 32, t12, 32, t13, 32);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB77;

LAB78:    xsi_set_current_line(78, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 3208);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);

LAB79:    goto LAB75;

LAB77:    xsi_set_current_line(73, ng0);

LAB80:    xsi_set_current_line(74, ng0);
    t23 = ((char*)((ng2)));
    t29 = (t0 + 3208);
    xsi_vlogvar_assign_value(t29, t23, 0, 0, 32);
    xsi_set_current_line(75, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB84;

LAB82:    if (*((unsigned int *)t6) == 0)
        goto LAB81;

LAB83:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB84:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB86;

LAB85:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 3048);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    goto LAB79;

LAB81:    *((unsigned int *)t4) = 1;
    goto LAB84;

LAB86:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB85;

LAB87:    xsi_set_current_line(82, ng0);

LAB90:    xsi_set_current_line(83, ng0);
    t5 = (t0 + 3208);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng9)));
    memset(t4, 0, 8);
    xsi_vlog_signed_greatereq(t4, 32, t12, 32, t13, 32);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB91;

LAB92:    xsi_set_current_line(89, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 3208);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);

LAB93:    goto LAB89;

LAB91:    xsi_set_current_line(84, ng0);

LAB94:    xsi_set_current_line(85, ng0);
    t23 = ((char*)((ng2)));
    t29 = (t0 + 3208);
    xsi_vlogvar_assign_value(t29, t23, 0, 0, 32);
    xsi_set_current_line(86, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB98;

LAB96:    if (*((unsigned int *)t6) == 0)
        goto LAB95;

LAB97:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB98:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB100;

LAB99:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 3048);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    goto LAB93;

LAB95:    *((unsigned int *)t4) = 1;
    goto LAB98;

LAB100:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB99;

LAB101:    xsi_set_current_line(93, ng0);

LAB104:    xsi_set_current_line(94, ng0);
    t5 = (t0 + 3208);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng10)));
    memset(t4, 0, 8);
    xsi_vlog_signed_greatereq(t4, 32, t12, 32, t13, 32);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB105;

LAB106:    xsi_set_current_line(100, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 3208);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);

LAB107:    goto LAB103;

LAB105:    xsi_set_current_line(95, ng0);

LAB108:    xsi_set_current_line(96, ng0);
    t23 = ((char*)((ng2)));
    t29 = (t0 + 3208);
    xsi_vlogvar_assign_value(t29, t23, 0, 0, 32);
    xsi_set_current_line(97, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB112;

LAB110:    if (*((unsigned int *)t6) == 0)
        goto LAB109;

LAB111:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB112:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB114;

LAB113:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 3048);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    goto LAB107;

LAB109:    *((unsigned int *)t4) = 1;
    goto LAB112;

LAB114:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB113;

LAB115:    xsi_set_current_line(104, ng0);

LAB118:    xsi_set_current_line(105, ng0);
    t5 = (t0 + 3208);
    t6 = (t5 + 56U);
    t12 = *((char **)t6);
    t13 = ((char*)((ng11)));
    memset(t4, 0, 8);
    xsi_vlog_signed_greatereq(t4, 32, t12, 32, t13, 32);
    t14 = (t4 + 4);
    t15 = *((unsigned int *)t14);
    t16 = (~(t15));
    t17 = *((unsigned int *)t4);
    t18 = (t17 & t16);
    t19 = (t18 != 0);
    if (t19 > 0)
        goto LAB119;

LAB120:    xsi_set_current_line(111, ng0);
    t2 = (t0 + 3208);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    t6 = ((char*)((ng4)));
    memset(t4, 0, 8);
    xsi_vlog_signed_add(t4, 32, t5, 32, t6, 32);
    t12 = (t0 + 3208);
    xsi_vlogvar_assign_value(t12, t4, 0, 0, 32);

LAB121:    goto LAB117;

LAB119:    xsi_set_current_line(106, ng0);

LAB122:    xsi_set_current_line(107, ng0);
    t23 = ((char*)((ng2)));
    t29 = (t0 + 3208);
    xsi_vlogvar_assign_value(t29, t23, 0, 0, 32);
    xsi_set_current_line(108, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t5 = *((char **)t3);
    memset(t4, 0, 8);
    t6 = (t5 + 4);
    t7 = *((unsigned int *)t6);
    t8 = (~(t7));
    t9 = *((unsigned int *)t5);
    t10 = (t9 & t8);
    t11 = (t10 & 1U);
    if (t11 != 0)
        goto LAB126;

LAB124:    if (*((unsigned int *)t6) == 0)
        goto LAB123;

LAB125:    t12 = (t4 + 4);
    *((unsigned int *)t4) = 1;
    *((unsigned int *)t12) = 1;

LAB126:    t13 = (t4 + 4);
    t14 = (t5 + 4);
    t15 = *((unsigned int *)t5);
    t16 = (~(t15));
    *((unsigned int *)t4) = t16;
    *((unsigned int *)t13) = 0;
    if (*((unsigned int *)t14) != 0)
        goto LAB128;

LAB127:    t21 = *((unsigned int *)t4);
    *((unsigned int *)t4) = (t21 & 1U);
    t22 = *((unsigned int *)t13);
    *((unsigned int *)t13) = (t22 & 1U);
    t23 = (t0 + 3048);
    xsi_vlogvar_assign_value(t23, t4, 0, 0, 1);
    goto LAB121;

LAB123:    *((unsigned int *)t4) = 1;
    goto LAB126;

LAB128:    t17 = *((unsigned int *)t4);
    t18 = *((unsigned int *)t14);
    *((unsigned int *)t4) = (t17 | t18);
    t19 = *((unsigned int *)t13);
    t20 = *((unsigned int *)t14);
    *((unsigned int *)t13) = (t19 | t20);
    goto LAB127;

}

static void Cont_122_1(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    unsigned int t16;
    unsigned int t17;
    char *t18;

LAB0:    t1 = (t0 + 4368U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(122, ng0);
    t2 = (t0 + 3048);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 4784);
    t6 = (t5 + 56U);
    t7 = *((char **)t6);
    t8 = (t7 + 56U);
    t9 = *((char **)t8);
    memset(t9, 0, 8);
    t10 = 1U;
    t11 = t10;
    t12 = (t4 + 4);
    t13 = *((unsigned int *)t4);
    t10 = (t10 & t13);
    t14 = *((unsigned int *)t12);
    t11 = (t11 & t14);
    t15 = (t9 + 4);
    t16 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t16 | t10);
    t17 = *((unsigned int *)t15);
    *((unsigned int *)t15) = (t17 | t11);
    xsi_driver_vfirst_trans(t5, 0, 0);
    t18 = (t0 + 4704);
    *((int *)t18) = 1;

LAB1:    return;
}


extern void work_m_17791027323351774478_0836580168_init()
{
	static char *pe[] = {(void *)Always_17_0,(void *)Cont_122_1};
	xsi_register_didat("work_m_17791027323351774478_0836580168", "isim/piano_test_isim_beh.exe.sim/work/m_17791027323351774478_0836580168.didat");
	xsi_register_executes(pe);
}
