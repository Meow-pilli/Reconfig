//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
// tbgen version : 3.89  Fri Feb 23 09:13:11 JST 2018
//          (BIF version : 3.41B)
// tbgen option: -EE -output=file -b10 -finish -scr=modelsim-all -dump=VCD -dump_signal=PORT:ALL ave8_E.IFF
//---------------------------------------------------------------------------
//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

    task TB_Sim_Start;
        input   [32*8:1]    TB_FileName_i;
        reg     [8*8:0]     TB_cha0;
        reg     [15*8:0]    TB_cha1;
        reg     [35*8:0]    TB_cha2;
        begin
            TB_cha0    = "ErrNo";
            TB_cha1    = "signal";
            TB_cha2    = "        out(d):           ept(d)";

            $display ( "%s",TB_Msg2 );
            $display ( "             Start Sim   %s", TB_FileName_i );
            $display ( "%s",TB_Msg2 );
            $display ( " " );
            $display ( " Error Message %s%s%s", TB_cha0, TB_cha1, TB_cha2 );
            $display ( "%s",TB_Msg3 );
        end
    endtask

//---------------------------------------------------------------------------

    task TB_Sim_End;
        input   [32*8:1]    TB_TestName_i;
        begin
            $display ( " " );
            $display ( "%s",TB_Msg2 );
            $display ( "             End Sim     %s ", TB_TestName_i );
            $display ( "%s",TB_Msg2 );
            $display ( " " );
            $display ( " Simulation Summary" );
            $display ( "%s",TB_Msg3 );

            $display ( " Simulation time :" );
            $display ( "  Elapsed time :", $time, " (x1ps)" );
            $display ( " " );
            $display ( " Warnings :" );

            if ( TB_in0_FioEnd === 3'b000 ) begin
                $display ( "  Redundant patterns : in0" );
            end

            $display ( "%s",TB_Msg2 );
            $display ( " " );
        end
    endtask

//---------------------------------------------------------------------------

    task TB_Dump_Time;
        begin
            if ( TB_TimeData !== $time ) begin
                TB_TimeData = $time;
                $display ( " --- time = ", TB_TimeData, " ----------------------------------------------" );
            end
        end
    endtask

//---------------------------------------------------------------------------

//---------------------------------------------------------------------------

    function [3:0] TB_X_Check;
        input   [TB_MaxBusWidth-1:0]    TB_Data;
        input   [15:0]                  TB_BitWidth;
        integer                         TB_index;
        reg     [3:0]                   TB_XFlg;
        reg     [TB_MaxBusWidth-1:0]    TB_tmp;
        begin
            TB_XFlg = 4'b1010;
            TB_tmp = TB_Data;
            TB_index = 0;
            while ( TB_index < TB_BitWidth && TB_XFlg != 4'b0101 ) begin
                if ( TB_tmp[0] === 1'bX ) begin
                    if ( TB_XFlg[0] == 1'b0 ) begin
                        TB_XFlg[0] = 1'b1;
                    end
                end else begin
                    if ( TB_XFlg[1] == 1'b1 ) begin
                        TB_XFlg[1] = 1'b0;
                    end
                end
                if ( TB_tmp[0] === 1'bZ ) begin
                    if ( TB_XFlg[2] == 1'b0 ) begin
                        TB_XFlg[2] = 1'b1;
                    end
                end else begin
                    if ( TB_XFlg[3] == 1'b1 ) begin
                        TB_XFlg[3] = 1'b0;
                    end
                end
                if ( TB_XFlg == 4'b0101 ) begin
                    TB_index = TB_BitWidth;
                end else begin
                    TB_tmp[TB_MaxBusWidth-1:0] = {1'b0, TB_tmp[TB_MaxBusWidth-1:1]};
                    TB_index = TB_index + 1;
                end
            end
            TB_X_Check = TB_XFlg;
        end
    endfunction

//---------------------------------------------------------------------------

//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
