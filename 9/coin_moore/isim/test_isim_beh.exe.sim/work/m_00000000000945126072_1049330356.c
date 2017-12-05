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

/* This file is designed for use with ISim build 0xa0883be4 */

#define XSI_HIDE_SYMBOL_SPEC true
#include "xsi.h"
#include <memory.h>
#ifdef __GNUC__
#include <stdlib.h>
#else
#include <malloc.h>
#define alloca _alloca
#endif
static const char *ng0 = "D:/xilinx/9/coin_moore/vending_machine.v";
static unsigned int ng1[] = {0U, 0U};
static unsigned int ng2[] = {8U, 0U};
static unsigned int ng3[] = {4U, 0U};
static unsigned int ng4[] = {2U, 0U};
static unsigned int ng5[] = {1U, 0U};



static void Initial_16_0(char *t0)
{
    char *t1;
    char *t2;

LAB0:    xsi_set_current_line(16, ng0);

LAB2:    xsi_set_current_line(17, ng0);
    t1 = ((char*)((ng1)));
    t2 = (t0 + 2792);
    xsi_vlogvar_assign_value(t2, t1, 0, 0, 4);

LAB1:    return;
}

static void Always_25_1(char *t0)
{
    char t7[8];
    char t36[8];
    char t65[8];
    char t94[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    unsigned int t8;
    unsigned int t9;
    unsigned int t10;
    char *t11;
    char *t12;
    unsigned int t13;
    unsigned int t14;
    unsigned int t15;
    unsigned int t16;
    unsigned int t17;
    unsigned int t18;
    unsigned int t19;
    char *t20;
    char *t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    int t25;
    unsigned int t26;
    unsigned int t27;
    unsigned int t28;
    int t29;
    unsigned int t30;
    unsigned int t31;
    unsigned int t32;
    unsigned int t33;
    char *t34;
    char *t35;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    char *t49;
    char *t50;
    unsigned int t51;
    unsigned int t52;
    unsigned int t53;
    int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    int t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    char *t63;
    char *t64;
    unsigned int t66;
    unsigned int t67;
    unsigned int t68;
    char *t69;
    char *t70;
    unsigned int t71;
    unsigned int t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    char *t78;
    char *t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    int t83;
    unsigned int t84;
    unsigned int t85;
    unsigned int t86;
    int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    char *t93;
    unsigned int t95;
    unsigned int t96;
    unsigned int t97;
    char *t98;
    char *t99;
    unsigned int t100;
    unsigned int t101;
    unsigned int t102;
    unsigned int t103;
    unsigned int t104;
    unsigned int t105;
    unsigned int t106;
    char *t107;
    char *t108;
    unsigned int t109;
    unsigned int t110;
    unsigned int t111;
    int t112;
    unsigned int t113;
    unsigned int t114;
    unsigned int t115;
    int t116;
    unsigned int t117;
    unsigned int t118;
    unsigned int t119;
    unsigned int t120;
    char *t121;

LAB0:    t1 = (t0 + 4280U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(25, ng0);
    t2 = (t0 + 5096);
    *((int *)t2) = 1;
    t3 = (t0 + 4312);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(26, ng0);

LAB5:    xsi_set_current_line(27, ng0);
    t4 = (t0 + 1592U);
    t5 = *((char **)t4);
    t4 = (t0 + 1752U);
    t6 = *((char **)t4);
    t8 = *((unsigned int *)t5);
    t9 = *((unsigned int *)t6);
    t10 = (t8 | t9);
    *((unsigned int *)t7) = t10;
    t4 = (t5 + 4);
    t11 = (t6 + 4);
    t12 = (t7 + 4);
    t13 = *((unsigned int *)t4);
    t14 = *((unsigned int *)t11);
    t15 = (t13 | t14);
    *((unsigned int *)t12) = t15;
    t16 = *((unsigned int *)t12);
    t17 = (t16 != 0);
    if (t17 == 1)
        goto LAB6;

LAB7:
LAB8:    t34 = (t0 + 1912U);
    t35 = *((char **)t34);
    t37 = *((unsigned int *)t7);
    t38 = *((unsigned int *)t35);
    t39 = (t37 | t38);
    *((unsigned int *)t36) = t39;
    t34 = (t7 + 4);
    t40 = (t35 + 4);
    t41 = (t36 + 4);
    t42 = *((unsigned int *)t34);
    t43 = *((unsigned int *)t40);
    t44 = (t42 | t43);
    *((unsigned int *)t41) = t44;
    t45 = *((unsigned int *)t41);
    t46 = (t45 != 0);
    if (t46 == 1)
        goto LAB9;

LAB10:
LAB11:    t63 = (t0 + 2232U);
    t64 = *((char **)t63);
    t66 = *((unsigned int *)t36);
    t67 = *((unsigned int *)t64);
    t68 = (t66 | t67);
    *((unsigned int *)t65) = t68;
    t63 = (t36 + 4);
    t69 = (t64 + 4);
    t70 = (t65 + 4);
    t71 = *((unsigned int *)t63);
    t72 = *((unsigned int *)t69);
    t73 = (t71 | t72);
    *((unsigned int *)t70) = t73;
    t74 = *((unsigned int *)t70);
    t75 = (t74 != 0);
    if (t75 == 1)
        goto LAB12;

LAB13:
LAB14:    t92 = (t0 + 2392U);
    t93 = *((char **)t92);
    t95 = *((unsigned int *)t65);
    t96 = *((unsigned int *)t93);
    t97 = (t95 | t96);
    *((unsigned int *)t94) = t97;
    t92 = (t65 + 4);
    t98 = (t93 + 4);
    t99 = (t94 + 4);
    t100 = *((unsigned int *)t92);
    t101 = *((unsigned int *)t98);
    t102 = (t100 | t101);
    *((unsigned int *)t99) = t102;
    t103 = *((unsigned int *)t99);
    t104 = (t103 != 0);
    if (t104 == 1)
        goto LAB15;

LAB16:
LAB17:    t121 = (t0 + 3112);
    xsi_vlogvar_assign_value(t121, t94, 0, 0, 1);
    goto LAB2;

LAB6:    t18 = *((unsigned int *)t7);
    t19 = *((unsigned int *)t12);
    *((unsigned int *)t7) = (t18 | t19);
    t20 = (t5 + 4);
    t21 = (t6 + 4);
    t22 = *((unsigned int *)t20);
    t23 = (~(t22));
    t24 = *((unsigned int *)t5);
    t25 = (t24 & t23);
    t26 = *((unsigned int *)t21);
    t27 = (~(t26));
    t28 = *((unsigned int *)t6);
    t29 = (t28 & t27);
    t30 = (~(t25));
    t31 = (~(t29));
    t32 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t32 & t30);
    t33 = *((unsigned int *)t12);
    *((unsigned int *)t12) = (t33 & t31);
    goto LAB8;

LAB9:    t47 = *((unsigned int *)t36);
    t48 = *((unsigned int *)t41);
    *((unsigned int *)t36) = (t47 | t48);
    t49 = (t7 + 4);
    t50 = (t35 + 4);
    t51 = *((unsigned int *)t49);
    t52 = (~(t51));
    t53 = *((unsigned int *)t7);
    t54 = (t53 & t52);
    t55 = *((unsigned int *)t50);
    t56 = (~(t55));
    t57 = *((unsigned int *)t35);
    t58 = (t57 & t56);
    t59 = (~(t54));
    t60 = (~(t58));
    t61 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t61 & t59);
    t62 = *((unsigned int *)t41);
    *((unsigned int *)t41) = (t62 & t60);
    goto LAB11;

LAB12:    t76 = *((unsigned int *)t65);
    t77 = *((unsigned int *)t70);
    *((unsigned int *)t65) = (t76 | t77);
    t78 = (t36 + 4);
    t79 = (t64 + 4);
    t80 = *((unsigned int *)t78);
    t81 = (~(t80));
    t82 = *((unsigned int *)t36);
    t83 = (t82 & t81);
    t84 = *((unsigned int *)t79);
    t85 = (~(t84));
    t86 = *((unsigned int *)t64);
    t87 = (t86 & t85);
    t88 = (~(t83));
    t89 = (~(t87));
    t90 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t90 & t88);
    t91 = *((unsigned int *)t70);
    *((unsigned int *)t70) = (t91 & t89);
    goto LAB14;

