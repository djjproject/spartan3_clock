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

#include "xsi.h"

struct XSI_INFO xsi_info;



int main(int argc, char **argv)
{
    xsi_init_design(argc, argv);
    xsi_register_info(&xsi_info);

    xsi_register_min_prec_unit(-12);
    simprims_ver_m_00000000003359274523_2662658903_init();
    simprims_ver_m_00000000001255213976_2021654676_init();
    simprims_ver_m_00000000000648012491_3151998091_init();
    simprims_ver_m_00000000001867363923_1692233196_init();
    simprims_ver_m_00000000003719362827_1840704098_init();
    simprims_ver_m_00000000001255213976_3226743947_init();
    simprims_ver_m_00000000003598591109_1844845843_init();
    simprims_ver_m_00000000003598591109_0498577443_init();
    simprims_ver_m_00000000003598591109_2977222211_init();
    simprims_ver_m_00000000003598591109_0251952526_init();
    simprims_ver_m_00000000003598591109_3769277396_init();
    simprims_ver_m_00000000003598591109_1849525990_init();
    simprims_ver_m_00000000003598591109_3256702861_init();
    simprims_ver_m_00000000003598591109_0595343216_init();
    simprims_ver_m_00000000003598591109_2129103041_init();
    simprims_ver_m_00000000003598591109_3563537662_init();
    simprims_ver_m_00000000003598591109_4260572797_init();
    simprims_ver_m_00000000003598591109_3851932110_init();
    simprims_ver_m_00000000003598591109_1237692704_init();
    simprims_ver_u_00000000003032403156_2366604397_init();
    simprims_ver_m_00000000002910948294_0076253249_init();
    simprims_ver_m_00000000002910948294_1630855271_init();
    simprims_ver_m_00000000000126354981_0818475687_init();
    simprims_ver_m_00000000000126354981_1080494567_init();
    work_m_00000000001498936504_1049330356_init();
    work_m_00000000002389387277_1985558087_init();
    work_m_00000000004134447467_2073120511_init();


    xsi_register_tops("work_m_00000000002389387277_1985558087");
    xsi_register_tops("work_m_00000000004134447467_2073120511");


    return xsi_run_simulation(argc, argv);

}
