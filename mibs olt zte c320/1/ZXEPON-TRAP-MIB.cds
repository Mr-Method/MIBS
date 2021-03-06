 �-- *****************************************************************
-- ZTE EPON PERFORMANCE MIB
--
-- 03-06-2007
--
-- Copyright(c) 2007 ZTE Corporation
-- All rights reserved.
-- *****************************************************************
                         "" �"Zhongxing Telcom Co. Ltd.
                     E-mail: info@mail.zte.com.cn
                     http  : www.zte.com.cn or www.zhongxing.com"                   ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 %"ONU authentication success message."                 #"OLT PON Port Optical Modules LOS."                 +"OLT PON Port Optical Modules LOS restore."                �"The LOID conflict trap that is generated when unauthorized ONU
             reports an LOID that has been binded by other registered ONU.
             The first ifIndex indicates the PON port of unauthorized ONU.
             The zxAnEponTrapMac indicates the MAC of unauthorized ONU.
             zxAnEponOnuIfIndex indicates the authorized ONU whih the
             same LOID.
             "                     ""                       ""                       ""                       ""                       ""                       ""                      t"OLT LOS Reason  
                 fiberBroken:trunk or branch fiber is broken.              
                 allOnuDyingGasp:all ONUs under the PON port are 
                                 power off.
                 allOnuNeverOnline:all ONUs under the PON port are 
                                   never online.
                 otherReasons:other reasons."                       ""                       ""                       ""                       ""                       ""                       5"The rogue ONU id list, that has been authenticated."                       F"The high possibility rogue ONU id list, that has been authenticated."                       E"The low possibility rogue ONU id list, that has been authenticated."                       8"The rogue ONU MAC list, that has been unauthenticated."                       I"The high possibility rogue ONU MAC list, that has been unauthenticated."                       H"The low possibility rogue ONU MAC list, that has been unauthenticated."                       "The actual speed type of ONU."                       "The config speed type of ONU."                      R"A unique value for each interface.  Its value
               ranges between 1 and the value of ifNumber.  The
               value for each interface must remain constant at
               least from one re-initialization of the entity's
               network management system to the next re-
                     initialization."                           ""                       ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 &"it indicate OLT PON MAC reset failed"                 <"EPON ONU actual speed type and config speed type mismatch."                         ""                       ""                       ""                       ""                       ""                       ""                       ;"This MIB is defined for onu action(reset,recovery) result"                       ;"This MIB is defined for onu action(reset,recovery) result"                       ;"This MIB is defined for onu action(reset,recovery) result"                       ;"This MIB is defined for onu action(reset,recovery) result"                       ;"This MIB is defined for onu action(reset,recovery) result"                       "CTC ONU OAM Message v2.1"                     /"A functional failure on an internal interface"                 ""                 "ONU Power Alarm"                 ""                 ("ONU Battery is provisioned but missing"                 ""                 <"ONU Battery is provisioned and present but cannot recharge"                 ""                 C"ONU Battery is provisioned and present but its voltage is too low"                 ""                 I"Applies if the ONU is supported with detection such as door or box open"                 ""                 "ONU Self-Test Failure"                 ""                 !"ONU Temperature  over Threshold"                 ""                 !"ONU Temperature  over Threshold"                 ""                 i"Failure of Connection between inner IAD and SS platform, such as Lose of SS, no keep alive packets, etc"                 ""                 8"ONU failure of the working fiber pathway
            "                 ""                 "ONU Reset
            "                 "ONU Recovery
            "                 )"ONU Data Channel Turn Off
            "                 "ONU Recovery
            "                 "ONU Recovery
            "                 "ONU Recovery
            "                 n"A zxAnEponOnuPowerSwitchAlm trap is sent when the ONU power
            has been switched to standby power."                 s"A zxAnEponOnuPowerSwitchRestore trap is sent when the ONU power
            has been switched to AC mains power."                     %"ONU RX Optical Power over Threshold"                 ""                 +"ONU RX Optical Power Lower Than Threshold"                 ""                 %"ONU TX Optical Power over Threshold"                 ""                 +"ONU RX Optical Power Lower Than Threshold"                 ""                 !"ONU Bias Current over Threshold"                 ""                 '"ONU Bias Current Lower Than Threshold"                 ""                 #"ONU Supply Voltage over Threshold"                 ""                 )"ONU Supply Voltage Lower Than Threshold"                 ""                 ""                 ""                 ""                 ""                     0"A functional failure on an user interface card"                 ""                 "ONU card self-test failure"                 ""                     ,"ONU Ethernet Port Auto-negotiation Failure"                 ""                 '"ONU Ethernet Port LOS(Loss of Signal)"                 ""                 "ONU Ethernet port failure"                 ""                $"This trap will be sent to managemet system when ONU Ethernet
             port loopback was happened .
             The format  of zxAnEponOnuOamAlarmInfo  as following:
                '1' means inner loopback
                '2' means outer loopback .                  
             "                 0"The trap of zxAnEponOnuEthLoopbackAlm restore."                 "ONU Ethernet Port Congestion"                 ""                 "ONU POTS Port Failure"                 ""                 "ONU E1 Port Failure"                 ""                 "ONU E1 Timing Unlock"                 ""                 !"ONU E1 Port LOS(Loss of Signal)"                 ""                        