LAB15:    t105 = *((unsigned int *)t94);
    t106 = *((unsigned int *)t99);
    *((unsigned int *)t94) = (t105 | t106);
    t107 = (t65 + 4);
    t108 = (t93 + 4);
    t109 = *((unsigned int *)t107);
    t110 = (~(t109));
    t111 = *((unsigned int *)t65);
    t112 = (t111 & t110);
    t113 = *((unsigned int *)t108);
    t114 = (~(t113));
    t115 = *((unsigned int *)t93);
    t116 = (t115 & t114);
    t117 = (~(t112));
    t118 = (~(t116));
    t119 = *((unsigned int *)t99);
    *((unsigned int *)t99) = (t119 & t117);
    t120 = *((unsigned int *)t99);
    *((unsigned int *)t99) = (t120 & t118);
    goto LAB17;

}

static void Always_30_2(char *t0)
{
    char t6[8];
    char t26[8];
    char t71[8];
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t7;
    char *t8;
    char *t9;
    unsigned int t10;
    unsigned int t11;
    unsigned int t12;
    unsigned int t13;
    unsigned int t14;
    char *t15;
    char *t16;
    char *t17;
    unsigned int t18;
    unsigned int t19;
    unsigned int t20;
    unsigned int t21;
    unsigned int t22;
    unsigned int t23;
    unsigned int t24;
    unsigned int t25;
    unsigned int t27;
    unsigned int t28;
    unsigned int t29;
    char *t30;
    char *t31;
    char *t32;
    unsigned int t33;
    unsigned int t34;
    unsigned int t35;
    unsigned int t36;
    unsigned int t37;
    unsigned int t38;
    unsigned int t39;
    char *t40;
    char *t41;
    unsigned int t42;
    unsigned int t43;
    unsigned int t44;
    unsigned int t45;
    unsigned int t46;
    unsigned int t47;
    unsigned int t48;
    unsigned int t49;
    int t50;
    int t51;
    unsigned int t52;
    unsigned int t53;
    unsigned int t54;
    unsigned int t55;
    unsigned int t56;
    unsigned int t57;
    char *t58;
    unsigned int t59;
    unsigned int t60;
    unsigned int t61;
    unsigned int t62;
    unsigned int t63;
    char *t64;
    char *t65;
    int t66;
    char *t67;
    char *t68;
    char *t69;
    char *t70;
    char *t72;
    unsigned int t73;
    unsigned int t74;
    unsigned int t75;
    unsigned int t76;
    unsigned int t77;
    unsigned int t78;
    unsigned int t79;
    unsigned int t80;
    unsigned int t81;
    unsigned int t82;
    unsigned int t83;
    unsigned int t84;
    char *t85;
    char *t86;
    unsigned int t87;
    unsigned int t88;
    unsigned int t89;
    unsigned int t90;
    unsigned int t91;
    char *t92;
    char *t93;

LAB0:    t1 = (t0 + 4528U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(30, ng0);
    t2 = (t0 + 5112);
    *((int *)t2) = 1;
    t3 = (t0 + 4560);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(31, ng0);

LAB5:    xsi_set_current_line(32, ng0);
    t4 = (t0 + 1912U);
    t5 = *((char **)t4);
    t4 = (t0 + 3112);
    t7 = (t4 + 56U);
    t8 = *((char **)t7);
    memset(t6, 0, 8);
    t9 = (t8 + 4);
    t10 = *((unsigned int *)t9);
    t11 = (~(t10));
    t12 = *((unsigned int *)t8);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB9;

LAB7:    if (*((unsigned int *)t9) == 0)
        goto LAB6;

LAB8:    t15 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t15) = 1;

LAB9:    t16 = (t6 + 4);
    t17 = (t8 + 4);
    t18 = *((unsigned int *)t8);
    t19 = (~(t18));
    *((unsigned int *)t6) = t19;
    *((unsigned int *)t16) = 0;
    if (*((unsigned int *)t17) != 0)
        goto LAB11;

LAB10:    t24 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t24 & 1U);
    t25 = *((unsigned int *)t16);
    *((unsigned int *)t16) = (t25 & 1U);
    t27 = *((unsigned int *)t5);
    t28 = *((unsigned int *)t6);
    t29 = (t27 & t28);
    *((unsigned int *)t26) = t29;
    t30 = (t5 + 4);
    t31 = (t6 + 4);
    t32 = (t26 + 4);
    t33 = *((unsigned int *)t30);
    t34 = *((unsigned int *)t31);
    t35 = (t33 | t34);
    *((unsigned int *)t32) = t35;
    t36 = *((unsigned int *)t32);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB12;

