 �-- *****************************************************************
-- ZTE GPON MIB
--
-- 09-27-2006
--
-- Copyright(c) 2006 ZTE Corporation
-- All rights reserved.
-- *****************************************************************
   $"Represents the version of the ONT."              �"The first octet indicates one PON OLT ID number, and 
             Each four octets indicates one PortId number that thses 
             PortIds belong to the PON OLT, with from the second octet 
             to fifth octect specifying first PortId Number, from the 
             sixth octet to ninth octet specifying second PortId Number,
             etc. example, PON OLT 1, PortId 1 - PortId 3, it is that 
             '01000000010000000200000003'."               #"Represents the vendor of the ONT."              U"Each four octets indicates one table index number, with from
             the first octet to fourth octect specifying first index Number,
             from the fifth octet to eighth octet specifying second index Number,
             etc. example, index 1, index 10000, index 245678, it is that '00000001
             000027100003BFAE'."               &"Represents the specific type of ONT."               *"Represents the specific type of templet."               %"Represents the unique for each ONT."              �"The first octet indicates one PON OLT ID number, and 
             Each four octets indicates one ONT/ONU ID number 
             that thses ONTs belong to the PON OLT, with from the
             second octet to fifth octect specifying first ONT/ONU,
             from the sixth octet to ninth octet specifying second
             ONT/ONU, etc. example, PON OLT 1, ONT 1 ONT 100, ONT 333,
             it is that '0100000001000000640000014D'."               /"A 12-bit VLAN ID used in the VLAN Tag header."                                                                                                                                "The MIB module for defining ZXGPON base OID. OID programming:
             zxGponRootMib 1     , index(zxGponMgmtIndex)
             zxGponRootMib 2-5   , reserve
             zxGponRootMib 6     , Absolut private MIB(zxGponAbsPrivate)
             zxGponRootMib 7-9   , reserve
             zxGponRootMib 10    , Standard global MIB(zxGponStandardGlobal)
             zxGponRootMib 11    , Private global MIB(zxGponPrivateGlobal)
             zxGponRootMib 12    , Standard OLT MIB(zxGponStandardOlt)
             zxGponRootMib 13    , Private OLT MIB(zxGponPrivateOlt)
             zxGponRootMib 14-20 , reserve
             zxGponRootMib 21    , ONT equipment management(zxGponOntEquipMgmt)
             zxGponRootMib 22    , ANI management(zxGponAniMgmt)
             zxGponRootMib 23    , UNI Management(zxGponUniMgmt)
             zxGponRootMib 24    , Connection Management(zxGponConnMgmt)
             zxGponRootMib 25    , Traffic management(zxGponTrafficMgmt)
             zxGponRootMib 26    , Profile management(zxGponProfileMgmt)
             zxGponRootMib 27    , Standard ONU MIB(zxGponStandardOnu)
             zxGponRootMib 28    , Private ONU MIB(zxGponPrivateOnu)
             zxGponRootMib 30    , Service management MIB(zxGponServiceMgmt)
             zxGponRootMib 45    , Private TRAP MIB(zxGponTraps)
             zxGponRootMib 100   , Dummy MIB indicating the termination of gpon mibs(zxGponTermination)
             
             zxGponUniMgmt 1-5   , reserve
             zxGponUniMgmt 6     , Video Service MIB(zxGponUniVideoService)
             zxGponUniMgmt 7     , TDM Service MIB(zxGponUniTdmService)
             zxGponUniMgmt 8     , Ethernet Service MIB(zxGponUniEthService)
             zxGponUniMgmt 9     , CES MIB(zxGponUniCesService)
            " �"ZTE GPON Working Group: 
            http://www.zte.com.cn
            e-mail:
            guo.hongjian@zte.com.cn
            " "200609270000Z" 4"Initial version, published as ZTE enterprises MIB."       -- September 27, 2006"
           ="The dummy object indicats the termination of all gpon mibs."                           "OLT and ONU table."                       $"An entry in the OLT and ONU table."                       �"OLT identifier, from 1 to N.
            bit 31~28?atype(1)
            bit 27~24?ashelf(0)
            bit 23~16?aslotId
            bit 16~8?aoltId
            bit 7~0?areserved(0)"                        "an ONU in an OLT, from 1 to M."                       ""                       "Module revision flag."                           ""                       +"It is entry in the zxGponOltDevInfoTable."                       %"Enable or disable DBA on this olt ."                       ""                       $"It is entry in the zxGponFECTable."                       &"Indicates the FEC mode on this olt ."                       ""                       $"It is entry in the zxGponRTDTable."                       "Equalized delay of onu."                       "Distance of onu."                       ""                       &"It is entry in the zxGponRangeTable."                       �"Indicates the range mode of this olt .
                mode0(1): 0  - 20 km
                mode1(2): 20 - 40 km
                mode2(3): 40 - 60 km"                       �"It indicates value of the base distance of the range.
                 The distance of the range is [zxGponRangeBase,zxGponRangeBase + zxGponRangeDiff],
                 The max distance of the range is 60km"                       7"It indicates the distance of the range coverage area."                       �"Indicates the range capability.
                fixed(1): zxGponRangeMode working,only support 0-20,20-40,40-60
                step(2): zxGponRangeBase and zxGponRangeDiff working"                       2"This table represents current valid index table."                       )"It provide a current valid index entry."                      >"It is a table name ID, specifical number denotes one table.
         Only these tables are valid in which it is only one integer index.
         GPON_TBLID_BWPROFILE             1
         GPON_TBLID_THRESPROFILE          2
         GPON_TBLID_TRAFFICPROFILE        3
         GPON_TBLID_FLOWCLASSPROFILE      4
         GPON_TBLID_CLASSRULEPROFILE      5
         GPON_TBLID_TRAFFICMGMTUNIT       6
         GPON_TBLID_GEMPORT               7
         GPON_TBLID_FLOW                  8
         GPON_TBLID_VOIPMEDIAPROFILE      9
         GPON_TBLID_DIALPLANTABLE         10
         GPON_TBLID_FILTERRULE            11
         GPON_TBLID_TREATRULE             12
         GPON_TBLID_PWPROFILE             13
         GPON_TBLID_SCHPROFILE            14
         GPON_TBLID_IGMPPROFILE           15
         " "N/A"                     "It is a valid in the table." "N/A"                     ""                       ""                       "slot id(1-6,9-14)" "N/A"                     1"enable/disable pon Optical-Always-On detection." "N/A"                         "" ""                     ""                       O"To provide error tolerance, the OLT must implement a local superframe counter"                       �"The received BIP8 is compared with the calculated BIP8 on the received stream. In case 
             of a difference ERR counter is incremented"                       "" ""                     ""                       ""                       ""                       ""                       "" ""                     ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ="Errored bytes which have been corrected by FEC on PON port."                       A"Errored codewords which have been corrected by FEC on PON port."                       D"Errored codewords which haven't been corrected by FEC on PON port."                       ("Received codewords by FEC on PON port."                       ""Errored bits by BIP on PON port."                       %"Errored packets by CRC on PON port."                       4"The total count of BIP corrected bits on PON port."                       "" ""                     ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                           "" 	"G.984.3"                     ""                       ""                       F"The definition size of description does not include the termination."                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       �"The aging time of unauthorized ONU. 
             When the online time of unauthorized ONU for more than
              'zxGponOltPonUnauthOnuAgingTime', the OLT will delete
              the unauthorized ONU record from the unauthorized ONU table."                       "" 	"G.984.3"                     ""                       ""                       ""                       +"excute olt Optical-Always-ON detect once."                       "" 	"G.984.3"                     ""                       ""                       ""                       *"The register ID of the unconfigured ONT."                       "The RTD after ranging."                       #"The password reported by the ONT."                       ""                       ""                       0"This attribute identifies the LOID of the ONT."                       9"This attribute identifies the LOID password of the ONT."                       0"This attribute identifies the type of the ONT."                       3"This attribute identifies the version of the ONT."                       "Configure SCB PORTID table."                       ""                       ""                       !"ETH SWITCH PROTECT STATE table."                       ""                       "0:DISABLE 1:ENABLE"                           l"This alarm is used to notify the managed system when a
             failure has been detected or cleared." "G.984.4 Section 9.1.1"                     8"An entry in the ONT equipment alarm information table."                       �"It is used to Indicate a functional failure on an internal interface.
             When this is true(1) the failure exists; When false(2), the failure is
             not exist." "G.984.4 Section 9.1.1"                     �"Indicates whether the occurence of zxGponOntEquipmentAlarm alarm
             should result in NE generated by the agent layer. When this is false(2) 
             it should be generated; When true(1), not generated." "G.984.4 Section 9.1.1"                     �"It is used to Indicate Loss of external power.
             When this is true(1) the failure exists; When false(2), the failure is
             not exist." "G.984.4 Section 9.1.1"                     �"Indicates whether the occurence of zxGponOntPoweringAlarm alarm
             should result in NE generated by the agent layer. When this is false(2) 
             it should be generated; When true(1), not generated." "G.984.4 Section 9.1.1"                     �"It is used to Indicate Battery is provisioned but missing.
             When this is true(1) the failure exists; When false(2), the failure is
             not exist." "G.984.4 Section 9.1.1"                     �"Indicates whether the occurence of zxGponOntBatteryMissing alarm
             should result in NE generated by the agent layer. When this is false(2) 
             it should be generated; When true(1), not generated." "G.984.4 Section 9.1.1"                     �"It is used to Indicate Battery is provisioned and present but cannot recharge.
             When this is true(1) the failure exists; When false(2), the failure is
             not exist." "G.984.4 Section 9.1.1"                     �"Indicates whether the occurence of zxGponOntBatteryFailure alarm
             should result in NE generated by the agent layer. When this is false(2) 
             it should be generated; When true(1), not generated." "G.984.4 Section 9.1.1"                     �"It is used to Indicate battery is provisioned and present but its voltage is too low.
             When this is true(1) the failure exists; When false(2), the failure is
             not exist." "G.984.4 Section 9.1.1"                     �"Indicates whether the occurence of zxGponOntBatteryLow alarm
             should result in NE generated by the agent layer. When this is false(2) 
             it should be generated; When true(1), not generated." "G.984.4 Section 9.1.1"                     �"It is used to Indicate Applies if the ONT is supported with detection such as door or box open.
             When this is true(1) the failure exists; When false(2), the failure is
             not exist." "G.984.4 Section 9.1.1"                     �"Indicates whether the occurence of zxGponOntPhysicalIntrusionAlarm alarm
             should result in NE generated by the agent layer. When this is false(2) 
             it should be generated; When true(1), not generated." "G.984.4 Section 9.1.1"                     �"It is used to Indicate ONT has failed autonomous self test.
             When this is true(1) the failure exists; When false(2), the failure is
             not exist." "G.984.4 Section 9.1.1"                     �"Indicates whether the occurence of zxGponOntONTSelfTestFailure alarm
             should result in NE generated by the agent layer. When this is false(2) 
             it should be generated; When true(1), not generated." "G.984.4 Section 9.1.1"                     "Acts the ONT table." "G.984.4 Section 9.1.1"                     ."An entry in the ONT equipment Actions table."                       "It is used to Reboot the ONT." "G.984.4 Section 9.1.1"                     L"It is used to initiate an ONT self test. Test outcome is 'Pass' or 'Fail'." "G.984.4 Section 9.1.1"                    �"It is used to synchronize the start time of all Monitoring managed entities
             of the ONT with the reference time of the OLT and to reset the registers of 
             the Monitoring managed entities. The effect of this action is that all counters 
             of all Monitoring managed entities are set to 0x00 and restart counting. 
             Also, the value of the Interval End Time attribute of the Monitoring managed 
             entities is set to 0x00 and restarts counting." "G.984.4 Section 9.1.1"                    V"Reset the MIB data sync attributes to 0x00 and reset the MIB of the ONT to its default
             state. This default MIB consists of one instance of the ONT(ONTB)-PON managed entity, one 
             instance of the ONT Data managed entity, two instances of the Software Image managed 
             entity, zero or more instances of the Subscriber Line Cardholder managed entity, zero 
             or more instances of the PON IF Line Cardholder, and zero or more instances of the 
             Priority QueueG-PON(B-PON) managed entity (for the priority queues that reside in the ONT)." "G.983.2 Section 7.1.2"                     #"Test outcome is 'Pass' or 'Fail'." "G.984.4 Section 9.1.1"                             >"The performance alarm threshold profile table of interfaces."                      8"An entry in zxGponOltPerfAlmProfileConfTable.
            When a manager wants to create or modify an olt performance 
            alarm threshold item,it must comply with the multi-variables 
            usage rule that all the mib variables related to same 
            fuction must be in one snmp set operation, the variables have
            only one type: mandatory.
            
            Mandatory variables must be in the one snmp set operation.
                   
            To create an olt performance alarm threshold item on
            different level, alarm threshold ,restore threshold and 
            zxGponOltAlmPrfRowStatus should be in one snmp set operation.
            The alarm threshold and restore threshold variables in the 
            one snmp set operationshould be on same level.
            Such as:
            zxGponOltRiseAlmThresh and zxGponOltRiseAlmClrThresh,
            zxGponOltRiseWarnThresh and zxGponOltRiseWarnClrThresh,
            zxGponOltFallWarnThresh and zxGponOltFallWarnClrThresh,
            zxGponOltFallAlmThresh and zxGponOltFallAlmClrThresh.
            
            To modify an olt performance alarm threshold item on
            different level,alarm threshold and restore threshold
            should be also in the one snmp set 
            operation regardless of modifying alarm or restore threshold 
            value alone.
            The alarm threshold and restore threshold variables in the 
            one snmp set operationshould be on same level.
            Such as:
            zxGponOltRiseAlmThresh and zxGponOltRiseAlmClrThresh,
            zxGponOltRiseWarnThresh and zxGponOltRiseWarnClrThresh,
            zxGponOltFallWarnThresh and zxGponOltFallWarnClrThresh,
            zxGponOltFallAlmThresh and zxGponOltFallAlmClrThresh.
            
            To remove an olt performance alarm threshold item, only 
            zxGponOltAlmPrfRowStatus should be set to destroy(6) while all 
            levels of this onu performance alarm threshold item will be 
            removed."                       "The profile name."                       1"The object identifier of performance variables."                       !"The threshold for rising alarm."                       )"The threshold for rising alarm restore."                       #"The threshold for rising warning."                       +"The threshold for rising warning restore."                       $"The threshold for falling warning."                       ,"The threshold for falling warning restore."                       ""The threshold for falling alarm."                       *"The threshold for falling alarm restore."                       4"The threshold used flag for falling alarm restore."                      �"The status of this conceptual row. 
            
             The supported actions of this conceptual row only include:
            'createAndGo' and 'destroy'.
             
             To create a row in this table, a manager must
             set this object to createAndGo(4).
             
             To delete a row in this table, a manager must
             set this object to destroy(6).
             
             To query this object, always return 1."                       W"The performance alarm threshold profile applying table of 
              interfaces."                      �" An entry in zxGponOltPerfAlmPrfApplyTable.
            When a manager wants to apply an olt performance alarm 
            profile to specificed olt interface,it must comply with 
            the multi-variables usage rule that all the mib variables 
            related to same fuction must be in one snmp set operation, 
            the variables have only one type: mandatory.
            
            Mandatory variables must be in the one snmp set operation.
                   
            To apply an olt performance alarm profile to specificed olt 
            interface, zxGponOltPerfAlmProfile and 
            zxGponOltAlmPrfApplyRowStatus should be in the one snmp set 
            operation.
            To unapply an olt performance alarm profile to specificed olt
            interface, only zxGponOltAlmPrfApplyRowStatus should be set to 
            destroy(6)."                       *"The performance alarm threshold profile."                      �"The status of this conceptual row. 
              
             The supported actions of this conceptual row only include:
             'createAndGo' and 'destroy'.

             To create a row in this table, a manager must
             set this object to createAndGo(4).
            
             To delete a row in this table, a manager must
             set this object to destroy(6).
             
             To query this object, always return 1."                       >"The performance alarm threshold profile table of interfaces."                      G"An entry in zxGponOntPerfAlmProfileConfTable.
            When a manager wants to create or modify an onu performance 
            alarm threshold item,it must comply with the multi-variables 
            usage rule that all the mib variables related to same 
            fuction must be in one snmp set operation, the variables have
            only one type: mandatory.
            
            Mandatory variables must be in the one snmp set operation.
                   
            To create an onu performance alarm threshold item on
            different level, alarm threshold ,restore threshold and 
            zxGponOntAlmPrfRowStatus should be in one snmp set operation.
            The alarm threshold and restore threshold variables in the 
            one snmp set operationshould be on same level.
            Such as:
            zxGponOntRiseAlmThresh and zxGponOntRiseAlmClrThresh,
            zxGponOntRiseWarnThresh and zxGponOntRiseWarnClrThresh,
            zxGponOntFallWarnThresh and zxGponOntFallWarnClrThresh,
            zxGponOntFallAlmThresh and zxGponOntFallAlmClrThresh.
                          
            To modify an onu performance alarm threshold item on
            different level,alarm threshold and restore threshold
            should be also in the one snmp set 
            operation regardless of modifying alarm or restore threshold 
            value alone.
            The alarm threshold and restore threshold variables in the 
            one snmp set operationshould be on same level.
            Such as:
            zxGponOntRiseAlmThresh and zxGponOntRiseAlmClrThresh,
            zxGponOntRiseWarnThresh and zxGponOntRiseWarnClrThresh,
            zxGponOntFallWarnThresh and zxGponOntFallWarnClrThresh,
            zxGponOntFallAlmThresh and zxGponOntlFallAlmClrThresh.
            
            To remove an onu performance alarm threshold item, only 
            zxGponOntAlmPrfRowStatus should be set to destroy(6) while all 
            levels of this onu performance alarm threshold item will be 
            removed."                       "The profile name."                       1"The object identifier of performance variables."                       !"The threshold for rising alarm."                       )"The threshold for rising alarm restore."                       #"The threshold for rising warning."                       +"The threshold for rising warning restore."                       $"The threshold for falling warning."                       ,"The threshold for falling warning restore."                       ""The threshold for falling alarm."                       *"The threshold for falling alarm restore."                       4"The threshold used flag for falling alarm restore."                      �"The status of this conceptual row. 
             
             The supported actions of this conceptual row only include:
             'createAndGo' and 'destroy'.

             To create a row in this table, a manager must
             set this object to createAndGo(4).
             
             To delete a row in this table, a manager must
             set this object to destroy(6). 
             
             To query this object, always return 1."                       V"The performance alarm threshold profile 
             applying table of interfaces."                      �"An entry in zxGponOntPerfAlmPrfApplyTable.
            When a manager wants to apply an onu performance alarm 
            profile to specificed onu interface,it must comply with 
            the multi-variables usage rule that all the mib variables 
            related to same fuction must be in one snmp set operation, 
            the variables have only one type: mandatory.
            
            Mandatory variables must be in the one snmp set operation.
                   
            To apply an onu performance alarm profile to specificed onu 
            interface, zxGponOntPerfAlmProfile and 
            zxGponOntAlmPrfApplyRowStatus should be in the one snmp set 
            operation.
            
            To unapply an onu performance alarm profile to specificed onu
            interface, only zxGponOltAlmPrfApplyRowStatus should be set to 
            destroy(6)."                       *"The performance alarm threshold profile."                      �"The status of this conceptual row.
             
             The supported actions of this conceptual row only include:
             'createAndGo' and 'destroy'.

             To create a row in this table, a manager must
             set this object to createAndGo(4).
            
             To delete a row in this table, a manager must
             set this object to destroy(6). 
             
             To query this object, always return 1."                       R"The performance alarm threshold profile 
             list table of interfaces."                       U"The performance alarm threshold profile 
            applying entry of interfaces."                       /"The performance alarm threshold profile name."                      �"The status of this conceptual row.
             
             The supported actions of this conceptual row only include:
             'createAndGo' and 'destroy'.

             To create a row in this table, a manager must
             set this object to createAndGo(4).
            
             To delete a row in this table, a manager must
             set this object to destroy(6). 
             
             To query this object, always return 1."                       R"The performance alarm threshold profile 
             list table of interfaces."                       U"The performance alarm threshold profile 
            applying entry of interfaces."                       /"The performance alarm threshold profile name."                      �"The status of this conceptual row.
             
             The supported actions of this conceptual row only include:
             'createAndGo' and 'destroy'.

             To create a row in this table, a manager must
             set this object to createAndGo(4).
            
             To delete a row in this table, a manager must
             set this object to destroy(6). 
             
             To query this object, always return 1."                      �"Bandwidth allocation for one T-CONT in some ONT.
             these bandwidths as following:
             fixed bandwidth        ab. FBW
             assured bandwidth      ab. ABW
             non-assured bandwidth  ab. NABW
             best effort bandwidth  ab. BEBW
             additional bandwidth   ab. AddBW
             guaranteed bandwidth   ab. GBW
             maximum bandwidth      ab. MaxBW
             minimum bandwidth      ab. MinBW
             AddBW = NABW + BEBW
             GBW   = FBW  + ABW
             MaxBW = GBW  + AddBW
             MinBW = FBW?
             NABW, BEBW, FBW and ABWare able to participate in DBA
             "                       *"An entry in the Bandwidth profile table."                       x"An arbitrary(unique) integer for identifiying an entry
             in the line card, from 1 to M, M is equal to 512."                       �"The Bandwidth Profile Name.It may be created/read/written/modified.
             Writing or modifing can be done all the time."                      �"The Fixed Bandwidth is entirely reserved and cyclically allocated in order
             to achieve a low traffic transfer delay.The unit of kbps.It may be created
             /read/written/modified. Guaranteed Bandwidth is the summation of Assured 
             Bandwidth and Fixed Bandwidth. Writing or modifing can be done when the 
             entry SHOULD NOT be used by any other entry."                      "The Assured Bandwidth is bandwidth that is always available to the ONU/ONT if
             the T-CONT buffer is expected to have traffic to transmit. If the T-CONT buffer 
             does not have traffic to transmit, this bandwidth may be used by other T-CONTs.
             The unit of kbps. It may be created/read/written/modified. Guaranteed Bandwidth
             is the summation of Assured Bandwidth and Fixed Bandwidth. Writing or modifing 
             can be done when the entry SHOULD NOT be used by any other entry."                       �"The Maximum Bandwidth.The unit of kbps.It may be created/read/written/modified. 
             Writing or modifing can be done when the entry SHOULD NOT be used by any other entry."                      P"Type 1 is characterized by Fixed bandwidth only;
             Type 2 is characterized by Assured bandwidth only;
             Type 3 has Assured bandwidth and Non-assured bandwidth;
             Type 4 has Best-effort bandwidth only and does not have any Guaranteed bandwidth;
             Type 5 is the super set of all of types."                       2"Indicate the reference count of this BW profile."                       �"The control that allows creation and deletion of entries. Deleting can be done
             when the entry SHOULD NOT be used by any other entry."                       �"Rate configuration for one traffic.
             As following:
             sustainable information rate      ab. SIR
             peak information rate             ab. PIR
             "                       ("An entry in the Traffic profile table."                       x"An arbitrary(unique) integer for identifiying an entry
             in the line card, from 1 to M, M is equal to 512."                       "The Traffic Profile Name.It may be created/read/written/modified.
             Writing or modifing can be done all the time."                       �"The SIR is sustainable rate of the traffic. Writing or modifing can be done when the 
             entry SHOULD NOT be used by any other entry."                       �"The PIR is peak rate of the traffic. Writing or modifing can be done when the 
             entry SHOULD NOT be used by any other entry."                       &"The reference count of this profile."                       �"The control that allows creation and deletion of entries. Deleting can be done
             when the entry SHOULD NOT be used by any other entry."                       n"This attribute specifies committed block size. 
             The value 0 accepts the system default policy."                       i"This attribute specifies peak block size. 
             The value 0 accepts the system default policy."                       K"It represents threshold values for the performance monitoring parameters." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                     &"It provide a Threshold Data pointer." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                     }"An arbitrary(unique) integer for identifiying an entry in the Threshold Data,
             from 1 to M, M is equal to 128."                       �"The Threshold Data Templet Name.It may be created/read/written/modified.
             Writing or modifing can be done all the time."                      "It provides the associated threshold value for the 1st thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 2nd thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 3rd thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 4th thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 5th thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 6th thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 7st thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 8th thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 9th thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 10th thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 11th thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 12th thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 13th thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                    "It provides the associated threshold value for the 14th thresholded counter in the
             History Data type managed entity. It may be created/read/written/modified.Writing or 
             modifing can be done when the entry SHOULD NOT be used by any other entry." K"G.984.4 Section 9.1.8 Threshold Data 1 and Section 9.1.9 Threshold Data 2"                     &"The reference count of this profile." ""                     �"The control that allows creation and deletion of entries. Deleting can be done
             when the entry SHOULD NOT be used by any other entry."                           "" 	"G.984.3"                     ""                       ""                           "" 	"G.984.3"                     ""                       ""                       ""                       F"The definition size of description does not include the termination."                       "Reserved. use in the future."                       0"SN configed by Olt for the purpose of register"                       ""                      �"Password configed by Olt for the purpose of registration.
             This attribute is valid when zxGponOntRegMode is following value:
                     regModePw(2)--10 Bytes,
                     regModeSnPlusPw(3)--10 Bytes,
                     regModeTefPw(7)--7 Bytes(hex),
                     regModeSnPlusTefPw(8)--7 Bytes(hex),
                     regModeLoidPlusPw(10)--12 Bytes
            "                       ""                       ""                       ""                       ""                      �"This attribute indicates the onu registration mode.
             regModeSn: GPON/XGPON -- G.984 G.987 -- 8bytes
             regModePw: GPON -- G.984 -- 10Bytes
             regModeSnPlusPw: GPON -- G.984 -- 8+10Bytes
             regModeRegisterId: GPON/XGPON -- G.984 G.987 -- 36Bytes(XPON)
             regModeRegisterIdPlus8021x: XGPON -- G.987 -- 36Bytes
             regModeRegisterIdPlusMutual: XGPON -- G.987 -- 36Bytes
             regModeTefPw: GPON--Telefonica Password format--7Bytes(hex,fixed)
             regModeSnPlusTefPw: GPON--Telefonica SN+Password format
                                       --8+7Bytes(hex,fixed)             
             regModeLoid: GPON/XGPON -- CTC format -- 24Bytes
             regModeLoidPlusPw: GPON/XGPON -- CTC format -- 24+12Bytes
             The attribute is also used to define the registration mode
             in zxGponOnuRegistrationInfo."                      �"ID configed by Olt for the purpose of register.
             This attribute is valid when zxGponOntRegMode is following value:
                regModeRegisterId(4) --36 Bytes,
                regModeRegisterIdPlus8021x(5)--36 Bytes,
                regModeRegisterIdPlusMutual(6)--36 Bytes,
                regModeLoid(9)--24 Bytes,
                regModeLoidPlusPw(10)--24 Bytes
                "                       �"In DBA operations, there are three modes: SR(Status Reporting)-DBA, 
           NSR(Non Status Reporting)-DBA and hybrid-DBA in every T-CONT."                       �"if onu registration-mode is 'regModePwAutoBindSn' , when requires to update onu's  serial number 
           then will execute this action for updating. "                       �"This object indicates the onu omci channel bandwidth profile,
             value '0' indicates using the system default bandwidth."                       �"Disable Option: Moves The ONU To The Emergency Stop State. 
             The ONU Cannot Respond To Upstream Bandwidth Allocations.
             Enable Option: Moves The ONU To The Standby State. 
             The ONU Restarts The Activation Process"                      ("This variable indicates the ONU authentication successful 
            forwarding actions.The zxGponOntCustomAuthPassControl is a bitmap
            represented as a sum, therefore, it can represent multiple 
            forwarding action.The various bit positions are:
                     1     CNC mode  1:enable,0:disable
                     2     to define      
                     4     to define      
                   ... 
            note: if all bit is 0,OLT will not report zxGponOntAuthPass 
            notification to NMS."                       8"This attribute enables the ONU upstream FEC function ." "G.984.3.13"                    �"This attribute indicates whether the ONU need to be bound SN.
             When zxGponOntRegMode is the following values, then this 
             attribute is valid.
                     regModeRegisterId(4)
                     regModeRegisterIdPlus8021x(5)
                     regModeRegisterIdPlusMutual(6)
                     regModeTefPw(7)                     
                     regModeLoid(9)
                     regModeLoidPlusPw(10) 
            "                       6"This attribute indicates the ONU ToD message status." "G.988 section 9.12.2"                     "" 	"G.984.3"                     ""                       ""                       ""                      "
            Unknown(DyingGasp),
            Initial-state(O1),
            Standby-state(O2),
            Power-Setup-state(O3),
            Serial-Number-state(O4),
            Ranging-state(O5),
            Operation-state(O6),
            POPUP-state(O7)
            "                       ""                       g"ONU last online time.The format is yyyy-mm-dd HH:MM:SS.
            For example,2010-12-30 13:06:30."                       h"ONU last offline time.The format is yyyy-mm-dd HH:MM:SS.
            For example,2010-12-30 13:06:30."                      �"ONU last offine reason.
             1 : unknown reason
             2 : OLT LOS 
             3 : ONU LOS 
             4 : ONU LOF 
             5 : ONU SF 
             6 : ONU LOA 
             7 : ONU LOAM 
             8 : ONU authorization failed
             9 : ONU loss of power
             10 : ONU deactivation succeeded
             11 : ONU deactivation failed
             12 : ONU reboot
             13 : ONU shutdown"                       "" 	"G.984.3"                     ""                       ""                       ""                       "Reserved. used in the future."                       ""                       ""                       ""                       "Reserved. used in the future."                       ""                       "" 	"G.984.3"                     ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ."OLT sent to ONU correct non-idle GEM frames."                       *"OLT sent to ONU correct idle GEM frames."                       "OLT sent to ONU OMCI frames."                       "OLT sent to ONU Ploam frames."                       %"OLT received from ONU Ploam frames."                       /"The real time statistics of lofi alarm times."                       ="Errored bytes which have been corrected by FEC on ONU side."                       A"Errored codewords which have been corrected by FEC on ONU side."                       D"Errored codewords which haven't been corrected by FEC on ONU side."                       ("Received codewords by FEC on ONU side."                       ""Errored bits by BIP on ONU side."                       %"Errored packets by CRC on ONU side."                       "" 	"G.984.3"                     ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       ""                       9"OLT sent to ONU historical correct non-idle GEM frames."                       5"OLT sent to ONU historical correct idle GEM frames."                       )"OLT sent to ONU historical OMCI frames."                       *"OLT sent to ONU historical Ploam frames."                       0"OLT received from ONU historical Ploam frames."                       0"The historical statistics of LOFi alarm times."                       "" ""                     ""                       c"An arbitrary(unique) integer for identifiying an entry
             in the table, from 1 to 256."                       ""                        "1:cos 2:vlan 3:cos+vlan 4: 1:1"                       ""                       "" ""                     ""                       @"It is equal to the 'zxGponGemPortIdx' of 'zxGponGemPortTable'."                       ;"a cos value(0..7) referenced by a gemport mapped to a Bp."                       A"a vlanid(1..4094) value referenced by a gemport mapped to a Bp."                       ""                       "" 	"G.984.3"                     ""                       ""an vport in an onu, from 1 to M."                       ""                       ?"According to statistic mode, it menas a gemport or a vlan id."                       ""                       ""                       ""                       ""                       ""                       ""                           �"This table represents ONU's traffic management unit information including T-CONT and
            user bandwidth management unit."                       /"It is entry in the zxOnuTrafficMgmtUnitTable."                       a"An arbitrary(unique) integer for identifiying an entry
             in the table, from 1 to N."                       0"The white space can't be included in the name." "N/A"                     I"This attribute is the index of templet used by T-CONT BW configuration." "N/A"                     D"This attribute is the allocid of tcont,value range is [256..4095]." "N/A"                     5"The number of portId using this BW management unit." "N/A"                     3"The number of flow using this BW management unit." "N/A"                     9"The integer in binary mode indicates the used COS(0-3)." "N/A"                     /"This entry can be create modified and delete." "N/A"                    �"This attribute specifies the DBA gap mode. 
             For GPON ONU,the explanations of these modes as follows:
               mode1 is one frame, 
               mode2 is two frames, 
               mode3 is four frames, 
               mode4 is eight frames.
             For example,'two frames' indicates that T-CONT will perform DBA 
             in a gap of two data frames.              
             "                       0"This table represents ONU side  configuration."                       ."It is entry in the table zxGponGemPortTable."                       s"An arbitrary(unique) integer for identifiying an entry
             in the table. It is the virtual portid index"                       m"This attribute specifies the name of the GEM port.
         The white space can't be included in the name." ""                     \"This attribute specifies the type of the GEM port. Only 'unicast' is supported at present."                       S"It is equal to the 'zxOnuTrafficMgmtUnitTcontIdx' of 'zxOnuTrafficMgmtUnitTable'."                       a"This attribute specifies the type of the direction of GEM port. Default value is 'bidirection'."                       3"The GEM PORT upstream traffic descriptor profile."                       5"The GEM PORT downstream traffic descriptor profile."                        "portid of gemport([65..1023])."                       "The default COS."                       /"This entry can be create modified and delete." "N/A"                     "Active/deactive GEM Port."                       "The queue map id."                       "The queue map id."                       ="This table represents ONU gemport limit rate configuration."                       7"It is entry in the table zxGponGemPortLimitRateTable."                       3"The GEM PORT upstream traffic descriptor profile."                       5"The GEM PORT downstream traffic descriptor profile."                           1"The current performance data table of GPON OLT."                       5"An entry in the OLT current performance data table."                       :"Performance of upstream correct none idle gemport frames"                       5"Performance of upstream correct idle gemport frames"                       0"Performance of upstream errored gemport frames"                       /"Performance of upstream gemport payload bytes"                       1"Performance of upstream correct ethernet frames"                       1"Performance of upstream errored ethernet frames"                        "Performance of ERR alarm times"                       -"Performance of remote onu error alarm times"                       2"Performance of downstream valid ethernet packets"                       *"Performance of downstream ploam messages"                       0"Performance of upstream errored ploam messages"                       ("Performance of upstream ploam messages"                       /"Error bytes which have been corrected by FEC."                       3"Error codewords which have been corrected by FEC."                       6"Error codewords which haven't been corrected by FEC."                       "Received codewords by FEC."                       "PON Port BIP Corr Bits."                       "Error packets by CRC."                      �"The attribute indicates that the supports of GPON OLT performance,
            each bit from left to right represents the support of performance 
            statistic from top to bottom in this MIB table, value 1 represents 
            support and value 0 is not support. 
            And the supports of C15M,C1D,H15M,H1D performance statistics 
            decided by zxGponOltPerfCapability also."                       d"Clear all the current performance 
            variables.When get this variable, always return 1."                       <"The current 15 minutes performance data table of GPON OLT."                       @"An entry in the OLT current 15 minutes performance data table."                       k"Number of seconds that have elapsed since the beginning
             of the current 15 minutes interval."                       Y"The current 15 minutes interval upstream correct none 
            idle gemport frames"                       T"The current 15 minutes interval upstream correct
             idle gemport frames"                       O"The current 15 minutes interval upstream
             errored gemport frames"                       N"The current 15 minutes interval upstream gemport 
            payload bytes"                       P"The current 15 minutes interval upstream correct 
            ethernet frames"                       P"The current 15 minutes interval upstream errored 
            ethernet frames"                       R"The current 15 minutes interval ERR alarm times
             of this interface."                       _"The current 15 minutes interval remote onu error
             alarm times of this interface."                       R"The current 15 minutes interval  downstream 
            valid ethernet packets"                       J"The current 15 minutes interval  downstream
             ploam messages"                       P"The current 15 minutes interval upstream 
             errored ploam messages"                       M"The current 15 minutes interval total
             upstream ploam messages"                       o"The current 15 minutes interval error bytes 
            which have been corrected by FEC of this interface."                       s"The current 15 minutes interval error codewords
             which have been corrected by FEC of this interface."                       v"The current 15 minutes interval error codewords
             which haven't been corrected by FEC of this interface."                       \"The current 15 minutes interval received codewords
             by FEC of this interface."                       M"The current 15 minutes interval PON port BIP
             corrected Bits.."                       7"The current 15 minutes interval error packets by CRC."                       o"Clear all the current 15-minutes performance variables.
            When get this variable, always return 1."                       7"The current 1 day performance data table of GPON OLT."                       ;"An entry in the OLT current 1 day performance data table."                       f"Number of seconds that have elapsed since the beginning
             of the current 1 day interval."                       T"The current 1 day interval upstream correct none 
            idle gemport frames"                       O"The current 1 day interval upstream correct
             idle gemport frames"                       J"The current 1 day interval upstream
             errored gemport frames"                       I"The current 1 day interval upstream gemport 
            payload bytes"                       K"The current 1 day interval upstream correct 
            ethernet frames"                       K"The current 1 day interval upstream errored 
            ethernet frames"                       M"The current 1 day interval ERR alarm times
             of this interface."                       Z"The current 1 day interval remote onu error
             alarm times of this interface."                       M"The current 1 day interval  downstream 
            valid ethernet packets"                       E"The current 1 day interval  downstream
             ploam messages"                       J"The current 1 day interval errored 
            upstream ploam messages"                       G"The current 1 day interval total
            upstream ploam messages"                       j"The current 1 day interval error bytes 
            which have been corrected by FEC of this interface."                       n"The current 1 day interval error codewords
             which have been corrected by FEC of this interface."                       q"The current 1 day interval error codewords
             which haven't been corrected by FEC of this interface."                       W"The current 1 day interval received codewords
             by FEC of this interface."                       H"The current 1 day interval PON port BIP
             corrected Bits.."                       2"The current 1 day interval error packets by CRC."                       j"Clear all the current 1 day performance variables.
            When get this variable, always return 1."                       ="The 15 minutes interval performance data table of GPON OLT."                       A"An entry in the OLT 15 minutes interval performance data table."                       �"Performance Data Interval.
              
              Interval 1 is the the most recent previous interval; 
              Interval 96 is 24 hours ago.  
              Intervals from 2 to 96 are optional."                       -"15min performace data interval create time."                       Q"The 15 minutes interval upstream correct none 
            idle gemport frames"                       L"The 15 minutes interval upstream correct
             idle gemport frames"                       G"The 15 minutes interval upstream
             errored gemport frames"                       F"The 15 minutes interval upstream gemport 
            payload bytes"                       H"The 15 minutes interval upstream correct 
            ethernet frames"                       H"The 15 minutes interval upstream errored 
            ethernet frames"                       J"The 15 minutes interval ERR alarm times
             of this interface."                       X"The 15 minutes interval remote onu error alarm 
             times of this interface."                       J"The 15 minutes interval  downstream 
            valid ethernet packets"                       B"The 15 minutes interval  downstream
             ploam messages"                       G"The 15 minutes interval errored upstream
             ploam messages"                       E"The 15 minutes interval total upstream
             ploam messages"                       h"The 15 minutes interval error bytes which have 
             been corrected by FEC of this interface."                       k"The 15 minutes interval error codewords which 
            have been corrected by FEC of this interface."                       n"The 15 minutes interval error codewords which 
            haven't been corrected by FEC of this interface."                       T"The 15 minutes interval received codewords by 
            FEC of this interface."                       E"The 15 minutes interval PON port BIP
             corrected Bits.."                       /"The 15 minutes interval error packets by CRC."                       �"Performance data valid flag. 
              true(1) means valid.  
              false(2) means invalid and the performace data is useless."                       :"The 1 day interval performance data table of interfaces."                       :"The 1 day interval performance data entry of interfaces."                       �"Performance Data 
               
               Interval  1 is the the most recent previous interval
               Interval 7 is 1 week ago.  
               Intervals from 2 to 7 are optional."                       -"1 day performace data interval create time."                       L"The 1 day interval upstream correct none 
            idle gemport frames"                       G"The 1 day interval upstream correct
             idle gemport frames"                       B"The 1 day interval upstream
             errored gemport frames"                       A"The 1 day interval upstream gemport 
            payload bytes"                       C"The 1 day interval upstream correct 
            ethernet frames"                       C"The 1 day interval upstream errored 
            ethernet frames"                       E"The 1 day interval ERR alarm times
             of this interface."                       R"The 1 day interval remote onu error
             alarm times of this interface."                       E"The 1 day interval  downstream 
            valid ethernet packets"                       ="The 1 day interval  downstream
             ploam messages"                       B"The 1 day interval errored upstream
             ploam messages"                       @"The 1 day interval total upstream
             ploam messages"                       b"The 1 day interval error bytes 
            which have been corrected by FEC of this interface."                       f"The 1 day interval error codewords
             which have been corrected by FEC of this interface."                       i"The 1 day interval error codewords
             which haven't been corrected by FEC of this interface."                       O"The 1 day interval received codewords
             by FEC of this interface."                       @"The 1 day interval PON port BIP
             corrected Bits.."                       *"The 1 day interval error packets by CRC."                       �"Performance data valid flag. 
              true(1) means valid.  
              false(2) means invalid and the performace data is useless."                           -"The GPON ONU current performance data table"                       6"The entry in the ONU current performance data table."                       ;"The total number of correct non-idle GEM frames upstream."                       ;"The total number of payload bytes of GEM frames upstream."                       7"The total number of correct ethernet frames upstream."                       5"The total number of error ethernet frames upstream."                       +"The total number of OMCI frames upstream."                       6"The total number of bip errors detected on OLT side."                       6"The total number of bip errors detected on ONU side."                       !"The total number of lost brust."                       *"The total number of bip errors upstream."                       ."The total number of corrected bits upstream."                       *"The total number of not corrected words."                       ."OLT sent to ONU correct non-idle GEM frames."                       "OLT sent to ONU OMCI frames."                       "OLT sent to ONU Ploam frames."                       %"OLT received from ONU Ploam frames."                       /"The real time statistics of lofi alarm times."                       /"Error bytes which have been corrected by FEC."                       3"Error codewords which have been corrected by FEC."                       6"Error codewords which haven't been corrected by FEC."                       "Received codewords by FEC."                       "Error packets by CRC."                      �"The attribute indicates that the supports of GPON ONU performance,
            each bit from left to right represents the support of performance 
            statistic from top to bottom in this MIB table, value 1 represents 
            support and value 0 is not support.
            And the supports of C15M,C1D,H15M,H1D performance statistics 
            decided by zxGponOnuPerfCapability also."                       d"Clear all the current performance variables.
            When get this variable, always return 1."                       J"The current 15 minutes performance 
            data table of GPON ONU."                       N"An entry in the ONU current 15 minutes 
            performance data table."                       k"Number of seconds that have elapsed since the 
            beginning of the current 15 minutes interval."                       U"The current 15 minutes interval correct non-idle
             GEM frames upstream."                       U"The current 15 minutes interval payload bytes of
             GEM frames upstream."                       Q"The current 15 minutes interval correct ethernet
             frames upstream."                       O"The current 15 minutes interval error ethernet
             frames upstream."                       E"The current 15 minutes interval OMCI frames
             upstream."                       P"The current 15 minutes interval bip errors
             detected on OLT side."                       P"The current 15 minutes interval bip errors
             detected on ONU side."                       -"The current 15 minutes interval lost brust."                       D"The current 15 minutes interval bip errors
             upstream."                       H"The current 15 minutes interval corrected
             bits upstream."                       D"The current 15 minutes interval not
             corrected words."                       \"The current 15 minutes interval OLT sent to 
            ONU correct non-idle GEM frames."                       L"The current 15 minutes interval
             OLT sent to ONU OMCI frames."                       M"The current 15 minutes interval
             OLT sent to ONU Ploam frames."                       S"The current 15 minutes interval
             OLT received from ONU Ploam frames."                       A"The current 15 minutes interval
             lofi alarm times."                       ]"The current 15 minutes interval error
             bytes which have been corrected by FEC."                       a"The current 15 minutes interval error 
            codewords which have been corrected by FEC."                       d"The current 15 minutes interval error codewords
             which haven't been corrected by FEC."                       J"The current 15 minutes interval received
             codewords by FEC."                       E"The current 15 minutes interval error
             packets by CRC."                       o"Clear all the current 15-minutes performance variables.
            When get this variable, always return 1."                       E"The current 1 day performance 
            data table of GPON ONU."                       I"An entry in the ONU current 1 day 
            performance data table."                       f"Number of seconds that have elapsed since the 
            beginning of the current 1 day interval."                       P"The current 1 day interval correct non-idle
             GEM frames upstream."                       P"The current 1 day interval payload bytes of
             GEM frames upstream."                       L"The current 1 day interval correct ethernet
             frames upstream."                       J"The current 1 day interval error ethernet
             frames upstream."                       @"The current 1 day interval OMCI frames
             upstream."                       K"The current 1 day interval bip errors
             detected on OLT side."                       K"The current 1 day interval bip errors
             detected on ONU side."                       ("The current 1 day interval lost brust."                       ?"The current 1 day interval bip errors
             upstream."                       C"The current 1 day interval corrected
             bits upstream."                       ?"The current 1 day interval not
             corrected words."                       W"The current 1 day interval OLT sent to 
            ONU correct non-idle GEM frames."                       G"The current 1 day interval
             OLT sent to ONU OMCI frames."                       H"The current 1 day interval
             OLT sent to ONU Ploam frames."                       N"The current 1 day interval
             OLT received from ONU Ploam frames."                       <"The current 1 day interval
             lofi alarm times."                       X"The current 1 day interval error
             bytes which have been corrected by FEC."                       \"The current 1 day interval error 
            codewords which have been corrected by FEC."                       _"The current 1 day interval error codewords
             which haven't been corrected by FEC."                       E"The current 1 day interval received
             codewords by FEC."                       @"The current 1 day interval error
             packets by CRC."                       j"Clear all the current 1 day performance variables.
            When get this variable, always return 1."                       ="The 15 minutes interval performance data table of GPON ONT."                       P"The entry in the ONU 15 minutes interval 
            performance data table."                       �"Performance Data.
              
              Interval 1 is the the most recent previous interval.
              Interval 96 is 24 hours ago.  
              Intervals from 2 to 96 are optional."                       ."15min performance data interval create time."                       M"The 15 minutes interval correct non-idle
             GEM frames upstream."                       M"The 15 minutes interval payload bytes of
             GEM frames upstream."                       I"The 15 minutes interval correct ethernet
             frames upstream."                       G"The 15 minutes interval error ethernet
             frames upstream."                       ="The 15 minutes interval OMCI frames
             upstream."                       H"The 15 minutes interval bip errors
             detected on OLT side."                       H"The 15 minutes interval bip errors
             detected on ONU side."                       %"The 15 minutes interval lost brust."                       <"The 15 minutes interval bip errors
             upstream."                       @"The 15 minutes interval corrected
             bits upstream."                       <"The 15 minutes interval not
             corrected words."                       T"The 15 minutes interval OLT sent to 
            ONU correct non-idle GEM frames."                       D"The 15 minutes interval
             OLT sent to ONU OMCI frames."                       E"The 15 minutes interval
             OLT sent to ONU Ploam frames."                       K"The 15 minutes interval
             OLT received from ONU Ploam frames."                       9"The 15 minutes interval
             lofi alarm times."                       U"The 15 minutes interval error
             bytes which have been corrected by FEC."                       Y"The 15 minutes interval error 
            codewords which have been corrected by FEC."                       \"The 15 minutes interval error codewords
             which haven't been corrected by FEC."                       B"The 15 minutes interval received
             codewords by FEC."                       ="The 15 minutes interval error
             packets by CRC."                       �"Performance data valid flag. 
              true(1) means valid.  
              false(2) means invalid and the performace data is useless."                       8"The 1 day interval performance data table of GPON ONT."                       K"The entry in the ONU 1 day interval 
            performance data table."                       �"Performance Data.
              
              Interval 1 is the the most recent previous interval.
              Interval 7 is 1 week ago.  
              Intervals from 2 to 7 are optional."                       1"The 1 day performace data interval create time."                       H"The 1 day interval correct non-idle
             GEM frames upstream."                       H"The 1 day interval payload bytes of
             GEM frames upstream."                       D"The 1 day interval correct ethernet
             frames upstream."                       B"The 1 day interval error ethernet
             frames upstream."                       8"The 1 day interval OMCI frames
             upstream."                       C"The 1 day interval bip errors
             detected on OLT side."                       C"The 1 day interval bip errors
             detected on ONU side."                        "The 1 day interval lost brust."                       7"The 1 day interval bip errors
             upstream."                       ;"The 1 day interval corrected
             bits upstream."                       7"The 1 day interval not
             corrected words."                       O"The 1 day interval OLT sent to 
            ONU correct non-idle GEM frames."                       ?"The 1 day interval
             OLT sent to ONU OMCI frames."                       @"The 1 day interval
             OLT sent to ONU Ploam frames."                       F"The 1 day interval
             OLT received from ONU Ploam frames."                       4"The 1 day interval
             lofi alarm times."                       P"The 1 day interval error
             bytes which have been corrected by FEC."                       T"The 1 day interval error 
            codewords which have been corrected by FEC."                       W"The 1 day interval error codewords
             which haven't been corrected by FEC."                       ="The 1 day interval received
             codewords by FEC."                       8"The 1 day interval error
             packets by CRC."                       �"Performance data valid flag. 
              true(1) means valid.  
              false(2) means invalid and the performace data is useless."                           2"The GPON GEM port current performance data table"                       ;"The entry in the GEM port current performance data table."                       b"The total number of octets received on the interface,
            including framing characters."                       �"The number of packets, delivered by this sub-layer to a
            higher (sub-)layer, which were not addressed to a multicast
            or broadcast address at this sub-layer.  This object is a
            64-bit version of ifInUcastPkts"                       �"The number of packets, delivered by this sub-layer to a
            higher (sub-)layer, which were addressed to a broadcast
            address at this sub-layer."                      "The number of packets, delivered by this sub-layer to a
            higher (sub-)layer, which were addressed to a multicast
            address at this sub-layer.  For a MAC layer protocol, this
            includes both Group and Functional addresses."                      0"The number of inbound packets which were chosen to be
            discarded even though no errors had been detected to prevent
            their being deliverable to a higher-layer protocol.  One
            possible reason for discarding such a packet could be to
            free up buffer space."                       j"The total number of octets transmitted out of the
            interface, including framing characters. "                       �"The total number of packets that higher-level protocols
            requested be transmitted, and which were not addressed to a
            multicast or broadcast address at this sub-layer, including
            those that were discarded or not sent."                       �"The total number of packets that higher-level protocols
            requested be transmitted, and which were addressed to a
            broadcast address at this sub-layer, including those that
            were discarded or not sent."                      J"The total number of packets that higher-level protocols
            requested be transmitted, and which were addressed to a
            multicast address at this sub-layer, including those that
            were discarded or not sent.  For a MAC layer protocol, this
            includes both Group and Functional addresses. "                      	"The number of outbound packets which were chosen to be
            discarded even though no errors had been detected to prevent
            their being transmitted.  One possible reason for discarding
            such a packet could be to free up buffer space."                       "Received bytes per second."                       "Peak rate of received octets."                       "Transmitted rate of octets."                       ""Peak rate of transmitted octets."                      �"The attribute indicates that the supports of GPON GEM port
             performance, each bit from left to right represents the support 
             of performance statistic from top to bottom in this MIB table, 
             value 1 represents support and value 0 is not support.
             And the supports of C15M,C1D,H15M,H1D performance statistics 
             decided by zxGponGemPortPerfCapability also."                       d"Clear all the current performance variables.
            When get this variable, always return 1."                      �"The status of this conceptual row. 
              
             The supported actions of this conceptual row only include:
             'createAndGo' and 'destroy'.

             To create a row in this table, a manager must
             set this object to createAndGo(4).
            
             To delete a row in this table, a manager must
             set this object to destroy(6).
             
             To query this object, always return 1."                           3"Enable/disable the interface GPON vport Statisic."                       4"It is entry in the table zxGponVportCurrPerfTable."                      �"The status of this conceptual row. 
              
             The supported actions of this conceptual row only include:
             'createAndGo' and 'destroy'.

             To create a row in this table, a manager must
             set this object to createAndGo(4).
            
             To delete a row in this table, a manager must
             set this object to destroy(6).
             
             To query this object, always return 1."                               ""                       ""                       ""                       ""                       "GPON trap event string."                       "GPON ONU Actual type"                       "The spoofing MAC of packets."                       "The spoofing IP of packets."                       �"A unique value, greater than zero, for each interface. 
                This value indicate This value identifies the interface
                which occurred IP/MAC spoofing."                      �"ONU registration information.
             This attribute is made up of registration mode and registration
             values. Commas are used to separate registration mode
             and registration values. A number is used to represent
             registration mode of the attribute. The number's value is 
             on the list of zxGponOntRegMode defined values. 
             Correspondingly, the registration values' formats are also
             defined in zxGponOntRegMode's description.
             
             The valid ONU registration information formats are as follows:
                 1,sn
                 2,password
                 3,sn,password
                 4,register Id
                 5,register Id,8021x
                 6,register Id,mutual
                 7,telefonica password
                 8,sn,telefonica password
                 9,loid
                 10,loid,password"                       &"ONU LOID authentication information."                      K"OLT LOS Reason                
                 allOnuDyingGasp:all online ONU under the PON port are 
                                 dying gasp.
                 fiberBroken:trunk or branch fiber is broken.
                 allOnuOffline:all ONU under the PON port are offline.
                 otherReason:other reasons."                       9"LOSi is Loss of signal for ONUi. Generate notification."                 y"LOSi is Loss of signal for ONUi.When the OLT receives 
            a valid optical signal from ONUi, Alarm is restored"                 �"LOFi is Loss of Frame of ONUi. Send 3 times 
            Deactivate_ONU-ID messages. Generate Loss_of_phy_layer_I 
            notification."                 r"LOFi is Loss of Frame of ONUi. When frame delineation 
            for ONUi is achieved in the operating state."                 A"DOWi is Drift of Window of ONUi. Send modified EqD to the ONUi."                 q"DOWi is Drift of Window of ONUi. When the OLT 
        receives the ONUi Transmission in the correct position."                 �"SFi is Signal Fail of ONUi. Send 3 times 
            Deactivate_ONU-ID messages. Generate Loss_of_phy_layer_I 
            notification."                 p"SFi is Signal Fail of ONUi.When the upstream 
            BER of ONUi becomes <10?y+1, this state is cleared."                 !"SDi is Signal Degraded of ONUi."                 q"SDi is Signal Degraded of ONUi. When the upstream 
        BER of ONUi becomes <10?X+1, this state is cleared."                 �"LCDAi is Loss of ATM channel delineation. 
            Send 3 times Deactivate_ONU-ID messages Generate
            Loss_of_phy_layer_I notification."                 e"LCDAi is Loss of ATM channel delineation. When 
            cell delineation for ONUi is achieved."                 �"LCDGi is Loss of GEM channel delineation. 
            Send 3 times Deactivate_ONU-ID messages Generate
            Loss_of_phy_layer_I notification."                 l"LCDGi is Loss of GEM channel delineation. When 
            GEM channel delineation for ONUi is achieved."                 +"RDIi is Remote Defect Indication of ONUi."                 d"RDIi is Remote Defect Indication of ONUi. When the RDI field of 
            ONUi is de-asserted."                 L"SUFi is Start-up Failure of ONUi. Send 3 times Deactivate_ONU-ID messages."                 C"SUFi is Start-up Failure of ONUi. The ONU is ranged successfully."                 $"DFi is Deactivate Failure of ONUi."                 ?"DFi is Deactivate Failure of ONUi. Cancelled by the operator."                 �"LOAi is Loss of Acknowledge with ONUi. Send 3 times 
            Deactivate_ONU-ID messages. Generate Loss_of_phy_layer_I 
            notification."                 m"LOAi is Loss of Acknowledge with ONUi. When the OLT 
            receives an acknowledgement from the ONU."                 �"DGi is Receive Dying-Gasp of ONUi. Ignore received 
            alarms from this ONU. Generate Loss_of_phy_layer_I 
            notification."                 p"DGi is Receive Dying-Gasp of ONUi. When the OLT receives
             a PLOAM message during ranging process."                 �"LOAMi is Loss of PLOAM for ONUi. Send 3 times 
            Deactivate_ONU-ID messages. Generate Loss_of_phy_layer_I 
            notification."                 �"LOAMi is Loss of PLOAM for ONUi. When the OLT receives 
            a PLOAM message corresponding to its PLOAM flag in the 
            Operating state."                 *"MEMi is Message_Error Message from ONUi."                 W"MEMi is Message_Error Message from ONUi. When 
            the operator is informed."                  "Misi is Link Mismatch of ONUi."                 w"MISi is Link Mismatch of ONUi. The OLT detects 
            that received PSTi and the transmitted PST are the same."                 i"PEEi is Physical Equipment Error of ONUi. 
            Generate Loss_of_physical_layer_I notification."                 z"PEEi is Physical Equipment Error of ONUi. When 
            the OLT doesn't receive a PEE message from the ONUi in 3 s."                 y"LOS is Loss Of Signal. Switch off laser. Generate 
            Loss_of_phy_layer notification. Move to Initial- State."                 ."LOS is Loss Of Signal. Valid optical signal."                 x"LOF is Loss of Frame. Switch off laser. Generate 
            Loss_of_phy_layer notification. Move to Initial- State."                 S"LOF is Loss of Frame. When 2 consecutive frames 
            have correct PSYNC."                 "TF is Transmitter Failure."                 "TF is Transmitter Failure."                 "SF is Signal Failed."                 W"SF is Signal Failed. Set inactive when 
            the downstream BER is <10?(y+1)."                 "SD is Signal Degraded."                 Y"SD is Signal Degraded. Set inactive 
            when the downstream BER is <10?(x+1)."                 �"LCDA is Loss of ATM channel delineation. 
            Switch off laser. Generate Loss_of_phy_layer 
            notification."                 W"LCDA is Loss of ATM channel delineation. 
        When cell delineation is achieved."                 y"LCDG is Loss of GEM channel delineation. 
        Switch off laser. Generate Loss_of_phy_layer 
        notification."                 V"LCDG is Loss of GEM channel delineation. 
        When GEM delineation is achieved."                 E"RDI is Remote Defect Indication in ONU. Set RDI status bit in PLOu."                 W"RDI is Remote Defect Indication in ONU. When the OLT transmission defect is resolved."                 "SUF is Start-up Failure."                 6"SUF is Start-up Failure. When ranging is successful."                 "MEM is Message Error Message."                 "MEM is Message Error Message."                 �"DACT is Deactivate ONU-ID. Switch off the 
            laser and go to Standby-State. Generate 
            Loss_of_phy_layer notification."                 C"DACT is Deactivate ONU-ID.Reception of Upstream_overhead message."                 �"DIS is Disabled ONU. Switch off laser. Go to 
            Emergency-Stop State Generate Loss_of_phy_layer 
            notification."                 �"DIS is Disabled ONU. When the ONU receives a Disable_Serial_Number
            message with Enable flag=0x0F or when it receives a Disable_Serial_Number 
            message with it's own serial number and the enable flag=0x00."                 "MIS is Link Mismatching."                 p"MIS is Link Mismatching. The ONU detects that the received 
            PST and transmitted PST are the same."                 P"Pee is Physical Equipment Error. Generate Loss_of_physical_layer notification."                 U"Pee is Physical Equipment Error. When the ONU doesn't receive a PEE message in 3 s."                 y"LOS is Loss Of Signal. Switch off laser. Generate 
            Loss_of_phy_layer notification. Move to Initial- State."                 ."LOS is Loss Of Signal. Valid optical signal."                 x"LOF is Loss of Frame. Switch off laser. Generate 
            Loss_of_phy_layer notification. Move to Initial- State."                 1"LOF is Loss of Frame. When 2 consecutive frames"                 " "                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 ""                 "OLT detects a faked SN event."                 $"It  indicate ONU constant optical."                 ,"It  indicate ONU constant optical restore."                 $"It  indicate ONU constant optical."                 ,"It  indicate ONU constant optical restore."                 $"It  indicate ONU constant optical."                 ,"It  indicate ONU constant optical restore."                 '"It  indicate Gpon port mac spoolfing."                 $"It  indicate ONU constant optical."                 "TF is Transmitter Failure."                 "TF is Transmitter Failure."                 %"OLT detects a faked password event."                 N"It occurred when the ONU is automatically added and entering working status."                 p"It occurred when the ONU disabled, 
            then turn off and reboot ONU, the ONU not on POPUP-state(O7)."                 D"It occurred when received illegal ip or mac package.
            "                 ="It occurred when  ONU ethernet
             port loopback."                 H"It occurred when ONU ethernet
             port loopback was restore."                 V"It occurred when ONU authentication mode is
            LOID or LOID plus Password."                    