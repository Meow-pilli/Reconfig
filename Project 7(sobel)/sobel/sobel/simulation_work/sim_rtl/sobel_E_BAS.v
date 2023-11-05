//---------------------------------------------------------------------------
//---------------------------------------------------------------------------
// Copyright (C) 1988-2018 NEC Corporation. All rights reserved.
// tbgen version : 3.89  Fri Feb 23 09:13:11 JST 2018
//          (BIF version : 3.41B)
// tbgen option: -EE -b10 -finish -scr=modelsim-all -hdl sobel_E.v -dump=VCD sobel_E.IFF
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
            $display ( " Comparison result(s):" );
            $display ( " " );

            $display ( "  Signal Name       compare    matched      error  x not matched  z not matched" );
            $display ( "%s",TB_Msg3 );
            Sim_Count( "  sobel_ret     ", TB_sobel_ret_CmpCnt, TB_sobel_ret_MatCnt, TB_sobel_ret_ErrCnt, TB_sobel_ret_XMatCnt, TB_sobel_ret_ZMatCnt);
            $display ( "%s",TB_Msg3 );
            $display ( "  Total         ", TB_total_CmpCnt, TB_total_MatCnt, TB_total_ErrCnt, "    ", TB_total_XMatCnt, "    ", TB_total_ZMatCnt);
            $display ( "%s",TB_Msg3 );
            $display ( " " );

            $display ( " Simulation time :" );
            $display ( "  Elapsed time :", $time, " (x1ps)" );
            $display ( " " );
            $display ( " Warnings :" );

            if ( TB_input_row_a00_FioEnd === 3'b011 ) begin
                $display ( "  Insufficient patterns : input_row_a00" );
            end
            if ( TB_input_row_a01_FioEnd === 3'b011 ) begin
                $display ( "  Insufficient patterns : input_row_a01" );
            end
            if ( TB_input_row_a02_FioEnd === 3'b011 ) begin
                $display ( "  Insufficient patterns : input_row_a02" );
            end
            if ( TB_sobel_ret_FioEnd === 3'b011 ) begin
                $display ( "  Insufficient patterns : sobel_ret" );
            end

            if ( TB_input_row_a00_FioEnd === 3'b000 ) begin
                $display ( "  Redundant patterns : input_row_a00" );
            end
            if ( TB_input_row_a01_FioEnd === 3'b000 ) begin
                $display ( "  Redundant patterns : input_row_a01" );
            end
            if ( TB_input_row_a02_FioEnd === 3'b000 ) begin
                $display ( "  Redundant patterns : input_row_a02" );
            end
            if ( TB_sobel_ret_FioEnd === 3'b000 ) begin
                $display ( "  Redundant patterns : sobel_ret" );
            end

            $display ( "%s",TB_Msg2 );
            $display ( " " );
        end
    endtask

//---------------------------------------------------------------------------

    task Sim_Count;
        input   [16*8:1]            TB_Name;
        input   [31:0]              TB_CmpCnt;
        input   [31:0]              TB_MatCnt;
        input   [31:0]              TB_ErrCnt;
        input   [31:0]              TB_XMatCnt;
        input   [31:0]              TB_ZMatCnt;
        begin
            TB_total_CmpCnt  = TB_total_CmpCnt  + TB_CmpCnt;
            TB_total_ErrCnt  = TB_total_ErrCnt  + TB_ErrCnt;
            TB_total_XMatCnt = TB_total_XMatCnt + TB_XMatCnt;
            TB_total_ZMatCnt = TB_total_ZMatCnt + TB_ZMatCnt;
            TB_total_MatCnt  = TB_total_MatCnt  + TB_MatCnt;

            $display ( "%s %d %d %d     %d     %d",
                TB_Name, TB_CmpCnt, TB_MatCnt, TB_ErrCnt, TB_XMatCnt, TB_ZMatCnt );
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

    task TB_Err_Check;
        input   [TB_MaxBusWidth-1:0]   TB_Epat;
        input   [TB_MaxBusWidth-1:0]   TB_Dout;
        input   [15:0]              TB_BitWidth;
        input   [16*8:1]            TB_Name;
        inout   [31:0]              TB_CmpCnt;
        inout   [31:0]              TB_ErrCnt;
        inout   [31:0]              TB_XMatCnt;
        inout   [31:0]              TB_ZMatCnt;
        inout   [31:0]              TB_MatCnt;
        output                      TB_CmpErr;
        reg     [3:0]               TB_Epat_XFlg;
        reg     [3:0]               TB_Dout_XFlg;
        begin
            TB_CmpCnt = TB_CmpCnt + 1;
            TB_Epat_XFlg = TB_X_Check( TB_Epat, TB_BitWidth );
            TB_Dout_XFlg = TB_X_Check( TB_Dout, TB_BitWidth );

            if ( TB_Epat_XFlg[2] == 1'b1 || TB_Dout_XFlg[2] == 1'b1 ) begin
                TB_CmpErr = 1'b0;
                TB_ZMatCnt = TB_ZMatCnt + 1;
                TB_Dump_Time;
                $display ( " z not matched          %s  %0d: %0d", TB_Name, TB_Dout, TB_Epat );
            end else if ( TB_Epat_XFlg[0] == 1'b1 || TB_Dout_XFlg[0] == 1'b1 ) begin
                TB_CmpErr = 1'b0;
                TB_XMatCnt = TB_XMatCnt + 1;
                TB_Dump_Time;
                $display ( " x not matched          %s  %0d: %0d", TB_Name, TB_Dout, TB_Epat );
            end else if ( TB_Epat !== TB_Dout ) begin
                TB_CmpErr = 1'b1;
                TB_ErrCnt = TB_ErrCnt + 1;
                TB_Dump_Time;
                $display ( " not matched %d %s  %0d: %0d", TB_ErrCnt, TB_Name, TB_Dout, TB_Epat );
            end else begin
                TB_CmpErr = 1'b0;
                TB_MatCnt = TB_MatCnt + 1;
                TB_Dump_Time;
                $display ( " matched                %s  %0d: %0d", TB_Name, TB_Dout, TB_Epat );
            end
        end
    endtask

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