LAB13:
LAB14:    t58 = (t26 + 4);
    t59 = *((unsigned int *)t58);
    t60 = (~(t59));
    t61 = *((unsigned int *)t26);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB15;

LAB16:    xsi_set_current_line(34, ng0);
    t2 = (t0 + 1592U);
    t3 = *((char **)t2);
    t2 = (t0 + 3112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB21;

LAB19:    if (*((unsigned int *)t7) == 0)
        goto LAB18;

LAB20:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;

LAB21:    t9 = (t6 + 4);
    t15 = (t5 + 4);
    t18 = *((unsigned int *)t5);
    t19 = (~(t18));
    *((unsigned int *)t6) = t19;
    *((unsigned int *)t9) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB23;

LAB22:    t24 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t24 & 1U);
    t25 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t25 & 1U);
    t27 = *((unsigned int *)t3);
    t28 = *((unsigned int *)t6);
    t29 = (t27 & t28);
    *((unsigned int *)t26) = t29;
    t16 = (t3 + 4);
    t17 = (t6 + 4);
    t30 = (t26 + 4);
    t33 = *((unsigned int *)t16);
    t34 = *((unsigned int *)t17);
    t35 = (t33 | t34);
    *((unsigned int *)t30) = t35;
    t36 = *((unsigned int *)t30);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB24;

