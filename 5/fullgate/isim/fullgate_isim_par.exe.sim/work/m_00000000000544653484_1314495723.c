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
static const char *ng0 = "D:/xilinx/5/fullgate/netgen/par/full_timesim.v";
static const char *ng1 = "netgen/par/full_timesim.sdf";
static const char *ng2 = "";
static const char *ng3 = "TYPICAL";
static const char *ng4 = "1.0:1.0:1.0";
static const char *ng5 = "FROM_MTM";



static void Initial_55_0(char *t0)
{

LAB0:    xsi_set_current_line(55, ng0);
    xsi_vlog_sdfAnnotate(t0, ng1, -1, ng2, ng2, ng2, ng3, ng4, ng5);

LAB1:    return;
}


extern void work_m_00000000000544653484_1314495723_init()
{
	static char *pe[] = {(void *)Initial_55_0};
	xsi_register_didat("work_m_00000000000544653484_1314495723", "isim/fullgate_isim_par.exe.sim/work/m_00000000000544653484_1314495723.didat");
	xsi_register_executes(pe);
}
