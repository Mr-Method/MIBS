%--------------------------------------------------------------------------
-- File Name : ZTE-AN-EVENT-MIB.mib
-- Date      : 2007-01-25
-- Author    : ZTE Nms dept.
--
-- Zte Adsl Mib for Access Node
-- 
-- 
--------------------------------------------------------------------------
                                            +"This mib defines extended dsl line mo (managed object ) for adsl2,
                 adsl+ and dsl loop test.
                 
                 Naming Conventions:
                 Atuc -- (ATUC) modem at near (Central) end of line
                 Atur -- (ATUR) modem at Remote end of line " l" su chunshan
                  Mail: suchunshan@zte.com.cn
                  Tel : 021-68896292,68896251"                   )"Adsl line additional information table."                       ("Adsl line additional information entry"                       )"Transmitted net data rate on this line."                       &"Recieved net data rate on this line."                      ""Actual impulse noise protection.
               This parameter reports the actual impulse noise
               protection (INP) on the channel in the L0
               state. In the L1 or L2 state, the parameter contains the
               INP in the previous L0 state. 
            "                      ""Actual impulse noise protection.
               This parameter reports the actual impulse noise
               protection (INP) on the channel in the L0
               state. In the L1 or L2 state, the parameter contains the
               INP in the previous L0 state. 
            "                       �"The value of this object identifies the row in the XDSL2
             Line Ext Profile Table, (zxAnXdsl2LnExtConfPrfTable),
             which applies for this line."                       6"Adsl line config profile extended information table."                       �"An entry extends the adslLineConfProfileEntry defined in 
               [RFC2662]. Each entry corresponds to an ADSL line profile."                      "Specifies lowest bin number allowed for Tx signal.
                 Different line coding type has different default value.
                    0x20 (default for Annex A only)
                    0x20 (default for ADSL2/ADSL2plus)
                    0x06 (default for Annex A if G.Span and/or G.Span Plus are also defined)
                    0x40 (default for Annex B)
                    0x06 (default for Annex C/C.x)
                    0x06 (default for G.Span)
                    0x06 (default for G.Span Plus)"                       �"Specifies highest bin number allowed for Tx signal.
                 Default = 0x3ff (default for all Annexes and ADSL2/ADSL2plus)"                      �"Specifies lowest bin number allowed for Rx signal.
                 Different line coding type has different default value.
                    0x06 (default for Annex A)
                    0x01 (default for Annex B)
                    0x06 (default for Annex C/C.x)
                    0x06 (default for G.Span/ADSL+)
                    0x06 (default for G.Span Plus)
                    0x06 (default for ADSL2/ADLS2plus) "                       �"Specifies highest bin number allowed for Rx signal.
                Default = 0x3f (default for all Annexes and ADSL2/ADLS2plus)"                      "Enable or disable custom bin selection for upstream/downstream 
                transmission. This parameter is used in conjunction with the
                adslAtucDMTConfFreqBins and 
                adslAturDMTConfFreqBins[ADSL-DMT-LINE-MIB] parameter."                       e" It is supported by G.Span. Dsl card team will provide files 
                about it in details."                      v" This configuration parameter defines the line states the ATU-C
                may autonomously transition to on this line. It is coded in a 
                bit map representation (0 if not allowed, 1 if allowed) with 
                following definition:
                    Bit 0   L3 state (Idle state)
                    Bit 1   L1/L2 state (Low power state)." )"Section 7.3.1.1.4 ITU G.997.1(05/2003) "                     �" PM configuration parameter,related to the L2 low power state.
                This parameter specifies the minimum net data rate during the
                low power state (L2)." )"Section 7.3.2.1.5 ITU G.997.1(05/2003) "                    �"Minimum Impulse Noise Protection on Downstream direction.  The
              minimum impulse noise protection for the bearer channel,
              expressed in symbols.  The parameter can take the following
              values: noProtection (i.e., INP not required), halfSymbol
              (i.e., INP length is 1/2 symbol) and 1-16 symbols in steps
              of 1 symbol." ""ITU-T G.997.1, paragraph 7.3.2.3"                     �"  Minimum Impulse Noise Protection on Upstream direction.  The
                minimum impulse noise protection for the bearer channel,
                expressed in symbols. " ""ITU-T G.997.1, paragraph 7.3.2.3"                    '"Parameter that enable or disable trellis coding. Trellis coding 
                should always be enabled for its clear performance advantage.
                Trellis coding is mandatory for ADSL/ADSL2plus.
                The value enable(1) is default for all Annexes and ADSL2/ADSL2plus."                       ."Specifies maximum Rx number of bits per bin."                      E"enables/disables downstream bit swapping.
                 Different line coding type has different default value.
                     disable(2)  (default for ADSL2/ADLS2plus, Annex B, Annex C
                                 C.x, G.Span/ADSL+ and G.Span Plus) 
                     enable(1)   (default for Annex A) "                      C"enables/disables upstream bit swapping.
                 Different line coding type has different default value.
                     disable(2)  (default for ADSL2/ADLS2plus, Annex B, Annex C
                                 C.x, G.Span/ADSL+ and G.Span Plus) 
                     enable(1)   (default for Annex A) "                       _"Defines whether downstream READSL2 operation should be forced 
                by the ATU-C." /"Section 6.10.1 on page 66,Annex L ITU G.992.3"                     �" PM configuration parameter,related to the L2 low power state.
                This parameter represents the minimum time between an exit from 
                the L2 state and the next entry into the L2 state. " )"Section 7.3.1.1.5 ITU G.997.1(05/2003) "                    $" PM configuration parameter,related to the L2 low power state.
                This parameter represents the minimum time between an entry into
                the L2 state and the first Power Trim in the L2 state and between 
                two consecutive Power Trims in the L2 State." )"Section 7.3.1.1.6 ITU G.997.1(05/2003) "                    &" PM configuration parameter,related to the L2 low power state.
                This parameter represents the Maximum Aggregate Transmit Power 
                Reduction (in dB) that can be performed through a single Power
                Trim in the L2 state. It ranges from 0 dB to 31 dB." )"Section 7.3.1.1.3 ITU G.997.1(05/2003) "                    �"The selected upstream PSD mask.  This parameter is used only
                for annexes J and M of G.992.3 and G.992.5, and the same
                selection is used for all relevant enabled bits in
                adslLineTransAtucConfig of ADSL-LINE-EXT-MIB.

                adlu32Eu32 (1),   - ADLU-32 / EU-32
                adlu36Eu36 (2),   - ADLU-36 / EU-36
                adlu40Eu40 (3),   - ADLU-40 / EU-40
                adlu44Eu44 (4),   - ADLU-44 / EU-44
                adlu48Eu48 (5),   - ADLU-48 / EU-48
                adlu52Eu52 (6),   - ADLU-52 / EU-52
                adlu56Eu56 (7),   - ADLU-56 / EU-56
                adlu60Eu60 (8),   - ADLU-60 / EU-60
                adlu64Eu64 (9)    - ADLU-64 / EU-61
                " &"ITU-T G.997.1, paragraph #7.3.1.2.11"                     B"This table provides one row for each Atuc channel.
            "                       3"Adsl channel layer line actuals information entry"                       ["GINP configuration parameters of downstream.
             The expected throughput (ETR)."                      g"GINP configuration parameters of downstream.
             The error-free throughput (EFTR is defined as the average 
             bit-rate at the alpha1/beta1 reference point, of bits 
             originating from DTU's which have been detected to contain
             no error at the moment of crossing the alpha1/beta1 reference 
             point."                       �"GINP configuration parameters of downstream.
             The minimum error-free throughput (EFTR_min is defined as the 
             minimum of the EFTR observed since the last reading of the 
             EFTR_min."                       "GINP configuration parameters of downstream.
             If retransmission is used in a given transmit direction, this 
             Object is defined as the actual value of the time-independent 
             component of the delay between the alfa1 and beta1 reference 
             points. 
             This can be calculated as the minimum possible instantaneous 
             delay between the alfa1 and beta1 reference points, based on 
             the actual settings of the framing parameters."                       B"This table provides one row for each ATUR channel.
            "                       3"Adsl channel layer line actuals information entry"                       Y"GINP configuration parameters of upstream.
             The expected throughput (ETR)."                      f"GINP configuration parameters of upstream..
             The error-free throughput (EFTR is defined as the average 
             bit-rate at the alpha1/beta1 reference point, of bits 
             originating from DTU's which have been detected to contain
             no error at the moment of crossing the alpha1/beta1 reference 
             point."                       �"GINP configuration parameters of upstream.
             The minimum error-free throughput (EFTR_min is defined as the 
             minimum of the EFTR observed since the last reading of the 
             EFTR_min."                      �"GINP configuration parameters of upstream.
             If retransmission is used in a given transmit direction, this 
             Object is defined as the actual value of the time-independent 
             component of the delay between the alfa1 and beta1 reference 
             points. 
             This can be calculated as the minimum possible instantaneous 
             delay between the alfa1 and beta1 reference points, based on 
             the actual settings of the framing parameters."                       �"Adsl line alarm config profile extended information table.
            The cycle of thresholds monitoring shoul be less than 5 minutes."                       �"An entry extends the adslLineAlarmConfProfileEntry defined in 
               [RFC2662]. Each entry corresponds to an ADSL line alarm profile."                      �" Tolerance between configured adslAtucChanConfInterleaveMaxTxRate and
                actual adslAtucChanCurrTxRate. 
                  
                Calculation:

                           100*(adslAtucChanConfInterleaveMaxTxRate - adslAtucChanCurrTxRate)
                Difference =-------------------------------------------------------------------
                                          adslAtucChanConfInterleaveMaxTxRate

                If Difference  is larger than zxAnAdslAtucConnRateTolerance, 
                zxAnAdslAtucLowConnRateTrap trap will be sent.
                 
                  A value of `0' will disable the trap. "                      �" Tolerance between configured adslAturChanConfInterleaveMaxTxRate and
                actual adslAturChanCurrTxRate. 
                  
                Calculation:

                           100*(adslAturChanConfInterleaveMaxTxRate - adslAturChanCurrTxRate)
                Difference =-------------------------------------------------------------------
                                          adslAturChanConfInterleaveMaxTxRate


                If Difference  is larger than zxAnAdslAturConnRateTolerance, 
                zxAnAdslAturLowConnRateTrap trap will be sent.

                  A value of `0' will disable the trap. "                       �"   Threshold of Atuc connection rate. 
                    If adslAtucChanCurrTxRate  is lower than zxAnAdslAtucThreshConnRate, 
                zxAnAdslAtucLowConnRateTrap trap will be sent.
                    A value of `0' will disable the trap. "                       �"   Threshold of Atur connection rate. 
                    If adslAturChanCurrTxRate  is lower than zxAnAdslAturThreshConnRate, 
                zxAnAdslAturLowConnRateTrap trap will be sent.
                    A value of `0' will disable the trap. "                      �" Tolerance between configured adslAtucChanConfInterleaveMaxTxRate and
                actual adslAtucChanCurrTxRate. 
                  
                Calculation:

                           100*(adslAtucChanCurrTxRate - adslAtucChanConfInterleaveMaxTxRate)
                Difference =-------------------------------------------------------------------
                                          adslAtucChanConfInterleaveMaxTxRate

                If Difference  is larger than zxAnMaxAdslAtucConnRateTolerance, 
                zxAnAdslAtucHighConnRateTrap trap will be sent.
                 
                  A value of `0' will disable the trap. "                      �" Tolerance between configured adslAturChanConfInterleaveMaxTxRate and
                actual adslAturChanCurrTxRate. 
                  
                Calculation:

                           100*(adslAturChanCurrTxRate - adslAturChanConfInterleaveMaxTxRate)
                Difference =-------------------------------------------------------------------
                                          adslAturChanConfInterleaveMaxTxRate


                If Difference  is larger than zxAnAdslMaxAturConnRateTolerance, 
                zxAnAdslAturHighConnRateTrap trap will be sent.

                  A value of `0' will disable the trap. "                      "   Threshold of Atuc connection rate. 
                    If adslAtucChanCurrTxRate  is higher than zxAnAdslMaxThreshAtucConnRate, 
                zxAnAdslAtucHighConnRateTrap trap will be sent.
                    A value of `0' will disable the trap. "                      "   Threshold of Atur connection rate. 
                    If adslAturChanCurrTxRate  is higher than zxAnAdslMaxThreshAturConnRate, 
                zxAnAdslAturHighConnRateTrap trap will be sent.
                    A value of `0' will disable the trap. "                      r"Enables and disables the InitFailureTrap on the atur interface.
                
                 unused1             (0) - This bit is no use to enable or
                                           disable the the InitFailureTrap
                                           on the atur interface.

                 lossOfFraming       (1) - Value 0 means disable the loss of
                                           frame trap on the atur interface.
                                    
                 lossOfSignal        (2) - Value 0 means disable the loss of
                                           signal trap on the atur interface.
                                                                             
                 lossOfPower         (3) - Value 0 means disable the loss of 
                                           power trap on the atur interface.
                 
                 unused2             (4) - This bit is no use to enable or
                                           disable the InitFailureTrap on the
                                           atur interface.
                                       
                 lossOfSignalQuality (5) - Value 0 means disable the loss of 
                                           signal quality trap on the atur
                                           interface.
                "                      �"GINP configuration parameters of downstream.
             The fraction of NDR that shall be used as the threshold for 
             leftr defects.
             lefter (The low error-free throughput rate) defect is defined as:
               A leftr defect occuurs when EFTR < EFTR_THRESH * NDR
               A leftr defect terminates when EFTR >= EFTR_THRESH * NDR
             When EFTR_THRESH is set to the special value of 0, ETR shall be 
             used as the threshold in above inequalities:
               A leftr defect occurs when EFTR < ETR  
               A leftr defect terminates when EFTR >=ETR.
             Valid values are from 0 to 100 in increments of 0.01.      
             "                      �"GINP configuration parameters of upstream.
             The fraction of NDR that shall be used as the threshold for 
             leftr defects.
             lefter (The low error-free throughput rate) defect is defined as:
               A leftr defect occuurs when EFTR < EFTR_THRESH * NDR
               A leftr defect terminates when EFTR >= EFTR_THRESH * NDR
             When EFTR_THRESH is set to the special value of 0, ETR shall be 
             used as the threshold in above inequalities:
               A leftr defect occurs when EFTR < ETR  
               A leftr defect terminates when EFTR >=ETR.   
             Valid values are from 0 to 100 in increments of 0.01.   
            "                       '"This table provides atuc performance."                       )"the entry for atuc channel performance."                       z"Count of seconds during this interval that there was at
                least one FEC correction event on this channel." !"ITU-T G.997.1, paragraph #7.2.1"                     �"Count of seconds during this interval that there was at
                least one FEC correction event on this channel
                in this line within the current 15 minute time interval." !"ITU-T G.997.1, paragraph #7.2.1"                     �"Count of seconds during this interval that there was at
                least one FEC correction event on this channel
                in this line within the current 1 day interval." !"ITU-T G.997.1, paragraph #7.2.1"                     �"Count of seconds during this interval that there was at
                least one FEC correction event on this channel 
                in this line within the most recent previous 1-day period." !"ITU-T G.997.1, paragraph #7.2.1"                     '"This table provides atur performance."                       !"the entry for atur performance."                       z"Count of seconds during this interval that there was at
                least one FEC correction event on this channel." !"ITU-T G.997.1, paragraph #7.2.1"                     �"Count of seconds during this interval that there was at
                least one FEC correction event on this channel
                in this line within the current 15 minute time interval." !"ITU-T G.997.1, paragraph #7.2.1"                     �"Count of seconds during this interval that there was at
                least one FEC correction event on this channel
                in this line within the current 1 day interval." !"ITU-T G.997.1, paragraph #7.2.1"                     �"Count of seconds during this interval that there was at
                least one FEC correction event on this channel 
                in this line within the most recent previous 1-day period." !"ITU-T G.997.1, paragraph #7.2.1"                     /"This table provides atuc channel performance."                       )"the entry for atuc channel performance."                      K"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been
             retransmitted by the transmitter in the current 15 minute 
             interval. Multiple retransmission of the same DTU is counted 
             as many times as it has been retransmitted.
             "                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             detected in error and has been successfully corrected by a 
             retransmission in the current 15 minute interval"                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU is detected
             in error and has not been corrected by a retransmission in the 
             current 15 minute interval."                      F"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             retransmitted by the transmitter in the current day interval. 
             Multiple retransmission of the same DTU is counted as many times 
             as it has been retransmitted.
             "                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             detected in error and has been successfully corrected by a 
             retransmission in the current day interval"                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU is detected
             in error and has not been corrected by a retransmission."                       /"This table provides atur channel performance."                       )"the entry for atur channel performance."                      J"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been
             retransmitted by the transmitter in the current 15 minute 
             interval. Multiple retransmission of the same DTU is counted 
             as many times as it has been retransmitted.
            "                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             detected in error and has been successfully corrected by a 
             retransmission in the current 15 minute interval"                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU is detected
             in error and has not been corrected by a retransmission in the 
             current 15 minute interval."                      F"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             retransmitted by the transmitter in the current day interval. 
             Multiple retransmission of the same DTU is counted as many times 
             as it has been retransmitted.
             "                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             detected in error and has been successfully corrected by a 
             retransmission in the current day interval"                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU is detected
             in error and has not been corrected by a retransmission."                       �"The table zxAnAdslAtucChanIntervalTable contains history 
             Performance Monitoring results for 15min of DSL channel. "                       �"The table zxAnAdslAtucChanIntervalTable contains history 
             Performance Monitoring results for 15min of DSL channel.
            "                      >"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             retransmitted by the transmitter during this interval. Multiple
             retransmission of the same DTU is counted as many times as it 
             has been retransmitted.
             "                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             detected in error and has been successfully corrected by a 
             retransmission during this interval."                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU is detected
             in error and has not been corrected by a retransmission. during 
             this interval."                       �"The table zxAnAdslAturChanIntervalTable contains history 
             Performance Monitoring results for 15min of DSL channel. "                       �"The table zxAnAdslAturChanIntervalTable contains history 
             Performance Monitoring results for 15min of DSL channel.
          "                      >"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             retransmitted by the transmitter during this interval. Multiple
             retransmission of the same DTU is counted as many times as it 
             has been retransmitted.
             "                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             detected in error and has been successfully corrected by a 
             retransmission during this interval."                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU is detected
             in error and has not been corrected by a retransmission. during 
             this interval."                       m"The table zxAnAdslAtucChanHist1DayTable contains channel history
             for 1 day intervals of DSL. "                      U"The table zxAnAdslAtucChanHist1DayTable contains PM channel 
             history for 1 day intervals of DSL.
             The indexes of this table is an interface index where
             the interface has an ifType value which is applicable
             for a DSL channel, the termination unit and the
             interval number."                       "The interval number."                      0"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             retransmitted by the transmitter during this interval. Multiple 
             retransmission of the same DTU is counted as many times as it 
             has been retransmitted."                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             detected in error and has been successfully corrected by a 
             retransmission during this interval."                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU is detected
             in error and has not been corrected by a retransmission during 
             this interval."                       m"The table zxAnAdslAturChanHist1DayTable contains channel history
             for 1 day intervals of DSL. "                      U"The table zxAnAdslAturChanHist1DayTable contains PM channel 
             history for 1 day intervals of DSL.
             The indexes of this table is an interface index where
             the interface has an ifType value which is applicable
             for a DSL channel, the termination unit and the
             interval number."                       "The interval number."                      /"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             retransmitted by the transmitter during this interval. Multiple
             retransmission of the same DTU is counted as many times as it 
             has been retransmitted."                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU has been 
             detected in error and has been successfully corrected by a 
             retransmission during this interval."                       �"GINP configuration parameters.
             this is a counter that is incremented each time a DTU is detected
             in error and has not been corrected by a retransmission during 
             this interval."                       >"This table provides one row for each DSL line loopback test."                       *"DSL line loopback test information entry"                       "Rack number of the dsl port."                       "Shelf number of the dsl port."                       "Slot number of the dsl port."                       "The dsl port number."                       �"Dsl bridge port index. eg.It is PVC ID in  ADSL port.
                 If the test is only in the physical port,then this fileds will be 0"                       v"This is loop test action expected.
                 
                 NOTES:
                 
                 "                       �"This is loop test operational status.
                  
                  Note: if zxAnDslLoopBackTestOperStatus equal to Excuting(1),
                  ifOperStaus should be loopback test(3). "                       B"This is loop test result and includes reasons for test failures."                       7"The count of cells will be sent in the loopback test."                       2"The count of recived cells in the loopback test."                       "Loop test table RowStatus . "                           P"zxAnAdslAtucConnRateTolerance threshold or zxAnAdslAtucThreshConnRate reached."                 �" AtucConnRate Difference is below threshold of zxAnAdslAtucConnRateTolerance.
                 Or adslAtucChanCurrTxRate is below threshold of zxAnAdslAtucThreshConnRate. "                 V"zxAnAdslMaxAtucConnRateTolerance threshold or zxAnAdslMaxThreshAtucConnRate reached."                 %"zxAnAdslAtucHighConnRateTrap clear."                 P"zxAnAdslAtucConnRateTolerance threshold or zxAnAdslAtucThreshConnRate reached."                 %" zxAnAdslAtucLowConnRateTrap clear."                 V"zxAnAdslMaxAturConnRateTolerance threshold or zxAnAdslMaxThreshAturConnRate reached."                 %"zxAnAdslAturHighConnRateTrap clear."                 P"zxAnAdslAturConnRateTolerance threshold or zxAnAdslAturThreshConnRate reached."                 %" zxAnAdslAturLowConnRateTrap clear."                        