LAB25:
LAB26:    t40 = (t26 + 4);
    t59 = *((unsigned int *)t40);
    t60 = (~(t59));
    t61 = *((unsigned int *)t26);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB27;

LAB28:    xsi_set_current_line(42, ng0);
    t2 = (t0 + 1752U);
    t3 = *((char **)t2);
    t2 = (t0 + 3112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB45;

LAB43:    if (*((unsigned int *)t7) == 0)
        goto LAB42;

LAB44:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;

LAB45:    t9 = (t6 + 4);
    t15 = (t5 + 4);
    t18 = *((unsigned int *)t5);
    t19 = (~(t18));
    *((unsigned int *)t6) = t19;
    *((unsigned int *)t9) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB47;

LAB46:    t24 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t24 & 1U);
    t25 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t25 & 1U);
    t27 = *((unsigned int *)t3);
    t28 = *((unsigned int *)t6);
    t29 = (t27 & t28);
    *((unsigned int *)t26) = t29;
    t16 = (t3 + 4);
    t17 = (t6 + 4);
    t30 = (t26 + 4);
    t33 = *((unsigned int *)t16);
    t34 = *((unsigned int *)t17);
    t35 = (t33 | t34);
    *((unsigned int *)t30) = t35;
    t36 = *((unsigned int *)t30);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB48;

LAB49:
LAB50:    t40 = (t26 + 4);
    t59 = *((unsigned int *)t40);
    t60 = (~(t59));
    t61 = *((unsigned int *)t26);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB51;

LAB52:    xsi_set_current_line(50, ng0);
    t2 = (t0 + 2232U);
    t3 = *((char **)t2);
    t2 = (t0 + 3112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB69;

LAB67:    if (*((unsigned int *)t7) == 0)
        goto LAB66;

LAB68:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;

LAB69:    t9 = (t6 + 4);
    t15 = (t5 + 4);
    t18 = *((unsigned int *)t5);
    t19 = (~(t18));
    *((unsigned int *)t6) = t19;
    *((unsigned int *)t9) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB71;

LAB70:    t24 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t24 & 1U);
    t25 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t25 & 1U);
    t27 = *((unsigned int *)t3);
    t28 = *((unsigned int *)t6);
    t29 = (t27 & t28);
    *((unsigned int *)t26) = t29;
    t16 = (t3 + 4);
    t17 = (t6 + 4);
    t30 = (t26 + 4);
    t33 = *((unsigned int *)t16);
    t34 = *((unsigned int *)t17);
    t35 = (t33 | t34);
    *((unsigned int *)t30) = t35;
    t36 = *((unsigned int *)t30);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB72;

LAB73:
LAB74:    t40 = (t26 + 4);
    t59 = *((unsigned int *)t40);
    t60 = (~(t59));
    t61 = *((unsigned int *)t26);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB75;

LAB76:    xsi_set_current_line(58, ng0);
    t2 = (t0 + 2392U);
    t3 = *((char **)t2);
    t2 = (t0 + 3112);
    t4 = (t2 + 56U);
    t5 = *((char **)t4);
    memset(t6, 0, 8);
    t7 = (t5 + 4);
    t10 = *((unsigned int *)t7);
    t11 = (~(t10));
    t12 = *((unsigned int *)t5);
    t13 = (t12 & t11);
    t14 = (t13 & 1U);
    if (t14 != 0)
        goto LAB93;

