============================================================
  Generated by:           Genus(TM) Synthesis Solution 21.14-s082_1
  Generated on:           Feb 14 2025  03:55:56 pm
  Module:                 mcrb
  Operating conditions:   TypTyp_0.8V_25C 
  Interconnect mode:      global
  Area mode:              physical library
============================================================


Path 1: VIOLATED (-1028 ps) Setup Check with Pin skew_addr_cntr_reg[2]/CK->D
          Group: clk
     Startpoint: (R) skew_addr_cntr_reg[2]/CK
          Clock: (R) clk
       Endpoint: (F) skew_addr_cntr_reg[2]/D
          Clock: (R) clk

                     Capture       Launch     
        Clock Edge:+    5000            0     
       Src Latency:+       0            0     
       Net Latency:+       0 (I)        0 (I) 
           Arrival:=    5000            0     
                                              
             Setup:-    1108                  
       Uncertainty:-      50                  
     Required Time:=    3842                  
      Launch Clock:-       0                  
         Data Path:-    4870                  
             Slack:=   -1028                  

#--------------------------------------------------------------------------------------------------
#      Timing Point        Flags    Arc   Edge   Cell     Fanout Load Trans Delay Arrival Instance 
#                                                                (fF)  (ps)  (ps)   (ps)  Location 
#--------------------------------------------------------------------------------------------------
  skew_addr_cntr_reg[2]/CK -       -      R     (arrival)      6    -    10     0       0    (-,-) 
  skew_addr_cntr_reg[2]/QN -       CK->QN R     DFFR_X2        1  8.7  1284  1364    1364    (-,-) 
  g11215/Z                 -       A->Z   R     BUF_X16        4 24.7   802   733    2097    (-,-) 
  g11179__7482/ZN          -       A1->ZN R     AND3_X2        1  9.2  1177   896    2993    (-,-) 
  g11172__7098/ZN          -       A1->ZN F     NAND2_X4       1 11.0   456   499    3493    (-,-) 
  g11168__5526/ZN          -       A2->ZN R     NAND3_X4       1 11.0   954   649    4142    (-,-) 
  g11167/ZN                -       A->ZN  F     INV_X32        5 27.3   274   322    4464    (-,-) 
  g11163__8428/ZN          -       A1->ZN F     AND2_X2        1  9.4   245   405    4869    (-,-) 
  skew_addr_cntr_reg[2]/D  <<<     -      F     DFFR_X2        1    -     -     0    4870    (-,-) 
#--------------------------------------------------------------------------------------------------