LAB91:    if (*((unsigned int *)t7) == 0)
        goto LAB90;

LAB92:    t8 = (t6 + 4);
    *((unsigned int *)t6) = 1;
    *((unsigned int *)t8) = 1;

LAB93:    t9 = (t6 + 4);
    t15 = (t5 + 4);
    t18 = *((unsigned int *)t5);
    t19 = (~(t18));
    *((unsigned int *)t6) = t19;
    *((unsigned int *)t9) = 0;
    if (*((unsigned int *)t15) != 0)
        goto LAB95;

LAB94:    t24 = *((unsigned int *)t6);
    *((unsigned int *)t6) = (t24 & 1U);
    t25 = *((unsigned int *)t9);
    *((unsigned int *)t9) = (t25 & 1U);
    t27 = *((unsigned int *)t3);
    t28 = *((unsigned int *)t6);
    t29 = (t27 & t28);
    *((unsigned int *)t26) = t29;
    t16 = (t3 + 4);
    t17 = (t6 + 4);
    t30 = (t26 + 4);
    t33 = *((unsigned int *)t16);
    t34 = *((unsigned int *)t17);
    t35 = (t33 | t34);
    *((unsigned int *)t30) = t35;
    t36 = *((unsigned int *)t30);
    t37 = (t36 != 0);
    if (t37 == 1)
        goto LAB96;

LAB97:
LAB98:    t40 = (t26 + 4);
    t59 = *((unsigned int *)t40);
    t60 = (~(t59));
    t61 = *((unsigned int *)t26);
    t62 = (t61 & t60);
    t63 = (t62 != 0);
    if (t63 > 0)
        goto LAB99;

LAB100:    xsi_set_current_line(63, ng0);
    t2 = (t0 + 2952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2952);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);

LAB101:
LAB77:
LAB53:
LAB29:
LAB17:    goto LAB2;

LAB6:    *((unsigned int *)t6) = 1;
    goto LAB9;

LAB11:    t20 = *((unsigned int *)t6);
    t21 = *((unsigned int *)t17);
    *((unsigned int *)t6) = (t20 | t21);
    t22 = *((unsigned int *)t16);
    t23 = *((unsigned int *)t17);
    *((unsigned int *)t16) = (t22 | t23);
    goto LAB10;

LAB12:    t38 = *((unsigned int *)t26);
    t39 = *((unsigned int *)t32);
    *((unsigned int *)t26) = (t38 | t39);
    t40 = (t5 + 4);
    t41 = (t6 + 4);
    t42 = *((unsigned int *)t5);
    t43 = (~(t42));
    t44 = *((unsigned int *)t40);
    t45 = (~(t44));
    t46 = *((unsigned int *)t6);
    t47 = (~(t46));
    t48 = *((unsigned int *)t41);
    t49 = (~(t48));
    t50 = (t43 & t45);
    t51 = (t47 & t49);
    t52 = (~(t50));
    t53 = (~(t51));
    t54 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t54 & t52);
    t55 = *((unsigned int *)t32);
    *((unsigned int *)t32) = (t55 & t53);
    t56 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t56 & t52);
    t57 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t57 & t53);
    goto LAB14;

LAB15:    xsi_set_current_line(33, ng0);
    t64 = ((char*)((ng2)));
    t65 = (t0 + 2952);
    xsi_vlogvar_assign_value(t65, t64, 0, 0, 4);
    goto LAB17;

LAB18:    *((unsigned int *)t6) = 1;
    goto LAB21;

LAB23:    t20 = *((unsigned int *)t6);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t6) = (t20 | t21);
    t22 = *((unsigned int *)t9);
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t9) = (t22 | t23);
    goto LAB22;

LAB24:    t38 = *((unsigned int *)t26);
    t39 = *((unsigned int *)t30);
    *((unsigned int *)t26) = (t38 | t39);
    t31 = (t3 + 4);
    t32 = (t6 + 4);
    t42 = *((unsigned int *)t3);
    t43 = (~(t42));
    t44 = *((unsigned int *)t31);
    t45 = (~(t44));
    t46 = *((unsigned int *)t6);
    t47 = (~(t46));
    t48 = *((unsigned int *)t32);
    t49 = (~(t48));
    t50 = (t43 & t45);
    t51 = (t47 & t49);
    t52 = (~(t50));
    t53 = (~(t51));
    t54 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t54 & t52);
    t55 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t55 & t53);
    t56 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t56 & t52);
    t57 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t57 & t53);
    goto LAB26;

LAB27:    xsi_set_current_line(35, ng0);
    t41 = (t0 + 2952);
    t58 = (t41 + 56U);
    t64 = *((char **)t58);

LAB30:    t65 = ((char*)((ng2)));
    t66 = xsi_vlog_unsigned_case_compare(t64, 4, t65, 4);
    if (t66 == 1)
        goto LAB31;

LAB32:    t2 = ((char*)((ng3)));
    t50 = xsi_vlog_unsigned_case_compare(t64, 4, t2, 4);
    if (t50 == 1)
        goto LAB33;

LAB34:    t2 = ((char*)((ng4)));
    t50 = xsi_vlog_unsigned_case_compare(t64, 4, t2, 4);
    if (t50 == 1)
        goto LAB35;

LAB36:    t2 = ((char*)((ng5)));
    t50 = xsi_vlog_unsigned_case_compare(t64, 4, t2, 4);
    if (t50 == 1)
        goto LAB37;

LAB38:
LAB40:
LAB39:    xsi_set_current_line(40, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2952);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB41:    goto LAB29;

LAB31:    xsi_set_current_line(36, ng0);
    t67 = ((char*)((ng3)));
    t68 = (t0 + 2952);
    xsi_vlogvar_assign_value(t68, t67, 0, 0, 4);
    goto LAB41;

LAB33:    xsi_set_current_line(37, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2952);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB35:    xsi_set_current_line(38, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 2952);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB37:    xsi_set_current_line(39, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 2952);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB41;

LAB42:    *((unsigned int *)t6) = 1;
    goto LAB45;

LAB47:    t20 = *((unsigned int *)t6);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t6) = (t20 | t21);
    t22 = *((unsigned int *)t9);
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t9) = (t22 | t23);
    goto LAB46;

LAB48:    t38 = *((unsigned int *)t26);
    t39 = *((unsigned int *)t30);
    *((unsigned int *)t26) = (t38 | t39);
    t31 = (t3 + 4);
    t32 = (t6 + 4);
    t42 = *((unsigned int *)t3);
    t43 = (~(t42));
    t44 = *((unsigned int *)t31);
    t45 = (~(t44));
    t46 = *((unsigned int *)t6);
    t47 = (~(t46));
    t48 = *((unsigned int *)t32);
    t49 = (~(t48));
    t50 = (t43 & t45);
    t51 = (t47 & t49);
    t52 = (~(t50));
    t53 = (~(t51));
    t54 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t54 & t52);
    t55 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t55 & t53);
    t56 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t56 & t52);
    t57 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t57 & t53);
    goto LAB50;

LAB51:    xsi_set_current_line(43, ng0);
    t41 = (t0 + 2952);
    t58 = (t41 + 56U);
    t65 = *((char **)t58);

LAB54:    t67 = ((char*)((ng2)));
    t66 = xsi_vlog_unsigned_case_compare(t65, 4, t67, 4);
    if (t66 == 1)
        goto LAB55;

LAB56:    t2 = ((char*)((ng3)));
    t50 = xsi_vlog_unsigned_case_compare(t65, 4, t2, 4);
    if (t50 == 1)
        goto LAB57;

LAB58:    t2 = ((char*)((ng4)));
    t50 = xsi_vlog_unsigned_case_compare(t65, 4, t2, 4);
    if (t50 == 1)
        goto LAB59;

LAB60:    t2 = ((char*)((ng5)));
    t50 = xsi_vlog_unsigned_case_compare(t65, 4, t2, 4);
    if (t50 == 1)
        goto LAB61;

LAB62:
LAB64:
LAB63:    xsi_set_current_line(48, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2952);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB65:    goto LAB53;

LAB55:    xsi_set_current_line(44, ng0);
    t68 = ((char*)((ng4)));
    t69 = (t0 + 2952);
    xsi_vlogvar_assign_value(t69, t68, 0, 0, 4);
    goto LAB65;

LAB57:    xsi_set_current_line(45, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 2952);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB65;

LAB59:    xsi_set_current_line(46, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 2952);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB65;

LAB61:    xsi_set_current_line(47, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 2952);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB65;

LAB66:    *((unsigned int *)t6) = 1;
    goto LAB69;

LAB71:    t20 = *((unsigned int *)t6);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t6) = (t20 | t21);
    t22 = *((unsigned int *)t9);
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t9) = (t22 | t23);
    goto LAB70;

LAB72:    t38 = *((unsigned int *)t26);
    t39 = *((unsigned int *)t30);
    *((unsigned int *)t26) = (t38 | t39);
    t31 = (t3 + 4);
    t32 = (t6 + 4);
    t42 = *((unsigned int *)t3);
    t43 = (~(t42));
    t44 = *((unsigned int *)t31);
    t45 = (~(t44));
    t46 = *((unsigned int *)t6);
    t47 = (~(t46));
    t48 = *((unsigned int *)t32);
    t49 = (~(t48));
    t50 = (t43 & t45);
    t51 = (t47 & t49);
    t52 = (~(t50));
    t53 = (~(t51));
    t54 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t54 & t52);
    t55 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t55 & t53);
    t56 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t56 & t52);
    t57 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t57 & t53);
    goto LAB74;

LAB75:    xsi_set_current_line(51, ng0);
    t41 = (t0 + 2952);
    t58 = (t41 + 56U);
    t67 = *((char **)t58);

LAB78:    t68 = ((char*)((ng2)));
    t66 = xsi_vlog_unsigned_case_compare(t67, 4, t68, 4);
    if (t66 == 1)
        goto LAB79;

LAB80:    t2 = ((char*)((ng3)));
    t50 = xsi_vlog_unsigned_case_compare(t67, 4, t2, 4);
    if (t50 == 1)
        goto LAB81;

LAB82:    t2 = ((char*)((ng4)));
    t50 = xsi_vlog_unsigned_case_compare(t67, 4, t2, 4);
    if (t50 == 1)
        goto LAB83;

LAB84:    t2 = ((char*)((ng5)));
    t50 = xsi_vlog_unsigned_case_compare(t67, 4, t2, 4);
    if (t50 == 1)
        goto LAB85;

LAB86:
LAB88:
LAB87:    xsi_set_current_line(56, ng0);
    t2 = ((char*)((ng2)));
    t3 = (t0 + 2952);
    xsi_vlogvar_assign_value(t3, t2, 0, 0, 4);

LAB89:    goto LAB77;

LAB79:    xsi_set_current_line(52, ng0);
    t69 = ((char*)((ng2)));
    t70 = (t0 + 2952);
    xsi_vlogvar_assign_value(t70, t69, 0, 0, 4);
    goto LAB89;

LAB81:    xsi_set_current_line(53, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2952);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB89;

LAB83:    xsi_set_current_line(54, ng0);
    t3 = ((char*)((ng2)));
    t4 = (t0 + 2952);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB89;

LAB85:    xsi_set_current_line(55, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2952);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB89;

LAB90:    *((unsigned int *)t6) = 1;
    goto LAB93;

LAB95:    t20 = *((unsigned int *)t6);
    t21 = *((unsigned int *)t15);
    *((unsigned int *)t6) = (t20 | t21);
    t22 = *((unsigned int *)t9);
    t23 = *((unsigned int *)t15);
    *((unsigned int *)t9) = (t22 | t23);
    goto LAB94;

LAB96:    t38 = *((unsigned int *)t26);
    t39 = *((unsigned int *)t30);
    *((unsigned int *)t26) = (t38 | t39);
    t31 = (t3 + 4);
    t32 = (t6 + 4);
    t42 = *((unsigned int *)t3);
    t43 = (~(t42));
    t44 = *((unsigned int *)t31);
    t45 = (~(t44));
    t46 = *((unsigned int *)t6);
    t47 = (~(t46));
    t48 = *((unsigned int *)t32);
    t49 = (~(t48));
    t50 = (t43 & t45);
    t51 = (t47 & t49);
    t52 = (~(t50));
    t53 = (~(t51));
    t54 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t54 & t52);
    t55 = *((unsigned int *)t30);
    *((unsigned int *)t30) = (t55 & t53);
    t56 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t56 & t52);
    t57 = *((unsigned int *)t26);
    *((unsigned int *)t26) = (t57 & t53);
    goto LAB98;

LAB99:    xsi_set_current_line(59, ng0);

LAB102:    xsi_set_current_line(60, ng0);
    t41 = (t0 + 2952);
    t58 = (t41 + 56U);
    t68 = *((char **)t58);
    t69 = ((char*)((ng5)));
    memset(t71, 0, 8);
    t70 = (t68 + 4);
    t72 = (t69 + 4);
    t73 = *((unsigned int *)t68);
    t74 = *((unsigned int *)t69);
    t75 = (t73 ^ t74);
    t76 = *((unsigned int *)t70);
    t77 = *((unsigned int *)t72);
    t78 = (t76 ^ t77);
    t79 = (t75 | t78);
    t80 = *((unsigned int *)t70);
    t81 = *((unsigned int *)t72);
    t82 = (t80 | t81);
    t83 = (~(t82));
    t84 = (t79 & t83);
    if (t84 != 0)
        goto LAB106;

LAB103:    if (t82 != 0)
        goto LAB105;

LAB104:    *((unsigned int *)t71) = 1;

LAB106:    t86 = (t71 + 4);
    t87 = *((unsigned int *)t86);
    t88 = (~(t87));
    t89 = *((unsigned int *)t71);
    t90 = (t89 & t88);
    t91 = (t90 != 0);
    if (t91 > 0)
        goto LAB107;

LAB108:    xsi_set_current_line(61, ng0);
    t2 = (t0 + 2952);
    t3 = (t2 + 56U);
    t4 = *((char **)t3);
    t5 = (t0 + 2952);
    xsi_vlogvar_assign_value(t5, t4, 0, 0, 4);

LAB109:    goto LAB101;

LAB105:    t85 = (t71 + 4);
    *((unsigned int *)t71) = 1;
    *((unsigned int *)t85) = 1;
    goto LAB106;

LAB107:    xsi_set_current_line(60, ng0);
    t92 = ((char*)((ng2)));
    t93 = (t0 + 2952);
    xsi_vlogvar_assign_value(t93, t92, 0, 0, 4);
    goto LAB109;

}

static void Always_66_3(char *t0)
{
    char *t1;
    char *t2;
    char *t3;
    char *t4;
    char *t5;
    char *t6;
    char *t7;
    int t8;
    char *t9;
    char *t10;

LAB0:    t1 = (t0 + 4776U);
    t2 = *((char **)t1);
    if (t2 == 0)
        goto LAB2;

LAB3:    goto *t2;

LAB2:    xsi_set_current_line(66, ng0);
    t2 = (t0 + 5128);
    *((int *)t2) = 1;
    t3 = (t0 + 4808);
    *((char **)t3) = t2;
    *((char **)t1) = &&LAB4;

LAB1:    return;
LAB4:    xsi_set_current_line(67, ng0);

LAB5:    xsi_set_current_line(68, ng0);
    t4 = (t0 + 2952);
    t5 = (t4 + 56U);
    t6 = *((char **)t5);

LAB6:    t7 = ((char*)((ng2)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t7, 4);
    if (t8 == 1)
        goto LAB7;

LAB8:    t2 = ((char*)((ng3)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB9;

LAB10:    t2 = ((char*)((ng4)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB11;

LAB12:    t2 = ((char*)((ng5)));
    t8 = xsi_vlog_unsigned_case_compare(t6, 4, t2, 4);
    if (t8 == 1)
        goto LAB13;

LAB14:
LAB15:    goto LAB2;

LAB7:    xsi_set_current_line(69, ng0);
    t9 = ((char*)((ng2)));
    t10 = (t0 + 2792);
    xsi_vlogvar_assign_value(t10, t9, 0, 0, 4);
    goto LAB15;

LAB9:    xsi_set_current_line(70, ng0);
    t3 = ((char*)((ng3)));
    t4 = (t0 + 2792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB15;

LAB11:    xsi_set_current_line(71, ng0);
    t3 = ((char*)((ng4)));
    t4 = (t0 + 2792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB15;

LAB13:    xsi_set_current_line(72, ng0);
    t3 = ((char*)((ng5)));
    t4 = (t0 + 2792);
    xsi_vlogvar_assign_value(t4, t3, 0, 0, 4);
    goto LAB15;

}


extern void work_m_00000000000945126072_1049330356_init()
{
	static char *pe[] = {(void *)Initial_16_0,(void *)Always_25_1,(void *)Always_30_2,(void *)Always_66_3};
	xsi_register_didat("work_m_00000000000945126072_1049330356", "isim/test_isim_beh.exe.sim/work/m_00000000000945126072_1049330356.didat");
	xsi_register_executes(pe);
}
