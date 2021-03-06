-- *****************************************************************
-- ZTE GPON ONT MANAGEMENT MIB
--
-- 12-26-2006
--
-- Copyright(c) 2006 ZTE Corporation
-- All rights reserved.
-- *****************************************************************
   #"Represents the vendor of the ONT."               &"Represents the specific type of ONT."               %"Represents the unique for each ONT."               $"Represents the version of the ONT."                                                                                                                     H"zxGponRootMib 50    , ONT management and control interface(zxGponOMCI)" �"ZTE GPON Working Group: 
            http://www.zte.com.cn
            e-mail:
            guo.hongjian@zte.com.cn
            "       -- Feb 2, 2007"
           "Define the index of ONT."                       ""                       �"The 4 bytes index includes:
            interface type(bit31~28);shelfId(bit27~24);slotId(bit23~16);oltId(bit16~8);reserved(bit7~bit0)"                       9"This attribute indicates the index of ONT, from 1 to M."                       �"This attribute indicates the index of UNI in ONT, from 1 to M.
            The first byte specifies the slot Id associated with this UNI;
            the second byte specifies the port Id associated with this UNI.(2 bytes)"                      "This attribute indicates the index of uplink in ONT, from 1 to M.
            The first 2 bytes specifies the slot Id and bridge group Id associated with the bridge;
            the second 2 bytes specifies the bridge port associated with this uplink.(4 bytes)"                       �"This attribute indicates the index of ANI in ONT, from 1 to M.
            The first byte specifies the slot Id associated with this PON;
            the second byte specifies the port Id associated with this PON.(2 bytes)"                       C"This attribute indicates the index of T-CONT in ONT, from 1 to M."                       �"This attribute indicates the index of MAC bridge in ONT, from 1 to M.
            The first byte specifies the slot Id associated with this MAC bridge;
            the second byte specifies the bridge group Id associated with this MAC bridge.(2 bytes)"                       *"This attribute specifies the gemport id." "G.984.4 & G.983.2"                     L"This attribute specifies the bridge port type.
         UNI/UPLINK/IPHOST" 	"G.984.4"                    P"This attribute specifies the bridge port index.
        type    size         MSB                LSB
        ------------------------------------------------
        UNI:    2bytes ----- slot(1byte)/port(1byte)
        UPLINK: 4bytes ----- slot(1byte)/bridge(1byte)/port(2byte)
        IPHOST: 1byte  ----- hostid(1byte)
        " 	"G.984.4"                     4"This attribute specifies the index of the service." 	"G.984.4"                     ""                       $"It is entry in the zxGponONTTable."                       �"This attribute identifies the vendor of the ONT, and is the same as the 4 most significant bytes of the ONT serial number as specified in ITU-T Rec. G.983.1. 
        Upon autonomous instantiation, this attribute consists of all spaces.(4 bytes)" "G.984.4 section 9.1.1 ONT-G"                    )"This attribute identifies the version of the ONT as defined by the vendor. The printable value of '0' 
        is used when version information is not available or applicable to the ONT being represented. 
        Upon autonomous instantiation, this attribute consists of all spaces.(14 bytes)" "G.984.4 section 9.1.1 ONT-G"                    w"The serial number is unique for each ONT. 
        The first four bytes are the ASCII encoded vendor ID four letter mnemonic.
        The second four bytes are a binary encoded 'serial number', under the complete control 
        of the vendor in question.
        Upon autonomous instantiation, this attribute consists of four spaces and four null characters.(8 bytes)" "G.984.4 section 9.1.1 ONT-G"                    ["This attribute identifies the upstream traffic management function implememted 
        in the ONT.
        1) 'Priority controlled and flexibly scheduled upstream traffic' (0x00): The traffic
        scheduler and priority queue mechanism are used for the upstream traffic.
        2) 'Cell rate controlled upstream traffic' (0x01): The maximum upstream traffic of each
        individual connection is guaranteed. 
        Note that the Traffic management option will not apply to downstream traffic.
        In other words, there is no need for a traffic descriptor for the downstream direction 
        and downstream priority queues can be used. 
        Upon autonomous instantiation, this attribute is set to the value that describes the 
        ONT's implementation. The OLT must adapt its model to conform to the ONT's selection.(1 byte)" "G.984.4 section 9.1.1 ONT-G"                    �"It identifies the support of ATM VP or VC cross-connection management
             functions for the interworking connections to non ATM UNIs. 
             0 means no cross-connection management functions are modelled. 
             1 means ATM VP cross-connection management functions are modelled.
             2 means ATM VP and VC cross-connection management functions are modelled." "G.984.4 Section 9.1.1 ONT-G"                    '"This attribute provides a Boolean indication of whether or not the ONT/NT supports battery backup.
            False will indicate that no battery is provisioned; true indicates that a battery is provisioned.
            Upon autonomous instantiation, this attribute is set to false.(1 byte)" "G.984.4 Section 9.1.1 ONT-G"                     �"This attribute is used to activate (unlock: value 0x00) and deactivate (lock: value 0x01) 
            the functions performed by instances of this managed entity.(1 byte)" "G.984.4 Section 9.1.1 ONT-G"                     �"This attribute indicates whether or not a managed entity is capable of 
            performing its task. Valid values are enabled (0x00) and disabled (0x01).(1 byte)" "G.984.4 Section 9.1.1 ONT-G"                     �"This attribute may be used to identify the specific type of ONT. In North America, 
        this may be used for the equipment CLEI code.(20 bytes)" "G.984.4 section 9.1.2 ONT2-G"                    �"This attribute is used to identify the specific version of the OMCC  
        protocol being used by the ONT. This is used to allow the OLT to manage a 
        network with ONTs that support different OMCC versions. 
        The only valid value at this time is 0x80. Future versions will be added sequentially.
        Upon autonomous instantiation, this attribute consists of the value 0x80.(1 byte)" "G.984.4 section 9.1.2 ONT2-G"                     X"This attribute is used to provide a vendor-specific product code for the ONT.(2 bytes)" "G.984.4 section 9.1.2 ONT2-G"                    "This attribute is used to advertise the advanced security modes of the ONT. 
        The following codepoints are defined: 
        0: Reserved for future use;
        1: AES encryption of the downstream payload is supported;
        2..255: Reserved for future use.(1 byte)" "G.984.4 section 9.1.2 ONT2-G"                    �"This attribute is used to select the advanced security mode for the ONT.
             Note that all secure VPs/VCs or GEM ports in an ONT must use the same security mode at
             any time. The following codepoints are defined:  
             0: Reserved for future use;
             1: AES algorithm for unicast traffic will be used;
             2..255: Reserved for future use.
             Upon autonomous instantiation this attribute consists of the value 0x01.(1 byte)" "G.984.4 Section 9.1.2 ONT2-G"                     �"This attribute provides a total number of priority queues which are not associated with the PON IF circuit pack. 
            Maximum value is 0x0FFF. Upautonomous instantiation, this attribute is set to zero.(2 bytes)" "G.984.4 Section 9.1.2 ONT2-G"                    �"This attribute provides a total number of Traffic Schedulers which 
            are not associated with the PON IF circuit pack. The ONT supports NULL function, 
            HOL scheduling and WRR from the priority control and guarantee of 
            minimum rate control points of view, respectively. 
            If the ONT does noScheduler, this attribute should be 0x00. 
            Upon autonomous instantiation, this attribute is set to zero.(1 byte)" "G.984.4 Section 9.1.2 ONT2-G"                     �"This attribute identifies whether the ONT can operate in ATM-only mode (0x00), 
            GEM-only mode (0x01), or dual (both ATM and GEM) mode (0x02).(1 byte)" "G.984.4 Section 9.1.2 ONT2-G"                     ""                       *"It is entry in the zxGponONTActionTable."                       2"This attribute identifies the action of the ONT." "G.984.4 section 9.1.1 ONT-G"                     2"This attribute identifies the action of the ONT." "G.984.4 section 9.1.1 ONT-G"                     2"This attribute identifies the action of the ONT." "G.984.4 section 9.1.1 ONT-G"                     S"This attribute identifies the action of the ONT. That is resetting the ONT's MIB." "G.984.4 section 9.1.1 ONT-G"                     6"This attribute identifies the result of testing ONT." "G.984.4 section 9.1.1 ONT-G"                     �"This managed entity represents a program stored in the ONT.
            Two instances of the software image managed entity are contained in an instance of 
            an ONT or equipment managed entity whose software is independently managed." &"G.983.2 section 7.1.7 Software image"                     ."It is entry in the zxGponSoftwareImageTable."                      �"This attribute provides a unique number for each instance of this managed entity. 
        The number consists of a two-byte field. The first field (MSB) identifies the ME 
        instance (ONT (value 0x00) or circuit pack slot (value 0x01-0xFF) containing the 
        associated software image ME. The second field (LSB) distinguishes between the 
        two (redundant) software image ME instances (values 0x00 and 0x01).(2 bytes)" &"G.983.2 section 7.1.7 Software image"                     �"This attribute identifies the version of the software. 
        Upon autonomous instantiation, this attribute consists of all spaces.(14 bytes)" &"G.983.2 section 7.1.7 Software image"                    �"This attribute indicates whether the associated software image is 'committed' (value 0x01) 
        or 'uncommitted' (value 0x00). By definition, the 'committed' software image will be loaded 
        and executed upon a reboot of the ONT and/or associated circuit pack.Upon autonomous 
        instantiation, this attribute of instance 0 shall be initialized to 'committed' and 
        this attribute of instance 1 shall be initialized to 'uncommitted'.(1 byte)" &"G.983.2 section 7.1.7 Software image"                    �"This attribute indicates whether the associated software image is 'active' (value 0x01) 
        or 'inactive' (value 0x00). By definition, the active software image is one that is 
        currently loaded and executing in the ONT (or associated circuit pack).Upon autonomous 
        instantiation, this attribute of instance 0 shall be initialized to 'active' and this 
        attribute of instance 1 shall be initialized to 'inactive'.(1 byte)" &"G.983.2 section 7.1.7 Software image"                    �"This attribute indicates whether the associated software image is 'valid' (value 0x01) 
        or 'invalid (value 0x00). By definition, a software image is 'valid' if it has been 
        verified to be an executable code image.Upon autonomous instantiation, the associated 
        code image is verified and this attribute is set according to the result of this verification.(1 byte)" &"G.983.2 section 7.1.7 Software image"                     A"This managed entity represents a program management in the ONT." &"G.983.2 section 7.1.7 Software image"                     4"It is entry in the zxGponSoftwareImageActionTable."                       �"This attribute initiates the version downloading from OLT to ONT.
        'zxGponSoftwareImageActionVersion' must be specified when downloading." &"G.983.2 section 7.1.7 Software image"                     �"This attribute initiates the version updating of ONTs.
        'zxGponSoftwareImageActionOntList','zxGponSoftwareImageActionOntNum' and 
        'zxGponSoftwareImageActionVersion' must be specified when updating." &"G.983.2 section 7.1.7 Software image"                     u"This attribute initiates the version cache deleting.
        'zxGponSoftwareImageActionVersion' must be specified." &"G.983.2 section 7.1.7 Software image"                     ,"This attribute specifies the version name." &"G.983.2 section 7.1.7 Software image"                     O"This attribute specifies the ONT list who will be told to update the version." &"G.983.2 section 7.1.7 Software image"                     Q"This attribute specifies the ONT number who will be told to update the version." &"G.983.2 section 7.1.7 Software image"                     �"This attribute specifies the slot of ONT who will be told to update the version.
        If updating the version of ONT itshelf, this attribute can be specified as 0 or not specified." &"G.983.2 section 7.1.7 Software image"                     �"This attribute aborts the version updating of ONTs.
        'zxGponSoftwareImageActionOntList','zxGponSoftwareImageActionOntNum' and 
        'zxGponSoftwareImageActionOntSlot' must be specified when aborting." &"G.983.2 section 7.1.7 Software image"                     B"This managed entity represents the image maintenance in the ONT." &"G.983.2 section 7.1.7 Software image"                     3"It is entry in the zxGponSoftwareImageMaintTable."                       M"This attribute initiates the maintenance type of image(activate or commit)." &"G.983.2 section 7.1.7 Software image"                     ["This attribute specifies the ONT list who will be told to activate or commit the version." &"G.983.2 section 7.1.7 Software image"                     Q"This attribute specifies the ONT number who will be told to update the version." &"G.983.2 section 7.1.7 Software image"                     �"This two-byte field is composed of 'onu slot' and 'region id'.
        The MSB is 'onu slot', usually as 0;
        The LSB is 'region id', sepecified as 0 or 1." &"G.983.2 section 7.1.7 Software image"                     D"This managed entity represents the image update status of the ONT." &"G.983.2 section 7.1.7 Software image"                     :"It is entry in the zxGponSoftwareImageUpdateStatusTable."                       Q"This attribute indicates the status of updaing.0xFFFF indicates status of 'NA'." &"G.983.2 section 7.1.7 Software image"                     1"This attribute indicates the reason when abort." &"G.983.2 section 7.1.7 Software image"                     3"This attribute indicates the percent of updating." &"G.983.2 section 7.1.7 Software image"                     @"This attribute indicates the name of the version current used." &"G.983.2 section 7.1.7 Software image"                     @"This attribute indicates the time of the version current used." &"G.983.2 section 7.1.7 Software image"                     <"This attribute indicates the name of the version updating." &"G.983.2 section 7.1.7 Software image"                     <"This attribute indicates the time of the version updating." &"G.983.2 section 7.1.7 Software image"                     �"This managed entity models the ONT's ability to shed services when the ONT goes into battery operation mode after AC power failure."                       1"It is entry in the zxGponONTPowerSheddingTable."                       �"The time delay, in seconds, before resetting shedding timers after full power restoration. 
              Upon ME instantiation, the ONT sets this attribute to 0. (R, W) (mandatory) (2 bytes)" *"G.984.4 section 9.1.7 ONT power shedding"                    �"For each class of service, an interval attribute is defined below. 
               The value 0 disables power shedding, while the value 1 enables immediate power shed, that is, as soon as AC power fails. 
              Other values specify the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power. 
              Upon ME instantiation, the ONT sets each of the interval attributes to 0.(2 bytes)" *"G.984.4 section 9.1.7 ONT power shedding"                    �"For each class of service, an interval attribute is defined below. 
               The value 0 disables power shedding, while the value 1 enables immediate power shed, that is, as soon as AC power fails. 
              Other values specify the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power. 
              Upon ME instantiation, the ONT sets each of the interval attributes to 0.(2 bytes)" *"G.984.4 section 9.1.7 ONT power shedding"                    �"For each class of service, an interval attribute is defined below. 
               The value 0 disables power shedding, while the value 1 enables immediate power shed, that is, as soon as AC power fails. 
              Other values specify the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power. 
              Upon ME instantiation, the ONT sets each of the interval attributes to 0.(2 bytes)" *"G.984.4 section 9.1.7 ONT power shedding"                    �"For each class of service, an interval attribute is defined below. 
               The value 0 disables power shedding, while the value 1 enables immediate power shed, that is, as soon as AC power fails. 
              Other values specify the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power. 
              Upon ME instantiation, the ONT sets each of the interval attributes to 0.(2 bytes)" *"G.984.4 section 9.1.7 ONT power shedding"                    �"For each class of service, an interval attribute is defined below. 
               The value 0 disables power shedding, while the value 1 enables immediate power shed, that is, as soon as AC power fails. 
              Other values specify the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power. 
              Upon ME instantiation, the ONT sets each of the interval attributes to 0.(2 bytes)" *"G.984.4 section 9.1.7 ONT power shedding"                    �"For each class of service, an interval attribute is defined below. 
               The value 0 disables power shedding, while the value 1 enables immediate power shed, that is, as soon as AC power fails. 
              Other values specify the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power. 
              Upon ME instantiation, the ONT sets each of the interval attributes to 0.(2 bytes)" *"G.984.4 section 9.1.7 ONT power shedding"                    �"For each class of service, an interval attribute is defined below. 
               The value 0 disables power shedding, while the value 1 enables immediate power shed, that is, as soon as AC power fails. 
              Other values specify the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power. 
              Upon ME instantiation, the ONT sets each of the interval attributes to 0.(2 bytes)" *"G.984.4 section 9.1.7 ONT power shedding"                    �"For each class of service, an interval attribute is defined below. 
               The value 0 disables power shedding, while the value 1 enables immediate power shed, that is, as soon as AC power fails. 
              Other values specify the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power. 
              Upon ME instantiation, the ONT sets each of the interval attributes to 0.(2 bytes)" *"G.984.4 section 9.1.7 ONT power shedding"                    �"For each class of service, an interval attribute is defined below. 
               The value 0 disables power shedding, while the value 1 enables immediate power shed, that is, as soon as AC power fails. 
              Other values specify the time, in seconds, to keep the service active after AC failure before shutting them down and shedding power. 
              Upon ME instantiation, the ONT sets each of the interval attributes to 0.(2 bytes)" *"G.984.4 section 9.1.7 ONT power shedding"                    J"Boolean indication of power shedding status for each shedding class. 
         If this two-byte field is depicted 0b ABCD EFGH IJKL MNOP, its bits are assigned:
         A    Data class
         B    Voice class
         C    Video overlay class
         D    Video return class
         E    DSL class
         F    ATM class
         G    CES class
         H    Frame class
         I    Sonet class
         J..P    Reserved and set to 0
         The ONT sets each bit when power shedding is active, and clears it when the service is restored. (R) (optional) (2 bytes)" *"G.984.4 section 9.1.7 ONT power shedding"                     8"This table specifies the capability of ONU capability." ""                     ."It is entry in the zxGponONTCapabilityTable."                       ."This attribute reports the number of TCONT. "                       �" This attribute reports the total number of priority queues 
          that are not associated with a circuit pack, but with the 
          ONT in its entirety. " "G.984.4 9.1.2"                     A"This attribute reports the total number of up priority queues. "                       C"This attribute reports the total number of down priority queues. "                       �" This attribute reports the total number of traffic schedulers 
          that are not associated with a circuit pack, but with the 
          ONT in its entirety." "G.984.4 9.1.2"                     j" This attribute identifies the upstream traffic management function 
          implemented in the ONT. " "G.984.4 9.1.1"                     5"This attribute identifies the total number of UNI. "                       8"This attribute identifies the number of ethernet UNI. "                       3"This attribute identifies the number of CES UNI. "                       4"This attribute identifies the number of POTS UNI. "                       5"This attribute identifies the number of video UNI. "                       3"This attribute identifies the number of IP host. "                       "" ""                     '"It is entry in the zxGponONTSysTable."                       "CPU usage of ONU in percent." ""                     !"Memory usage of ONU in percent." ""                     "Alarm threshold of CPU usage." ""                     ""Alarm threshold of Memory usage." ""                        j"This managed entity is used to organize data associated with the 
            Access Network Interface supported by the ONT.
            One instance of this managed entity exists for each PON physical port.
            One or more instance of this managed entity are contained in an instance of 
            a circuit pack that supports a PON IF function."                       $"It is entry in the zxGponPonTable."                       �"This Boolean attribute indicates the capability of status reporting. The
        value TRUE means that the status reporting is available for all T-CONTs which 
        are associated with the ANI. The default value is false.(1 bytes)" "G.984.4 section 9.2.1 ANI-G"                     v"This attribu provides the total number of T-CONTs that are able to be supported 
        in this ANI port.(2 bytes)" "G.984.4 section 9.2.1 ANI-G"                     �"This attribute indicates the reporting block size for GEM mode in units of bytes.
        The value which the OLT sets is used by all T-CONTs in this ANI. 
        Upon autonomous instantiation this attribute consists of the value 0x0030.(2 bytes)" "G.984.4 section 9.2.1 ONT2-G"                    C"The following coding is used to indicate the ONT's piggyback DBA reporting 
        mode capabilities:
        0x00: supports mode 0 only;
        0x01: supports modes 0 and 1;
        0x02: supports modes 0 and 2;
        0x03: supports modes 0,1,and 2;
        0x04: piggyback DBA reporting not supported.(1 byte)" "G.984.4 section 9.2.1 ANI-G"                     �"Valid values are 0x00 (whole ONU DBA reporting is not supported) 
            and 0x01 (whole ONU DBA reporting is supported).(1 byte)" "G.984.4 Section 9.2.1 ANI-G"                    <"This attribute represents the upstream/downstream BER threshold to detect SFi/SF alarm. 
            When this value is y in decimal, the BER threshold for SFi/SF is 10^(-y).
            The valid values are from 3 to 8 inclusive.
            Upon autonomous instantiation, this attribute consists of 5.(1 byte)" "G.984.4 Section 9.2.1 ANI-G"                    �"This attribute represents the upstream/downstream BER threshold to detect SDi/SD alarm. 
            When this value is x in decimal, the BER threshold for SDi/SD is 10^(-x).
            The valid values are from 4 to 10 inclusive. Please note that the SD threshold shall be 
            smaller than the SF threshold. This means that the value of x shall be larger than the value of y.  
            Upon autonomous instantiation, this attribute consists of 9.(1 byte)" "G.984.4 Section 9.2.1 ANI-G"                     y"Alarm reporting control. 
             0(enable): Allow alarm reporting, 1(disable): Suppress alarm reporting.(1 byte)" "G.984.4 Section 9.2.1 ANI-G"                    "Alarm reporting control interval.
             0: Allow alarm reporting immediately when port is trouble free.
             1-254: The duration in minutes for alarm suppression.
             255: Suppress alarm reporting until alarm is enabled. (1 byte)" "G.984.4 Section 9.2.1 ANI-G"                     �"This attribute reports the current measurement of total 
             optical signal level at 1490 nm. Its value is a 2s complement 
             integer referred to 1 mW (ie dBm), with 0.002 dB granularity.(2 byte)" "G.984.4 Section 9.2.1 ANI-G"                    3"This attribute specifies the optical level the ONT uses to 
            declare the 1490 nm low received optical power alarm. 
            Valid values are -127 dBm (coded as 254) to 0 dBm (coded as 0) 
            in 0.5 dB increments. The default value 0xFF selects the ONT's internal policy.(1 byte)" "G.984.4 Section 9.2.1 ANI-G"                    4"This attribute specifies the optical level the ONT uses to 
            declare the 1490 nm high received optical power alarm. 
            Valid values are -127 dBm (coded as 254) to 0 dBm (coded as 0) 
            in 0.5 dB increments. The default value 0xFF selects the ONT's internal policy.(1 byte)" "G.984.4 Section 9.2.1 ANI-G"                     t"This attribute indicates actual ONT response time recorded by ONT. 
             The unit is nanoseconds.(2 byte)" "G.984.4 Section 9.2.1 ANI-G"                     �"This attribute reports the current measurement of optical 
             transmit power level. Its value is a 2s complement integer 
             referred to 1 mW (ie dBm), with 0.002 dB granularity.(2 byte)" "G.984.4 Section 9.2.1 ANI-G"                    >"This attribute specifies the transmit power level the ONT uses to 
            declare the low transmit optical power alarm. Its value is a 2s complement 
            integer referred to 1 mW (ie dBm), with 0.5 dB granularity. 
            The default value -63.5 (0x81) selects the ONT's internal policy.(1 byte)" "G.984.4 Section 9.2.1 ANI-G"                    ?"This attribute specifies the transmit power level the ONT uses to 
            declare the high transmit optical power alarm. Its value is a 2s complement 
            integer referred to 1 mW (ie dBm), with 0.5 dB granularity. 
            The default value -63.5 (0x81) selects the ONT's internal policy.(1 byte)" "G.984.4 Section 9.2.1 ANI-G"                     6"DC voltage, 2s complement, 20 mV resolution.(2 byte)" 1"G.984.4 Section 11.1.10 Test result enumeration"                     )"2s complement, 2 uA resolution.(2 byte)" 1"G.984.4 Section 11.1.10 Test result enumeration"                     3"2s complement, 1/256 degree C resolution.(2 byte)" 1"G.984.4 Section 11.1.10 Test result enumeration"                     
"(2 byte)" "G.984.4 Section 9.2.1 ANI-G"                     
"(2 byte)" "G.984.4 Section 9.2.1 ANI-G"                     
"(2 byte)" "G.984.4 Section 9.2.1 ANI-G"                     
"(2 byte)" "G.984.4 Section 9.2.1 ANI-G"                     
"(2 byte)" "G.984.4 Section 9.2.1 ANI-G"                     
"(2 byte)" "G.984.4 Section 9.2.1 ANI-G"                     ""                       )"It is entry in the zxGponLoopbackTable."                       "" ""                        ~"This managed entity represents the points at an Ethernet UNI in the ONT where physical paths 
            terminate and physical path level functions (e.g., Ethernet function) are performed.
            One or more instances of this managed entity shall be contained in an instance of a Circuit Pack 
            managed entity classified as a native LAN type (e.g., Ethernet)." D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                     +"It is entry in the zxGponPptpEthUNITable."                      "The following coding is used for this attribute: 0x00 = by autosensing, 
        0x01 to 0xFE (1 to 254) = one of the values from Table 3 that is compatible with the 
        type of the LIM. Upon autonomous instantiation, the value 0x00 is used.(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                    �"If the value of 'Expected type' is not equal to 0x00, then the value of 'Sensed type' 
        equals the value of 'Expected type'. If the value of 'Expected type' equals 0x00, then 
        the value of 'Sensed type' equals one of the values from Table 3 (0x01 to 0xFE) and by 
        necessity is compatible with the Type of the Circuit Pack managed entity. 
        Upon autonomous instantiation, the value 0x00 is used.(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                    �"For 10/100 Base-Tx Ethernet interfaces, this attribute is used to set the configuration 
        options: 
        Auto-sensing: 0x00; 
        10BaseT: 0x01; 
        100BaseT: 0x02: 
        Gigabit Ethernet: 0x03; 
        10BaseT Auto-sensing: 0x10; 
        10BaseT (half duplex): 0x11; 
        100BaseT (half duplex): 0x12; 
        Gigabit Ethernet (half duplex): 0x13; 
        Gigabit Ethernet Auto-sensing: 0x20. 
        Upon autonomous instantiation, the value 0x00 is used.(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                     �"This attribute is used to set the Ethernet loopback configuration: 
        No loopback (value 0x00), Loop3 (value 0x03, Loopback of downstream traffic after PHY transceiver).
        Upon autonomous instantiation, the value 0x00 is used.(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                     �"This attribute is used to activate (unlock: value 0x00) and deactivate (lock: value 0x01) 
        the functions performed by instances of this managed entity.(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                    "This attribute indicates whether or not this managed entity is capable of performing 
        its task. The operational state reflects the perceived ability to receive or to generate 
        a valid signal. Valid values are enabled (0x00) and disabled (0x01).(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                    4"This attribute indicates the configuration status of the Ethernet UNI. 
        10BaseT (full duplex): 0x01; 
        100BaseT (full duplex): 0x02; 
        Gigabit Ethernet (full duplex): 0x03; 
        10BaseT (half duplex): 0x11; 
        100BaseT (half duplex): 0x12 
        Gigabit Ethernet (half duplex): 0x13; 
        When the configuration status is not detected (e.g., Ethernet link is not 
        established or line card is not yet installed), the value 0x00 is used. 
        Upon autonomous instantiation, the value 0x00 is used.(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                     �"This attribute denotes the maximum allowed frame size to be transmitted across this interface. 
        Upon autonomous instantiation, the value 1518 is used.(2 bytes)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                     �"This attribute indicates whether the Ethernet interface wiring is DTE or DCE (DCE: 0x00; DTE: 0x01). 
        Upon autonomous instantiation, the value 0x00 is used.(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                    Q"This attribute allows the ONT line card to request that the customer terminal temporarily 
        suspend sending data. Units are in 'pause_quanta' (1 pause_quantum equals 512 bits times of 
        the particular implementation). Values: 0x0000 to 0xFFFF. 
        Upon autonomous instantiation, the value 0x0000 is used.(2 bytes)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                    X"This attribute indicates whether the Ethernet interface is bridged or derived from an 
        IP router function (Bridged: 0x00; IP router: 0x01; 0x02: depends on Circuit Pack.) 
        0x02 means that the SLC 'BridgedorIPInd' attribute will be either 0x00 or 0x01. 
        Upon autonomous instantiation, the value 0x02 is used.(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                     �"This attribute is used to control alarm reporting from this managed entity. 
        See I.1.8 for a complete description.(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                     g"This attribute provides a provisionable length of time. See I.1.8 for a complete description.(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                    B"This attribute may be used to control filtering of PPPoE packets on this Ethernet port. 
        The value 0x00 is used to disable filtering. The value 0x01 is used to enable filtering. 
        When filtering is enabled, all packets other than PPPoE packets will be discarded. 
        Default value is 0x00.(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                     �"This attribute controls whether power is provided to an external equipment over the 
        Ethernet PPTP. Value 0x01 enables power over Ethernet. 
        The default value 0x00 disables power feed.(1 byte)" D"G.983.2 section 7.3.2 Physical path termination point Ethernet UNI"                    �"This managed entity represents the point at the POTS UNI in the ONT where physical paths 
            terminate and physical path level functions (e.g., analog telephony, facsimile function) 
            are performed.
            One or more instances of this managed entity shall be contained in an instance of the 
            ONTB-PON or a Circuit Pack managed entity classified as POTS type." A"G.983.2 section 7.3.26 Physical path termination point POTS UNI"                     ,"It is entry in the zxGponPptpPOTSUNITable."                       �"This attribute is used to activate (unlock: value 0x00) and deactivate (lock: value 0x01) 
        the functions performed by instances of this managed entity.(1 byte)" A"G.983.2 section 7.3.26 Physical path termination point POTS UNI"                     �"This attribute provides a pointer to the instance of the Interworking VCC managed 
        entity to which this instance is connected. The value 0x0000 is interpreted as a 
        Null pointer.(2 bytes)" A"G.983.2 section 7.3.26 Physical path termination point POTS UNI"                     {"This attribute is used to control alarm reporting from this managed entity. See I.1.8 for a complete description.(1 byte)" A"G.983.2 section 7.3.26 Physical path termination point POTS UNI"                     g"This attribute provides a provisionable length of time. See I.1.8 for a complete description.(1 byte)" A"G.983.2 section 7.3.26 Physical path termination point POTS UNI"                    �"This attribute allows the impedance for the Physical Path Termination Point 
        POTS UNI to be configured by the user. 
        Valid values include 600 Ohm Impedance (value 0x00) and 900 Ohm Impedance (value 0x01). 
        In addition, the following parameter sets from ETSI TS 101 270-1 (1999 10), Annex C, 
        are valid:
        -    value 0x02: C1=150 nF, R1=750 Ohm, R2=270 Ohm;
        -    value 0x03: C1=115 nF, R1=820 Ohm, R2=220 Ohm;
        -    value 0x04: C1=230 nF, R1=1050 Ohm, R2=320 Ohm, 
        where C1, R1, and R2 are related as shown below. Upon autonomous instantiation, the value 0x00 is used. 
        (1 byte)" A"G.983.2 section 7.3.26 Physical path termination point POTS UNI"                    n"This attribute allows for setting the Physical Path Termination Point POTS UNI 
        to be put in either full-time or part-time on-hook transmission mode. 
        Valid values include full time on-hook transmission (value 0x00) and part-time 
        on-hook transmission (value 0x01) Upon autonomous instantiation, the value 0x00 
        is used.(1 byte)" A"G.983.2 section 7.3.26 Physical path termination point POTS UNI"                    "This attribute provides a gain value for the received signal. 
        Valid values are -12 dB to +6 dB in 0.1 dB increments. 
        (value -120 to +60, 0 = 0 dB gain, -120 = -12.0 dB, etc.) 
        Upon autonomous instantiation, the value 0x00 is used.(1 byte)" A"G.983.2 section 7.3.26 Physical path termination point POTS UNI"                    "This attribute provides a gain value for the transmit signal. 
        Valid values are -6 dB to +12 dB in 0.1 dB increments. 
        (value -60 to +120, 0 = 0 dB gain, 60 = +6.0 dB, etc.). 
        Upon autonomous instantiation, the value 0x00 is used.(1 byte)" A"G.983.2 section 7.3.26 Physical path termination point POTS UNI"                    "This attribute indicates whether or not this managed entity is capable of performing 
        its task. The operational state reflects the perceived ability to receive or to generate 
        a valid signal. Valid values are enabled (0x00) and disabled (0x01).(1 byte)" A"G.983.2 section 7.3.26 Physical path termination point POTS UNI"                     e"This attribute indicates the state of the subscriber line: 0x00 = on hook, 0x01 = off hook.(1 byte)" A"G.983.2 section 7.3.26 Physical path termination point POTS UNI"                    I"This managed entity represents the point at the video UNI in the ONT where physical paths terminate 
            and physical path level functions are performed.
            One or more instances of this managed entity shall be contained in an instance of a Circuit Pack 
            managed entity classified as Video type." B"G.983.2 section 7.3.52 Physical path termination point video UNI"                     -"It is entry in the zxGponPptpVideoUNITable."                       �"This attribute is used to activate (unlock: value 0x00) and deactivate (lock: value 0x01) 
        the functions performed by instances of this managed entity.(1 byte)" B"G.983.2 section 7.3.52 Physical path termination point video UNI"                    "This attribute indicates whether or not this managed entity is capable of performing 
        its task. The operational state reflects the perceived ability to receive or to generate 
        a valid signal. Valid values are enabled (0x00) and disabled (0x01).(1 byte)" B"G.983.2 section 7.3.52 Physical path termination point video UNI"                     �"This attribute is used to control alarm reporting from this managed entity. 
        See I.1.8 for a complete description.(1 byte)" B"G.983.2 section 7.3.52 Physical path termination point video UNI"                     g"This attribute provides a provisionable length of time. See I.1.8 for a complete description.(1 byte)" B"G.983.2 section 7.3.52 Physical path termination point video UNI"                     �"This attribute controls whether power is provided to an external equipment over the 
        Ethernet PPTP. Value 0x01 enables power over Ethernet. 
        The default value 0x00 disables power feed.(1 byte)" B"G.983.2 section 7.3.52 Physical path termination point video UNI"                    9"This managed entity is used to organize data that affects all ports 
            on a MAC Bridge at a bridged LAN Ethernet UNI interface on the ONT.
            Zero or more instances of this managed entity shall be referred to 
            by the Physical Path Termination Point Ethernet UNI managed entity." 3"G.983.2 section 7.3.29 MAC Bridge service profile"                     8"It is entry in the zxGponMACBridgeServiceProfileTable."                       �"This Boolean attribute indicates whether or not a spanning tree algorithm is 
        enabled. The value TRUE means enabled.(1 byte)" 3"G.983.2 section 7.3.29 MAC Bridge service profile"                     �"This Boolean attribute indicates whether or not the learning functions of the 
        bridge are enabled. The value TRUE means enabled.(1 byte)" 3"G.983.2 section 7.3.29 MAC Bridge service profile"                     �"This Boolean attribute indicates whether or not bridging between ATM ports on this 
        bridge service is enabled. The value TRUE means enabled. (1 byte)" 3"G.983.2 section 7.3.29 MAC Bridge service profile"                    "This attribute indicates the bridge priority set on the LAN card. The range is 0x00 to 
        0xFFFF (0 to 65535). The value of this attribute is copied to the BridgePriority attribute 
        of the MAC Bridge Configuration Data managed entity.(2 bytes)" 3"G.983.2 section 7.3.29 MAC Bridge service profile"                    R"This attribute indicates the maximum age (in 256ths of a second) for an entry in the 
        spanning tree listing. It indicates the maximum age in 256ths of a second for received 
        protocol information before it is discarded. The range is 0x0600 to 0x2800 (6 s to 40 s) 
        in accordance with IEEE 802.1D [13].(2 bytes)" 3"G.983.2 section 7.3.29 MAC Bridge service profile"                    X"This attribute provides the time interval (in 256ths of a second) between hello packets. 
        It is the time interval, in 256ths of a second, that a bridge advertises its presence 
        while as a root or attempting to become a root. The range is 0x0100 to 0x0a00 (1 s to 10 s) 
        in accordance with IEEE 802.1D [13].(2 bytes)" 3"G.983.2 section 7.3.29 MAC Bridge service profile"                    ~"This attribute gives the time (in 256ths of a second) that the bridge on the Ethernet 
        card in the ONT retains a packet before forwarding it. (It indicates the value in 256ths 
        of a second that the bridge uses for Forward Delay when the bridge acts as the root.) 
        The range is 0x0400 to 0x1e00 (4 s to 30 s) in accordance with IEEE 802.1D [13].(2 bytes)" 3"G.983.2 section 7.3.29 MAC Bridge service profile"                    &"This Boolean attribute indicates the treatment of MAC frames with unknown destination 
        addresses.  The value TRUE means that frames with unknown destination addresses will be 
        discarded.  The value FALSE means that such frames will be forwarded to all allowed ports.(1 byte)" 3"G.983.2 section 7.3.29 MAC Bridge service profile"                     �"This attribute specifies the maximum number of UNI MAC addresses to be learned by the bridge. 
         The default value 0 specifies that there is no administratively-imposed limit. 
         (R, W, Set-by-create) (optional) (1 byte)" 3"G.983.2 section 7.3.29 MAC Bridge service profile"                     �"This managed entity is used to organize and record data that is associated with bridged 
            LAN configurations. Some of the data is volatile.
            This managed entity is associated with one instance of a MACBridgeServiceProfile." 6"G.983.2 section 7.3.30 MAC Bridge configuration data"                     4"It is entry in the zxGponMACBridgeConfigDataTable."                       �"This attribute indicates the MAC address used by the bridge. 
        Upon autonomous instantiation, this attribute consists of all 0x00.(6 bytes)" 6"G.983.2 section 7.3.30 MAC Bridge configuration data"                    /"This attribute denotes the priority of the bridge and is positive integer-valued. 
        Upon autonomous instantiation, the value 0x8000 is used. The value of this attribute 
        follows the value of the associated MAC Bridge Service Profile: Priority attribute, 
        if present.(2 bytes)" 6"G.983.2 section 7.3.30 MAC Bridge configuration data"                     �"This attribute provides the bridge identifier for the root of the spanning tree. 
        This attribute consists of Bridge Priority (2 bytes) and MAC address (6 bytes).
        (8 bytes)" 6"G.983.2 section 7.3.30 MAC Bridge configuration data"                     �"This attribute provides the cost of the best path to the root as seen from the 
        bridge. Upon autonomous instantiation, the value 0x00 is used.(4 bytes)" 6"G.983.2 section 7.3.30 MAC Bridge configuration data"                     Y"This attribute provides the number of existing ports controlled by this bridge.(1 byte)" 6"G.983.2 section 7.3.30 MAC Bridge configuration data"                     �"This attribute provides the port number that has the lowest cost from the bridge to 
        the root bridge. The value 0x00 means that the bridge itself is the root. 
        Upon autonomous instantiation, the value 0x00 is used.(2 bytes)" 6"G.983.2 section 7.3.30 MAC Bridge configuration data"                    "This attribute provides the time interval (in 256ths of a second) between hello 
        packets. It is the 'HelloTime' received from the designated root. 
        The range is 0x0100 to 0x0a00 (1 s to 10 s) in accordance with IEEE 802.1D [13].(2 bytes)" 6"G.983.2 section 7.3.30 MAC Bridge configuration data"                    G"This attribute gives the time (in 256ths of a second) that the bridge on the Ethernet 
        card in the ONT retains a packet before forwarding it. It is the 'ForwardDelay' time 
        received from the designated root. The range is 0x0400 to 0x1e00 (4 s to 30 s) in 
        accordance with IEEE 802.1D [13].(2 bytes)" 6"G.983.2 section 7.3.30 MAC Bridge configuration data"                    "This managed entity is used to associate the priorities of 802.1P priority tagged 
            frames of a certain Ethernet UNI with a specific connection.
            One instance of this ME may be associated with zero or one instance of the PPTP UNI ME." 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     :"It is entry in the zxGponUNIDot1pMapServiceProfileTable."                       �"This attribute represents the GEM port id that is 
        associated with P-Bit = 000 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 001 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 010 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 011 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 100 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 101 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 110 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 111 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                    "This attribute indicates how the ONT should handle Untagged Ethernet frames received 
        across the associated Ethernet interface. Valid values include the following:
          0: Convert from DSCP to 802.1p;
          1: Tag frame to a certain value.
        (1 byte)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                    r"This attribute is used in conjunction with the Unmarked Frame Option attribute. 
        If unmarked frame option is 0, this attribute structure can be considered a bitmap 
        that represents a sequence of 64 '3-bit' groupings. Each of the 64 groupings represents 
        the possible value of the 6-bit DSCP field. Each of the '3-bit' groupings represents 
        the 'P-bit value' to which the associated DSCP value should be mapped. Once marked, 
        the P-Bit marked frame will then be routed to the GEM Interwork Pointer as indicated 
        by the P-Bit to Interwork Pointer mappings above.(24 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                    �"This attribute is used in conjunction with the Unmarked Frame Option attribute. 
        If unmarked frame option is 1, this attribute contains the default P-Bit priority 
        setting that will be applied to the frame. The P-Bit marked frame will then be 
        routed to the GEM Interwork Pointer as indicated by the P-Bit to Interwork Pointer 
        mappings above.(1 byte)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                    %"This managed entity is used to associate the priorities of 802.1P priority tagged 
            frames of a certain UpLink with a specific connection.
            One instance of this ME may be associated with zero or one instance of the MAC 
            bridge port configuration data ME." 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     ="It is entry in the zxGponUpLinkDot1pMapServiceProfileTable."                       �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 000 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 001 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 010 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 011 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 100 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 101 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 110 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                     �"This attribute represents a pointer to the Interworking Termination Point that is 
        associated with P-Bit = 111 tagged frames. The value 0xFFFF is a null pointer.(2 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                    "This attribute indicates how the ONT should handle Untagged Ethernet frames received 
        across the associated Ethernet interface. Valid values include the following:
          0: Convert from DSCP to 802.1p;
          1: Tag frame to a certain value.
        (1 byte)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                    r"This attribute is used in conjunction with the Unmarked Frame Option attribute. 
        If unmarked frame option is 0, this attribute structure can be considered a bitmap 
        that represents a sequence of 64 '3-bit' groupings. Each of the 64 groupings represents 
        the possible value of the 6-bit DSCP field. Each of the '3-bit' groupings represents 
        the 'P-bit value' to which the associated DSCP value should be mapped. Once marked, 
        the P-Bit marked frame will then be routed to the GEM Interwork Pointer as indicated 
        by the P-Bit to Interwork Pointer mappings above.(24 bytes)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                    �"This attribute is used in conjunction with the Unmarked Frame Option attribute. 
        If unmarked frame option is 1, this attribute contains the default P-Bit priority 
        setting that will be applied to the frame. The P-Bit marked frame will then be 
        routed to the GEM Interwork Pointer as indicated by the P-Bit to Interwork Pointer 
        mappings above.(1 byte)" 6"G.983.2 section 7.3.95 802.1p mapper service profile"                    "This managed entity is used to organize and record data that is associated with 
            a bridge port. Some of the data is volatile.
            Zero or more instances of this managed entity shall be contained in an instance of the 
            MACBridgeServiceProfile." ?"G.984.4 MAC Bridge Port Configuation Data, details in G.983.2"                     7"It is entry in the zxGponUNIMACBridgePortConfigTable."                       X"This attribute is set-by-create, indicating the bridge when create an UNI bridge port." +"G.984.4 MAC Bridge Port Configuation Data"                     �"This attribute identifies the MAC bridge port associated with the port.
        The first 2 bytes stand for the slot and bridge group id;
        The second 2 bytes stand for the bridge port num.(4 bytes)" +"G.984.4 MAC Bridge Port Configuation Data"                     m"This attribute denotes the priority of the port. 
        The range is 0x00 to 0x00FF (0 to 255).(2 bytes)" +"G.984.4 MAC Bridge Port Configuation Data"                     �"This attribute provides the cost contribution of the port to the path cost 
        towards the spanning tree root bridge. The range is 0x0001 to 0xFFFF (1 to 65535).(2 bytes)" +"G.984.4 MAC Bridge Port Configuation Data"                     �"This Boolean attribute indicates whether or not STP LAN topology change detection 
        is enabled at this port. The value TRUE means enabled.(1 byte)" +"G.984.4 MAC Bridge Port Configuation Data"                    B"This attribute identifies the frame encapsulation method that is used.
        0x00: identification by ATM VC;
        0x01: LLC encapsulation;
        This attribute is effective only for ports towards the ANI side of the MAC bridge. 
        Upon autonomous instantiation, the value 0x00 is used.
        (1 byte)" +"G.984.4 MAC Bridge Port Configuation Data"                    �"This attribute indicates whether LAN FCS (Frame Check Sequence) bytes are 
        forwarded (value 0x00) or discarded (value 0x01). This applies in both directions of 
        transmission, and applies regardless of EncapsulationMethod. 
        This attribute is effective only for ports towards the ANI side of the MAC bridge. 
        Upon autonomous instantiation, the value 0x00 is used.(1 byte)" +"G.984.4 MAC Bridge Port Configuation Data"                     �"This attribute indicates the Physical MAC address used by the Port as defined by 
        the TPPointer when the TPType is set to LAN.(6 bytes)" +"G.984.4 MAC Bridge Port Configuation Data"                     �"This attribute indicates the Physical MAC address used by the Port as defined by 
        the TPPointer when the TPType is set to LAN.(6 bytes)" +"G.984.4 MAC Bridge Port Configuation Data"                     z"This attribute points to a GEM traffic descriptor that limits the traffic rate 
         leaving the MAC bridge(2 byte)" +"G.984.4 MAC Bridge Port Configuation Data"                     {"This attribute points to a GEM traffic descriptor that limits the traffic rate 
         entering the MAC bridge(2 byte)" +"G.984.4 MAC Bridge Port Configuation Data"                    "This managed entity is used to organize and record data that is associated with 
            a bridge port. Some of the data is volatile.
            Zero or more instances of this managed entity shall be contained in an instance of the 
            MACBridgeServiceProfile." M"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data, details in G.983.2"                     :"It is entry in the zxGponUpLinkMACBridgePortConfigTable."                       �"This attribute identifies the MAC bridge port associated with the port.
        The first 2 bytes stand for the slot and bridge group id;
        The second 2 bytes stand for the bridge port num.(4 bytes)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                     m"This attribute denotes the priority of the port. 
        The range is 0x00 to 0x00FF (0 to 255).(2 bytes)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                     �"This attribute provides the cost contribution of the port to the path cost 
        towards the spanning tree root bridge. The range is 0x0001 to 0xFFFF (1 to 65535).(2 bytes)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                     �"This Boolean attribute indicates whether or not STP LAN topology change detection 
        is enabled at this port. The value TRUE means enabled.(1 byte)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                    B"This attribute identifies the frame encapsulation method that is used.
        0x00: identification by ATM VC;
        0x01: LLC encapsulation;
        This attribute is effective only for ports towards the ANI side of the MAC bridge. 
        Upon autonomous instantiation, the value 0x00 is used.
        (1 byte)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                    �"This attribute indicates whether LAN FCS (Frame Check Sequence) bytes are 
        forwarded (value 0x00) or discarded (value 0x01). This applies in both directions of 
        transmission, and applies regardless of EncapsulationMethod. 
        This attribute is effective only for ports towards the ANI side of the MAC bridge. 
        Upon autonomous instantiation, the value 0x00 is used.(1 byte)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                     �"This attribute indicates the Physical MAC address used by the Port as defined by 
        the TPPointer when the TPType is set to LAN.(6 bytes)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                     �"This managed entity is used to organize and record data that is associated with 
            a bridge port. Some of the data is volatile.
            This managed entity is associated with one instance of a MACBridgePortConfigurationData." :"G.983.2 section 7.3.33 MAC Bridge port filter table data"                     7"It is entry in the zxGponUNIBridgePortMacFilterTable."                       :"This attribute specifies the MAC address being filtered." :"G.983.2 section 7.3.33 MAC Bridge port filter table data"                     -"This attribute specifies the filter action." :"G.983.2 section 7.3.33 MAC Bridge port filter table data"                     7"This attribute specifies the operation of this entry." :"G.983.2 section 7.3.33 MAC Bridge port filter table data"                     �"This managed entity is used to organize and record data that is associated with 
            a bridge port. Some of the data is volatile.
            This managed entity is associated with one instance of a MACBridgePortConfigurationData." :"G.983.2 section 7.3.33 MAC Bridge port filter table data"                     :"It is entry in the zxGponUpLinkBridgePortMacFilterTable."                       :"This attribute specifies the MAC address being filtered." :"G.983.2 section 7.3.33 MAC Bridge port filter table data"                     -"This attribute specifies the filter action." :"G.983.2 section 7.3.33 MAC Bridge port filter table data"                     7"This attribute specifies the operation of this entry." :"G.983.2 section 7.3.33 MAC Bridge port filter table data"                    "This managed entity is used to associate the priorities of 802.1P priority tagged 
            frames of a certain Ethernet UNI with a specific connection.
            One instance of this ME may be associated with zero or one instance of the PPTP UNI ME." ""                     <"It is entry in the zxGponUNIExDot1pMapServiceProfileTable."                       �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 000 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 001 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 010 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 011 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 100 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 101 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 110 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 111 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                    %"This managed entity is used to associate the priorities of 802.1P priority tagged 
            frames of a certain UpLink with a specific connection.
            One instance of this ME may be associated with zero or one instance of the MAC 
            bridge port configuration data ME." ""                     ?"It is entry in the zxGponUpLinkExDot1pMapServiceProfileTable."                       �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 000 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 001 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 010 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 011 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 100 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 101 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 110 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                     �"This attribute represents the upstream queue id that is 
        associated with P-Bit = 111 tagged frames. The value 0x0000 is a null pointer.(2 bytes)" ""                    "This managed entity provides an alternate approach to address filtering than that 
            supported through MACBridgePortFilterTableData.
            This managed entity is associated with one instance of a MACBridgePortConfigurationData managed entity." ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     ?"It is entry in the zxGponUNIMACBridgePortEthFrameFilterTable."                       �"This attribute indicates whether IPv4Multicast Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether Ipv6Multicast Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether IPv4Broadcast Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether RARP Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether IPX Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether NetBEUI Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether AppleTalk Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether BridgeManagementInformation Ether types are 
        forwarded (value 0x00) or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether ARP Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether PPPoE Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                    "This managed entity provides an alternate approach to address filtering than that 
            supported through MACBridgePortFilterTableData.
            This managed entity is associated with one instance of a MACBridgePortConfigurationData managed entity." ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     B"It is entry in the zxGponUpLinkMACBridgePortEthFrameFilterTable."                       �"This attribute indicates whether IPv4Multicast Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether Ipv6Multicast Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether IPv4Broadcast Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether RARP Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether IPX Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether NetBEUI Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether AppleTalk Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether BridgeManagementInformation Ether types are 
        forwarded (value 0x00) or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether ARP Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether PPPoE Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                    >"This managed entity is used to organize data associated with VLAN tagging. 
            Instances of this managed entity are created/deleted at the request of the OLT.
            Zero or one instance of this managed entity may exist for each instance of 
            Physical Path Termination Point Ethernet UNI." B"G.983.2 section 7.3.49 VLAN tagging operation configuration data"                     2"It is entry in the zxGponVLANTagOperConfigTable."                      �"This attribute selects how upstream VLAN tagging is sent.  
        Valid values are as follows:
        0x01 (upstream frame is sent 'as is,' regardless of whether or not the received frame is tagged)  
        0x02 (The upstream frame is sent as tagged whether or not the received frame is tagged.  TCI, consisting of VID, CFI and user priority, is attached or overwritten by using the Upstream VLAN Tag TCI Value.). 
        0x03 (The upstream frame is sent as tagged whether or not the received frame is tagged.  If the received frame is tagged, a second tag (Q-n-Q) is added to the frame. If the received frame is not tagged a tag is attached to the frame. TCI, consisting of VID, CFI and user priority, is attached or added by using the Upstream VLAN Tag TCI Value.).
        0x04 (The upstream untagged frame is attached with the defined VLAN tag TCI value. The upstream tagged frame is forwarded unchanged).
       (1 byte)" B"G.983.2 section 7.3.49 VLAN tagging operation configuration data"                     �"This attribute indicates the TCI value for upstream VLAN tagging. It is used when the Upstream VLAN Tagging Operation Mode is 0x02, 0x03, or 0x04. Any 2-byte value is acceptable.(2 bytes)" B"G.983.2 section 7.3.49 VLAN tagging operation configuration data"                    �"This attribute selects whether or not downstream VLAN tagging is sent. 
        Valid values are as follows:
        0x01 (downstream frame is sent 'as is', regardless of whether or not the received frame is tagged) 
        0x02 (The downstream frame is sent as untagged whether or not the received frame is tagged).
        0x03 (If the received frame is tagged with defined VLAN tag TCI value, the outer tag is stripped. 
              Otherwise, the tagged frame is forwarded unchanged)(1 byte)" B"G.983.2 section 7.3.49 VLAN tagging operation configuration data"                     "" B"G.983.2 section 7.3.49 VLAN tagging operation configuration data"                    �"This managed entity is used to organize data associated with VLAN tagging. 
            Instances of this managed entity are created/deleted at the request of the OLT.
            Zero or one instance of this managed entity may exist for each instance of MAC 
            Bridge Port Configuration Data which is associated with Interworking VCC Termination 
            Point (PON side) or Physical Path Termination Point Ethernet UNI." 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     5"It is entry in the zxGponUNIVLANTagFilterModeTable."                      %"When a frame is received, the frame is processed according to the following Forward 
        Operations. The operations are invoked based on the value of VID, user priority, or 
        the entire TCI or whether or not the TCI field exists. This attribute indicates the 
        received frame is treated as indicated below.(1 byte)
        !!!!!!mode5/6/9/10 is no used currently!!!!!!! 
        tag-filter-action      untag-filter-action      forward-mode
        'transparent'          'transparent'            'mode0'
        'discard'              'transparent'            'mode1'
        'transparent'          'discard'                'mode2'
        'vid-filter'           'transparent'            'mode3'
        'vid-filter'           'discard'                'mode4'
        'prio-filter'          'transparent'            'mode7'
        'prio-filter'          'discard'                'mode8'
        'prio-vid-filter'      'transparent'            'mode11'
        'prio-vid-filter'      'discard'                'mode12'
        " 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     `"This attribute provides the number of entries in the VLAN Filter Table that are valid.(1 byte)" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                    �"This managed entity is used to organize data associated with VLAN tagging. 
            Instances of this managed entity are created/deleted at the request of the OLT.
            Zero or one instance of this managed entity may exist for each instance of MAC 
            Bridge Port Configuration Data which is associated with Interworking VCC Termination 
            Point (PON side) or Physical Path Termination Point Ethernet UNI." 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     1"It is entry in the zxGponUNIVLANTagFilterTable."                       Z"This attribute specifies the TCI value which is provisioned at a bridging port.(2 bytes)" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     `"This attribute provides the number of entries in the VLAN Filter Table that are valid.(1 byte)" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                    �"This managed entity is used to organize data associated with VLAN tagging. 
            Instances of this managed entity are created/deleted at the request of the OLT.
            Zero or one instance of this managed entity may exist for each instance of MAC 
            Bridge Port Configuration Data which is associated with Interworking VCC Termination 
            Point (PON side) or Physical Path Termination Point Ethernet UNI." 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     8"It is entry in the zxGponUpLinkVLANTagFilterModeTable."                      $"When a frame is received, the frame is processed according to the following Forward 
        Operations. The operations are invoked based on the value of VID, user priority, or 
        the entire TCI or whether or not the TCI field exists. This attribute indicates the 
        received frame is treated as indicated below.(1 byte)
        !!!!!!mode5/6/9/10 is no used currently!!!!!!!
        tag-filter-action      untag-filter-action      forward-mode
        'transparent'          'transparent'            'mode0'
        'discard'              'transparent'            'mode1'
        'transparent'          'discard'                'mode2'
        'vid-filter'           'transparent'            'mode3'
        'vid-filter'           'discard'                'mode4'
        'prio-filter'          'transparent'            'mode7'
        'prio-filter'          'discard'                'mode8'
        'prio-vid-filter'      'transparent'            'mode11'
        'prio-vid-filter'      'discard'                'mode12'
        " 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     `"This attribute provides the number of entries in the VLAN Filter Table that are valid.(1 byte)" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                    �"This managed entity is used to organize data associated with VLAN tagging. 
            Instances of this managed entity are created/deleted at the request of the OLT.
            Zero or one instance of this managed entity may exist for each instance of MAC 
            Bridge Port Configuration Data which is associated with Interworking VCC Termination 
            Point (PON side) or Physical Path Termination Point Ethernet UNI." 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     4"It is entry in the zxGponUpLinkVLANTagFilterTable."                       Z"This attribute specifies the TCI value which is provisioned at a bridging port.(2 bytes)" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     `"This attribute provides the number of entries in the VLAN Filter Table that are valid.(1 byte)" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                    �"This managed entity is used to organize data associated with VLAN tagging. 
            Instances of this managed entity are created/deleted at the request of the OLT.
            Zero or one instance of this managed entity may exist for each instance of MAC 
            Bridge Port Configuration Data which is associated with Interworking VCC Termination 
            Point (PON side) or Physical Path Termination Point Ethernet UNI." 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     0"It is entry in the zxGponUpLinkVLANRangeTable."                       "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     "" +"G.984.4 MAC Bridge Port bridge table Data"                     2"It is entry in the zxGponMACBridgePortAddrTable."                       1"Number of addresses learned by this bridge port" +"G.984.4 MAC Bridge Port bridge table Data"                     �"This attribute identifies the MAC addresses learned by this bridge port.
         The first N*6 bytes is valid, N is determined by zxGponUNIMACBridgePortAddrNum." +"G.984.4 MAC Bridge Port bridge table Data"                     "" *"G.984.4 Multicast subscriber config info"                     2"It is entry in the zxGponUniMulticastGroupTable."                       "" ""                     "" ""                     "" ""                     "" ""                     "" ""                     "" +"G.984.4 MAC Bridge Port bridge table Data"                     3"It is entry in the zxGponBridgePortAddrListTable."                       "Index for getnext." +"G.984.4 MAC Bridge Port bridge table Data"                     ;"Total number of addresses entries related with this port." +"G.984.4 MAC Bridge Port bridge table Data"                     5"The number of addresses entries by current getnext." +"G.984.4 MAC Bridge Port bridge table Data"                    "This attribute identifies the MAC addresses learned by this bridge port.
         The first N*8 bytes is valid, N is determined by zxGponBridgePortAddrListCurrentNum.
         Each 8 bytes contain:
         - Information (2 bytes)
         - MAC address (6 bytes)
         The information bits are assigned as described below.
           Bit      Name              Setting
           1      Filter/forward    0: forward
                                1: filter
           2      Reserved            0
           3      Dynamic/static    0: this entry is statically assigned
                                1: this entry is dynamically learned
           4      Reserved            0
           16..5  Age                    Age in seconds (1..4095)
         " +"G.984.4 MAC Bridge Port bridge table Data"                     "" ""                     *"It is entry in the zxGponUNITPInfoTable."                      �"This attribute indicates the TP type related with this UNI.
        null: no related services;
        iwtp: uni is directly connected with an iwtp;
        mciwtp: uni is directly connected with an multicast iwtp;
        macbridge: uni is connected with a bridge;
        dot1p: uni is connected with an iwtp by 802.1p mapping;
        ces: uni is connected with ces service;
        vbridge: uni is connected with a virtual bridge;  
        " ""                     "" ""                     4"It is entry in the zxGponOntBridgeCapabilityTable."                       N"This attribute indicates the maximum bridge group num supported on this ONT." ""                     S"This attribute indicates the maximum uplink num per bridge supported on this ONT." ""                    �"The VoIP Configuration Data defines the configuration for VoIP in the ONT. 
            The OLT uses this ME to discover the VoIP signaling protocols and configuration 
            methods supported by this ONT. The OLT then uses this ME to select the desired 
            signaling protocol and configuration method. The entity is conditionally required 
            for ONTs that offer VoIP services." *"G.983.2 section 7.3.101 VoIP Config Data"                     /"It is entry in the zxGponVoIPConfigDataTable."                      "This attribute defines, using a bitmap, the VoIP Signaling Protocols supported in the 
        ONT. Valid bitmap values are: 
        0x00 = None, VoIP not supported
        0x01 = SIP
        0x02 = H.248
        0x04 = MGCP
        0xFF = NA
        (1 byte)" *"G.983.2 section 7.3.101 VoIP Config Data"                    1"This attribute identifies the type of VoIP signaling protocol used for ONT.  
        Only one type of protocol is allowed. Valid values are: 
        0x00 = None
        0x01 = SIP
        0x02 = H.248
        0x03 = MGCP
        0xFF = Selected by Non-OMCI Management Interface
        (1 byte)" *"G.983.2 section 7.3.101 VoIP Config Data"                    "This attribute indicates, using a bitmap, the capabilities of the ONT with regard to VoIP service configuration:
        0x0001 indicates that the ONT is capable of using OMCI to configure its VoIP services.
        0x0002 indicates that the ONT is capable of working with configuration file retrieval to configure its VoIP services.
        0x0004 indicates that the ONT is capable of working with TR-69 to configure its VoIP services.
        0x0008 indicates that the ONT is capable of working with IETF sipping config framework to configure its VoIP services.
        Bits 5 - 24 are reserved for future use. 
        Bits 25 - 32 are reserved for proprietary vendor configuration capability indications.
        Default value is 0x0001.(4 bytes)
        " *"G.983.2 section 7.3.101 VoIP Config Data"                    �"Indicates to the ONT, which method should be used to configure the VoIP Service of the ONT.
         0x00 the ONT default - do not configure. 
         0x01 indicate use of OMCI for VoIP service configuration of the ONT. 
         0x02 indicate use of configuration file retrieval for VoIP service configuration of the ONT. 
         0x03 indicate use of TR-69 for VoIP service configuration of the ONT. 
         0x04 indicate use of IETF sipping config framework for VoIP service configuration of the ONT. 
         0x05 - 0xF0 are reserved for future use. 
         0xF1 - 0xFF are reserved for proprietary vendor configuration methods.
         Default value is 0x00 (R, W) (mandatory) (1 bytes)
        " *"G.983.2 section 7.3.101 VoIP Config Data"                    "If this attribute is set to any value other than 0xFFFF, it points to a Network Address managed entity. 
        In this case, the Network Address ME indicates the address of the server to contact using the method 
        indicated in the VoIP Configuration Method Used attribute of the VoIP Service ME.
        If this attribute is set to 0xFFFF, an address is not defined by this attribute. 
        However, the address may be defined by other methods such as deriving the address from the ONT Identifier 
        attribute of the IP Host Config Data ME, and using a well-known URI schema. 
        Default value is 0xFFFF (R, W) (mandatory) (2 bytes)
        Attention!! We hide the Network Address ME, using OCTET STRING instead! 
        But now, it may be unused.
        " *"G.983.2 section 7.3.101 VoIP Config Data"                    �"The IP Host Config Data contains the configuration for IP based services that are offered 
            on the ONT.  This entity is conditionally required for ONTs that offer IP services from the 
            ONT itself, and its presence allows additional features to be supported with the ONT.
            Instances of this managed entity are automatically created by the ONT after initialization 
            if IP Host services are available.
            " ,"G.983.2 section 7.3.98 IP Host Config Data"                     1"It is entry in the zxGponIPHostConfigDataTable."                       �"This attribute provides a unique number for each instance of this managed entity.  
        The ONT creates as many instances as there are independent IP stacks on the ONT.
        (1~n)" ,"G.983.2 section 7.3.98 IP Host Config Data"                    �"This attribute is a bitfield that is used to enable or disable IP related options. 
        A bit value of 1 enables the option and a bit value of 0 disables the option. 
        The options are assigned as follows:
        0x1 = Enable DHCP
        0x2 = Respond to PINGs
        0x4 = Respond to TraceRoute messages.
        0x8 - 0x80 = Reserved for future use.
        (R, W) (mandatory) (1 byte)" ,"G.983.2 section 7.3.98 IP Host Config Data"                     X"This attribute indicates the MAC address used by the IP Node (R) (mandatory) (6 bytes)" ,"G.983.2 section 7.3.98 IP Host Config Data"                    �"A unique ONT identifier string. This string, if set is provided as part of the DHCP request 
        to allow an alternative to MAC Address in retrieving the DHCP parameters of the specified ONT. 
        The string may be up to 25 bytes long. If the string length is smaller than 25 bytes, it must 
        be null terminated. Default value is 25 null bytes. (R, W) (mandatory) (25 bytes)
        " ,"G.983.2 section 7.3.98 IP Host Config Data"                     �"Address used for all IP services hosted by the ONT, and has a default value of 0x0 [not set].  
        If this value is set, it will override any values returned in DHCP. (R, W) (mandatory) (4 bytes)" ,"G.983.2 section 7.3.98 IP Host Config Data"                     �"Subnet mask for the IP services hosted by the ONT, and has a default value of 0x0 [not set].  
        If this value is set, it will override any values returned in DHCP. (R, W) (mandatory) (4 bytes)" ,"G.983.2 section 7.3.98 IP Host Config Data"                     �"Default Gateway Address used for all IP services hosted by the ONT, and has a default value of 0x0 [not set].  
        If this value is set, it will override any values returned in DHCP. (R, W) (mandatory) (4 bytes)" ,"G.983.2 section 7.3.98 IP Host Config Data"                     �"Address used for the Primary DNS server for the IP service, and has a default value of 0x0 [not set].  
        If this value is set, it will override any values returned in DHCP. (R, W) (mandatory) (4 bytes)" ,"G.983.2 section 7.3.98 IP Host Config Data"                     �"Address used for the Secondary DNS server for the IP service, and has a default value of 0x0 [not set].  
        If this value is set, it will override any values returned in DHCP. (R, W) (mandatory) (4 bytes)" ,"G.983.2 section 7.3.98 IP Host Config Data"                     �"Current address for the IP service hosted by the ONT.  
        This attribute is updated by the ONT if a new address is assigned by DHCP. (R) (optional) (4 bytes)" ,"G.983.2 section 7.3.98 IP Host Config Data"                     �"Current subnet mask for the IP service.  
        This attribute is updated by the ONT if a new mask is assigned by DHCP. (R) (optional) (4 bytes)" ,"G.983.2 section 7.3.98 IP Host Config Data"                     �"Current default Gateway Address for the IP service.  
        This attribute is updated by the ONT if a new gateway is assigned by DHCP. (R) (optional) (4 bytes)" ,"G.983.2 section 7.3.98 IP Host Config Data"                     �"Current address used for the Primary DNS server for the IP service.  
        This attribute is updated by the ONT if a new address is assigned by DHCP. (R) (optional) (4 bytes)" ,"G.983.2 section 7.3.98 IP Host Config Data"                     �"Current address used for the Secondary DNS server for the IP service.  
        This attribute is updated by the ONT if a new address is assigned by DHCP. (R) (optional) (4 bytes)" ,"G.983.2 section 7.3.98 IP Host Config Data"                    g"If domain name is indicated by DHCP, it is presented here. If domain name is not indicated, 
        this attribute is set to an empty string. 
        The string may be up to 25 bytes long. If the string length is smaller than 25 bytes, 
        it must be null terminated.  
        Default value is 25 null bytes. (R) (mandatory) (25 bytes)
        " ,"G.983.2 section 7.3.98 IP Host Config Data"                    c"If host name is indicated by DHCP, it is presented here. If host name is not indicated, 
        this attribute is set to an empty string. 
        The string may be up to 25 bytes long. If the string length is smaller than 25 bytes, 
        it must be null terminated.  
        Default value is 25 null bytes. (R) (mandatory) (25 bytes)
        " ,"G.983.2 section 7.3.98 IP Host Config Data"                    "This managed entity is used to organize and record data that is associated with 
            a bridge port. Some of the data is volatile.
            Zero or more instances of this managed entity shall be contained in an instance of the 
            MACBridgeServiceProfile." M"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data, details in G.983.2"                     8"It is entry in the zxGponHostMACBridgePortConfigTable."                       J"This attribute identifies the MAC bridge id associated with the ip host." ""                     �"This attribute identifies the MAC bridge port associated with the port.
        The first 2 bytes stand for the slot and bridge group id;
        The second 2 bytes stand for the bridge port num.(4 bytes)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                     m"This attribute denotes the priority of the port. 
        The range is 0x00 to 0x00FF (0 to 255).(2 bytes)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                     �"This attribute provides the cost contribution of the port to the path cost 
        towards the spanning tree root bridge. The range is 0x0001 to 0xFFFF (1 to 65535).(2 bytes)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                     �"This Boolean attribute indicates whether or not STP LAN topology change detection 
        is enabled at this port. The value TRUE means enabled.(1 byte)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                    B"This attribute identifies the frame encapsulation method that is used.
        0x00: identification by ATM VC;
        0x01: LLC encapsulation;
        This attribute is effective only for ports towards the ANI side of the MAC bridge. 
        Upon autonomous instantiation, the value 0x00 is used.
        (1 byte)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                    �"This attribute indicates whether LAN FCS (Frame Check Sequence) bytes are 
        forwarded (value 0x00) or discarded (value 0x01). This applies in both directions of 
        transmission, and applies regardless of EncapsulationMethod. 
        This attribute is effective only for ports towards the ANI side of the MAC bridge. 
        Upon autonomous instantiation, the value 0x00 is used.(1 byte)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                     �"This attribute indicates the Physical MAC address used by the Port as defined by 
        the TPPointer when the TPType is set to LAN.(6 bytes)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                     �"This attribute indicates the Physical MAC address used by the Port as defined by 
        the TPPointer when the TPType is set to LAN.(6 bytes)" 9"G.984.4 section 9.3.9 MAC Bridge Port Configuation Data"                     �"One instance of this managed entity is related to a TCP/UDP Config Data object.  
            This managed entity may be referenced by one or more SIP User Data managed entities." /"G.983.2 section 7.3.103 SIP Agent Config Data"                     3"It is entry in the zxGponSIPAgentConfigDataTable."                       �"This attribute provides a unique number for each instance of this managed entity.
        (1~n)(R, Set-by-create) (mandatory) (2 bytes)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                     �"This attribute provides a pointer to a LargeString ME  that contains the name (IP address or URI) 
        of the SIP Proxy Server for SIP signaling messages. (R, W, Set-by-create) (mandatory) (2 bytes)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                     �"This attribute provides a pointer to a LargeString ME that contains the name (IP address or URI) 
        of the SIP outbound Proxy Server for SIP signaling messages.  (R, W, Set-by-create) (mandatory) (2 bytes)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                     �"This attribute defines the Primary SIP DNS IP Address.  If this value is zero, the Primary SIP DNS should not be used.  
        Default value of 0.  (R, W, Set-by-create) (mandatory) (4 bytes)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                     �"This attribute defines the Secondary SIP DNS IP Address. If this value is zero, the Secondary SIP DNS should not be used.  
        Default value of 0.  (R, W, Set-by-create) (mandatory) (4 bytes)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                     �"This attribute indicates the UDP/TCP port num.
        This attribute associates the SIP Agent with the TCP/UDP service to be used for communication with the SIP Server.  
        Default value is 0xFFFF.  (R, W) (mandatory) (2 bytes)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                     �"This attribute indicates the UDP/TCP port num.
        This attribute associates the SIP Agent with the TCP/UDP service to be used for communication with the SIP Server.  
        Default value is 0xFFFF.  (R, W) (mandatory) (2 bytes)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                    G"This attribute defines the SIP Registration Expiration Time in seconds.  If this value is zero, 
        the SIP Agent will not add an expiration time to the registration requests, and will not perform 
        re-registration.  
        The default value used at Create shall be 3600 seconds. (R, W) (mandatory) (4 bytes)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                     �"This attribute provides the time in seconds prior to timeout that the SIP Agent should start 
        the re-registration process.  The default value used at Create shall be 360 seconds. (R, W) (mandatory) (4 bytes)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                    ="This attribute provides a pointer to a LargeString ME that contains the host or domain part of 
        the SIP Address of Record for users connected to this ONT. A 0xFFFF indicates the current address 
        in the IP Host Config ME is used. Default value is 0xFFFF. (R, W, Set-by-create) (mandatory) (2 bytes)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                    E"This attribute is used to show the current status of the SIP Agent.  
        Values are as follows: 
        0: ok/initial, 
        1: Connected, 
        2: Failed-ICMP Error, 
        3: Failed-Malformed-response, 
        4: Failed-Inadequate Info Response, 
        5: Failed-Timeout.  (R) (mandatory) (1 byte)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                    ;"This attribute provides a pointer to a Network Address ME that contains the name 
        (IP address or resolved name) of the SIP Registrar Server for SIP signaling messages.  
        Examples: '10.10.10.10' and 'proxy.voip.net'.  
        Default value is 0xFFFF. (R, W, Set-by-create) (mandatory) (2 bytes)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                     "" /"G.983.2 section 7.3.103 SIP Agent Config Data"                     "" /"G.983.2 section 7.3.103 SIP Agent Config Data"                     "" /"G.983.2 section 7.3.103 SIP Agent Config Data"                     "" /"G.983.2 section 7.3.103 SIP Agent Config Data"                    " This attribute identifies the SIP Gateway softswitch vendor.  
        The format is four ASCII coded alphabetic characters [A - Z] as defined in ANSI T1.220,  
        All NULL characters indicates no particular vendor. (R,W, Set-by-create) (mandatory) (4 byte)" /"G.983.2 section 7.3.103 SIP Agent Config Data"                     " " /"G.983.2 section 7.3.103 SIP Agent Config Data"                     \"An instance of this managed entity may be referenced by one VoIP Voice CTP managed entity." '"G.983.2 section 7.3.106 SIP User Data"                     ,"It is entry in the zxGponSIPUserDataTable."                       y"Points to the SIP Agent Config Data ME to be used for signaling.  
        (R, W, Set-by-create) (mandatory) (2 bytes)" '"G.983.2 section 7.3.106 SIP User Data"                    u"This attribute provides a pointer to a LargeString ME that contains the user identification 
        part of the Address of Record. This can take the form of  an alphanumeric string or the 
        directory number used to reference the user in the network.  0xFFFF indicates that no user 
        part AOR has been defined. (R, W, Set-by-create) (mandatory) (2 bytes)" '"G.983.2 section 7.3.106 SIP User Data"                     �"This attribute defines the Customer ID used for outgoing SIP messages display attribute in ASCII 
        string format.   Default value shall be null (all zeros).  (R, W) (mandatory) (25 bytes)" '"G.983.2 section 7.3.106 SIP User Data"                     �"A pointer to an Authentication Security Method ME that contains a SIP user name and password used 
        for authentication.  0xFFFF indicates no username/password. (R, W, Set-by-create) (mandatory) (2 bytes)" '"G.983.2 section 7.3.106 SIP User Data"                     �"A pointer to an Authentication Security Method ME that contains a SIP user name and password used 
        for authentication.  0xFFFF indicates no username/password. (R, W, Set-by-create) (mandatory) (2 bytes)" '"G.983.2 section 7.3.106 SIP User Data"                    C"This attribute provides a pointer to a Network Address ME that contains the name (IP address or URI) 
        of the SIP Voice Mail Server for SIP signaling messages.  A value of  0xFFFF indicates that no 
        Voice Mail subscription is required. Default value is 0xFFFF. (R, W, Set by Create) (mandatory) (2 bytes)" '"G.983.2 section 7.3.106 SIP User Data"                     "" '"G.983.2 section 7.3.106 SIP User Data"                     "" '"G.983.2 section 7.3.106 SIP User Data"                     "" '"G.983.2 section 7.3.106 SIP User Data"                     "" '"G.983.2 section 7.3.106 SIP User Data"                    4"This attribute defines the Voice Mail server subscription  Expiration Time in seconds. 
        If this value is zero, the SIP Agent will use the implementation specific default for this ONT/ONU. 
        The default value used at Create shall be 3600 seconds. (R, W, Set-by-create) (mandatory) (4 bytes)" '"G.983.2 section 7.3.106 SIP User Data"                     �"Pointer to Network Dial Plan ME. A value of 0xFFFF indicates that no network dial plan is available. 
        Default value is 0xFFFF. (R, W, Set-by-create) (mandatory) (2 bytes)" '"G.983.2 section 7.3.106 SIP User Data"                     �"Pointer to Application Services Profile ME. A value of 0xFFFF indicates that no Application 
        Services Profile is available. Default value is 0xFFFF. (R, W, Set-by-create) (mandatory) (2 bytes)" '"G.983.2 section 7.3.106 SIP User Data"                     �"This attribute contains a pointer to the Feature Access Codes ME for this subscriber. 
        A value of 0xFFFF indicates that no Feature Access Codes ME is available. Default value 
        is 0xFFFF. (R, W, Set-by-create) (mandatory) (2 bytes)" '"G.983.2 section 7.3.106 SIP User Data"                     �"This attribute contains a release timer defined in seconds. 0x0 = Use internal default, 
        Default value is 10 sec. (R, W) (optional)(1 byte)" '"G.983.2 section 7.3.106 SIP User Data"                     �"This attribute defines the length of time in seconds for the receiver off hook condition before 
        ROH tone is applied. 0x0 = ROH is disabled. Default value is 15 seconds. (R,W) (optional) (1 byte)" '"G.983.2 section 7.3.106 SIP User Data"                     "" '"G.983.2 section 7.3.106 SIP User Data"                     �"An instance of this managed entity refers to one PPTP POTS UNI managed entity, one VoIP Media Profile, and one SIP User Data managed entity or MGC Config Data ME." ("G.983.2 section 7.3.110 VoIP Voice CTP"                     -"It is entry in the zxGponVoIPVoiceCTPTable."                       M"Pointer to VOIP Media Profile.  (R, W, Set-by-create) (mandatory) (2 bytes)" ("G.983.2 section 7.3.110 VoIP Voice CTP"                    "This attribute specifies whether 'loop start' (0x01), 'ground start' (0x02), 
        'loop reverse battery' (0x03), 'coin first' (0x04), 'dial tone first' (0x05), 
        or 'multi-party' (0x06) signaling is employed.  (R, Set-by-create) (mandatory) (1 byte)" ("G.983.2 section 7.3.110 VoIP Voice CTP"                     "" ("G.983.2 section 7.3.110 VoIP Voice CTP"                     o"This attribute specifies the id of MGC related with POTS UNI.
        It's used when VoIP protocol is H.248." ("G.983.2 section 7.3.110 VoIP Voice CTP"                     v"An instance of this managed entity may be associated with one or more instances of the SIP User Data managed entity." 1"G.983.2 section 7.3.112 Network Dial Plan Table"                     0"It is entry in the zxGponNetworkDialPlanTable."                       }"This attribute provides a unique number for each instance of this managed entity.  (R, Set-by-create) (mandatory) (2 bytes)" 1"G.983.2 section 7.3.112 Network Dial Plan Table"                     ;"This attribute indicates the name of the dial plan table." 1"G.983.2 section 7.3.112 Network Dial Plan Table"                     �"    This attribute indicates the maximum number of dial plans that can be stored in the dial 
        plan table.  (R, Set-by-create) (mandatory) (2 bytes)" 1"G.983.2 section 7.3.112 Network Dial Plan Table"                     �"This attribute defines the critical dial timeout for digit map processing in milliseconds.  
        Default value is 4000ms.  (R, W, Set-by-create) (mandatory) (2 bytes)" 1"G.983.2 section 7.3.112 Network Dial Plan Table"                     �"This attribute defines the partial dial timeout for digit map processing in milliseconds.  
        Default value is 16000ms.  (R, W, Set-by-create) (mandatory) (2 bytes)" 1"G.983.2 section 7.3.112 Network Dial Plan Table"                    H"This attribute define the dial plan format standard that is supported in the ONT for VoIP.  
        Valid values include 0 = not defined,  1 = H.248 format with specific plan (table entries define 
        the dialing plan) 2=NSC format, 3=Vendor specific format.  Default is 1.  (R, W, Set-by-create) (mandatory) (1 bytes)" 1"G.983.2 section 7.3.112 Network Dial Plan Table"                     '"Forbidden to modify if not equal zero" 1"G.983.2 section 7.3.112 Network Dial Plan Table"                     "" 1"G.983.2 section 7.3.112 Network Dial Plan Table"                     �"An instance of this managed entity may be associated with one or more instances of the SIP User Data managed entity.
            Here, the operations of Dial Plan Table are defined." 1"G.983.2 section 7.3.112 Network Dial Plan Table"                     9"It is entry in the zxGponNetworkDialPlanOperationTable."                       I"A unique identifier of a dial plan within the dial plan table (1 byte);" 1"G.983.2 section 7.3.112 Network Dial Plan Table"                     �"Token used by the VoIP service to process dial plans.  This ASCII string is typically 
        delimited by ':'.  (R, W) (conditionally required) (28 bytes)" 1"G.983.2 section 7.3.112 Network Dial Plan Table"                     "" 1"G.983.2 section 7.3.112 Network Dial Plan Table"                     K"An instance of this managed entity is referenced by the SIP User Data ME." :"G.983.2 section 7.3.113 VoIP Application Service Profile"                     6"It is entry in the zxGponVoIPAppServiceProfileTable."                       �"This attribute provides a unique number for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (2 bytes)" :"G.983.2 section 7.3.113 VoIP Application Service Profile"                    b"This attribute contains a bitmap of caller ID features. Bit clear is disabled 
        and bit set is enabled. The bit position values are:
        0x01 Calling Number
        0x02 Calling Name
        0x04 CID blocking (both number and name)
        0x08 CID number- Permanent presentation status for number (0 = Public, 1 = Private)
        0x10 CID name - Permanent presentation status for name (0 = Public, 1 = Private)
        0x20 Anonymous CID blocking (ACR) 
        0x40 - 0x80 not used
        The default value shall be disabled (0).  (R, W, Set-by-create) (mandatory) (1 byte) 
        " :"G.983.2 section 7.3.113 VoIP Application Service Profile"                    Z"This attribute contains a bitmap of caller waiting features. Bit clear is disabled 
        and bit set is enabled. The bit position values are:
        0x01 call waiting
        0x02 Caller ID Announcement 
        0x04 - 0x80 not used
        The default value shall be disabled (0).  (R, W, Set-by-create) (mandatory) (1 byte)
        " :"G.983.2 section 7.3.113 VoIP Application Service Profile"                    �"This attribute contains a bitmap of call processing features. Bit clear is disabled 
        and bit set is enabled. The bit position values are:
        0x0001 3way
        0x0002 call transfer
        0x0004 call hold 
        0x0008 call park
        0x0010 do not disturb
        0x0020 Flash on Emergency Service call. (Flash is to be processed during an Emergency Service call)
        0x0040 Emergency Service originating hold (determines if a call clearing is to be performed on an on-hook during an Emergency Service call)
        0x0080 6way
        0x0100 - 0x8000 not used
        The default value shall be disabled (0).  (R, W, Set-by-create) (mandatory) (2 bytes)
        " :"G.983.2 section 7.3.113 VoIP Application Service Profile"                    �"This attribute contains a bitmap of call presentation features. Bit clear is disabled 
        and bit set is enabled. The bit position values are:
        0x0001 Message Waiting Indication Splash Ring
        0x0002 Message Waiting Indication Special Dial tone
        0x0004 Message Waiting Indication Visual Indication
        0x0008 Call Forwarding Indication
        0x0010 - 0x8000 not used
        The default value shall be disabled (0).  (R, W, Set-by-create) (mandatory) (2 bytes)
        " :"G.983.2 section 7.3.113 VoIP Application Service Profile"                    x"This attribute contains a bitmap of characteristics associated with the direct connect 
        feature. Bit clear is disabled and bit set is enabled. The bit position values are:
        0x01 direct connect feature enabled
        0x02 dial tone feature delay option
        The default value shall be disabled (0).  (R, W, Set-by-create) (mandatory) (1 byte)
        " :"G.983.2 section 7.3.113 VoIP Application Service Profile"                    }"This attribute points to a Network Address managed entity. 
        If this attribute is set to 0xFFFF, no URI is defined. 
        If this attribute is set to any other value, it should point to a Network Address managed entity. Network Address ME indicates the URI of the Direct Connect.
        Default value is 0xFFFF. (R, W, Set-by-create) (mandatory) (2 bytes)
        " :"G.983.2 section 7.3.113 VoIP Application Service Profile"                    �"This attribute points to a Network Address managed entity. 
        If this attribute is set to 0xFFFF, no URI is defined. 
        If this attribute is set to any other value, it should point to a Network Address 
        managed entity. Network Address ME indicates the URI of the Bridged Line Agent.
        Default value is 0xFFFF. (R, W, Set-by-create) (mandatory) (2 bytes)
        " :"G.983.2 section 7.3.113 VoIP Application Service Profile"                    �"This attribute points to a Network Address managed entity. 
        If this attribute is set to 0xFFFF, no URI is defined. 
        If this attribute is set to any other value, it should point to a Network Address 
        managed entity. Network Address ME indicates the URI of the Conference Factory.
        Default value is 0xFFFF. (R, W, Set-by-create) (mandatory) (2 bytes)
        " :"G.983.2 section 7.3.113 VoIP Application Service Profile"                     "" :"G.983.2 section 7.3.113 VoIP Application Service Profile"                     K"An instance of this managed entity is referenced by the SIP User Data ME." 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     6"It is entry in the zxGponVoIPFeatureAccessCodeTable."                       �"This attribute provides a unique number for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (2 bytes)" 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     e"This attribute defines the feature access code for cancel call waiting. (R, W) (optional) (5 bytes)" 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     ["This attribute defines the feature access code for call hold. (R, W) (optional) (5 bytes)" 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     ["This attribute defines the feature access code for call park. (R, W) (optional) (5 bytes)" 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     _"This attribute defines the feature access code for CIDS activate. (R, W) (optional) (5 bytes)" 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     a"This attribute defines the feature access code for CIDS deactivate. (R, W) (optional) (5 bytes)" 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     h"This attribute defines the feature access code to activate do not disturb. (R, W) (optional) (5 bytes)" 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     j"This attribute defines the feature access code to deactivate do not disturb. (R, W) (optional) (5 bytes)" 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     `"This attribute defines the feature access code for do not disturb. (R, W) (optional) (5 bytes)" 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     `" This attribute defines the emergency service number. Example: 911 (R, W) (optional) (5 bytes)" 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     j"This attribute defines the feature access code for in home intercom service. (R, W) (optional) (5 bytes)" 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     "" 3"G.983.2 section 7.3.115 VoIP Feature Access Codes"                     f"An instance of this managed entity may be referenced by one or more VoIP Voice CTP managed entities." ,"G.983.2 section 7.3.107 VoIP Media Profile"                     1"It is entry in the zxGponVoIPMediaProfileTable."                       �"This attribute provides a unique number for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (2 bytes)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     �"This attribute provides a unique number for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (2 bytes)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     �"Selects the fax mode, values are 0 - passthru, 1 - ITU-T T.38. 
        Default value is 0 (R, W, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     ~"Specifies the codec selection  as defined by RFC 3551.  Default Value is 0-PCMU. (R,  W, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     �"This attribute selects the Packet Period Selection interval in milliseconds.  Default value is 10. Valid values are 10 - 30 ms. (R, W, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     �"This attribute indicates whether silence suppression is on or off.  Valid values are 0 = off and 1 = on.  (R, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     {"Specifies the codec selection as defined by RFC 3551. Default Value is 0-PCMU. (R, W, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     �"This attribute selects the Packet Period Selection interval in milliseconds.  Default value is 10. Valid values are 10 - 30 ms. (R, W, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     �"This attribute indicates whether silence suppression is on or off.  Valid values are 0 = off and 1 = on.  (R, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     {"Specifies the codec selection as defined by RFC 3551. Default Value is 0-PCMU. (R, W, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     �"This attribute selects the Packet Period Selection interval in milliseconds.  Default value is 10. Valid values are 10 - 30 ms. (R,  W, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     �"This attribute indicates whether silence suppression is on or off.  Valid values are 0 = off and 1 = on.  (R, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     {"Specifies the codec selection as defined by RFC 3551. Default Value is 0-PCMU. (R, W, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     �"This attribute selects the Packet Period Selection interval in milliseconds.  Default value is 10. Valid values are 10 - 30 ms. (R, W, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     �"This attribute indicates whether silence suppression is on or off.  Valid values are 0 = off and 1 = on.  (R, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                    "This attribute defines the Out-of-band DMTF Enable. When enabled (value = 1) , DTMF tones are carried out of band via RTP or the associated signaling protocol. When disabled (value = 0), DTMF tones are carried in the PCM. Default value of 1. (R, W, Set-by-create) (mandatory) (1 byte)" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     j"This attribute provides the announcement to the customer going off-hook when no call has been attempted." 2"G.983.2 section 7.3.24 Voice service profile AAL"                     �"This attribute provides the target value of the jitter buffer. The system will try to maintain the jitter buffer at the target value. 
        Units are in milliseconds. (R, W, Set-by-create) (mandatory for AAL2) (2 bytes)" 2"G.983.2 section 7.3.24 Voice service profile AAL"                     �"This attribute provides the maximum depth of the jitter buffer associated with this service. 
        Units are in milliseconds. (R, W, Set-by-create) (mandatory for AAL 2) (2 bytes)" 2"G.983.2 section 7.3.24 Voice service profile AAL"                     �"This Boolean attribute indicates whether echo cancellation is on or off, 
        where the value TRUE implies that it is on. (R, Set-by-create) (mandatory) (1 byte)" 2"G.983.2 section 7.3.24 Voice service profile AAL"                     �"This attribute controls which variant of POTS signalling shall be used on the associated UNIs. 
        The value used is equal to the 'country code'. (R, Set-by-Create) (optional) (2 bytes)" 2"G.983.2 section 7.3.24 Voice service profile AAL"                     �"This attribute defines the base RTP port that should be used for voice traffic. 
        Default is 50000 (R, W, Set-by-create) (mandatory) (2 bytes)" *"G.983.2 section 7.3.108 RTP Profile Data"                     �"This attribute defines the top end range RTP port used for voice traffic. 
        Default must be greater than LocalPortMin but is determined by vendor application. (R, W, Set-by-create) (optional) (2 bytes)" *"G.983.2 section 7.3.108 RTP Profile Data"                     �"Diffserv code point to be used for outgoing RTP packets for this profile. 
        Default value is Expedited Forwarding (EF) = 0x2E (0b00101110).  (R, W, Set-by-create) (mandatory) (1 byte)" *"G.983.2 section 7.3.108 RTP Profile Data"                     �"Enables or disables RTP piggyback events. 0x0 = Disabled. 0x1 = Enabled. 
        Default value is Disabled (0x0).  (R, W, Set-by-create) (mandatory) (1 byte)" *"G.983.2 section 7.3.108 RTP Profile Data"                     �"Enables or disables handling of tones via RTP Tone Events per RFC2833. 0x0 = Disabled. 0x1 = Enabled. 
        Default value is Disabled (0x0).  (R, W, Set-by-create) (mandatory) (1 byte)" *"G.983.2 section 7.3.108 RTP Profile Data"                    /"Enables or disables handling of DTMF via RTP DTMF Events per RFC2833. 
        This attribute is ignored unless the OOB DTMF attribute in the VoIP Media Profile ME is set to enabled. 0x0 = Disabled. 0x1 = Enabled. 
        Default value is Disabled (0x0).  (R, W, Set-by-create) (mandatory) (1 byte)" *"G.983.2 section 7.3.108 RTP Profile Data"                     �"Enables or disables handling of CAS via RTP CAS Events per RFC2833. 0x0 = Disabled. 0x1 = Enabled. 
        Default value is Disabled (0x0).  (R, W, Set-by-create) (mandatory) (1 byte)" *"G.983.2 section 7.3.108 RTP Profile Data"                     4"Forbidden to modify table entry if not equal zero." *"G.983.2 section 7.3.108 RTP Profile Data"                     "" ,"G.983.2 section 7.3.107 VoIP Media Profile"                     "" ""                     0"It is entry in the zxGponSIPAgentProfileTable."                       "" ""                     "" ""                     "" ""                     "" ""                     "" ""                     "" ""                     "" ""                     "" ""                     "" ""                     "" ""                     "" ""                     "" ""                     $"It is entry in the zxGponSIPTable."                       "" ""                     "" ""                     "" ""                     "" ""                     "" ""                    "This managed entity is used to organize data associated with VLAN tagging. 
            Instances of this managed entity are created/deleted at the request of the OLT.
            Zero or one instance of this managed entity may exist for each instance of 
            IP Host." B"G.983.2 section 7.3.49 VLAN tagging operation configuration data"                     8"It is entry in the zxGponIPHostVLANTagOperConfigTable."                      "This attribute selects how upstream VLAN tagging is sent.  
        Valid values are:
        0x00 (upstream frame is sent 'as is,' regardless of whether or not the received frame is tagged)  
        0x01 (The upstream frame is sent as tagged whether or not the received frame is tagged.  TCI, consisting of VID, CFI and user priority, is attached or overwritten by using the Upstream VLAN Tag TCI Value.). 
        0x02 (The upstream frame is sent as tagged whether or not the received frame is tagged.  If the received frame is tagged, a second tag (Q-n-Q) is added to the frame. If the received frame is not tagged a tag is attached to the frame. TCI, consisting of VID, CFI and user priority, is attached or added by using the Upstream VLAN Tag TCI Value.).
       (1 byte)" B"G.983.2 section 7.3.49 VLAN tagging operation configuration data"                     �"This attribute indicates the TCI value for upstream VLAN tagging. It is used when the Upstream VLAN Tagging Operation Mode is 0x01. Any 2-byte value is acceptable.(2 bytes)" B"G.983.2 section 7.3.49 VLAN tagging operation configuration data"                    9"This attribute selects whether or not downstream VLAN tagging is sent. 
        Valid values are 0x00 (downstream frame is sent 'as is', regardless of whether or not the received frame is tagged) 
        and 0x01 (The downstream frame is sent as untagged whether or not the received frame is tagged).(1 byte)" B"G.983.2 section 7.3.49 VLAN tagging operation configuration data"                    9"This attribute selects whether or not downstream VLAN tagging is sent. 
        Valid values are 0x00 (downstream frame is sent 'as is', regardless of whether or not the received frame is tagged) 
        and 0x01 (The downstream frame is sent as untagged whether or not the received frame is tagged).(1 byte)" B"G.983.2 section 7.3.49 VLAN tagging operation configuration data"                     �"This managed entity is used to organize and record data that is associated with 
            a bridge port. Some of the data is volatile.
            This managed entity is associated with one instance of a MACBridgePortConfigurationData." :"G.983.2 section 7.3.33 MAC Bridge port filter table data"                     :"It is entry in the zxGponIPHostBridgePortMacFilterTable."                       :"This attribute specifies the MAC address being filtered." :"G.983.2 section 7.3.33 MAC Bridge port filter table data"                     -"This attribute specifies the filter action." :"G.983.2 section 7.3.33 MAC Bridge port filter table data"                     7"This attribute specifies the operation of this entry." :"G.983.2 section 7.3.33 MAC Bridge port filter table data"                    "This managed entity provides an alternate approach to address filtering than that 
            supported through MACBridgePortFilterTableData.
            This managed entity is associated with one instance of a MACBridgePortConfigurationData managed entity." ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     B"It is entry in the zxGponIPHostMACBridgePortEthFrameFilterTable."                       �"This attribute indicates whether IPv4Multicast Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether Ipv6Multicast Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether IPv4Broadcast Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether RARP Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether IPX Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether NetBEUI Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether AppleTalk Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether BridgeManagementInformation Ether types are 
        forwarded (value 0x00) or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether ARP Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                     �"This attribute indicates whether PPPoE Ether types are forwarded (value 0x00) 
        or filtered (value 0x01). Initial value is 0x00.(1 byte)" ?"G.983.2 section 7.3.51 MAC Bridge port filter preassign table"                    �"This managed entity is used to organize data associated with VLAN tagging. 
            Instances of this managed entity are created/deleted at the request of the OLT.
            Zero or one instance of this managed entity may exist for each instance of MAC 
            Bridge Port Configuration Data which is associated with Interworking VCC Termination 
            Point (PON side) or Physical Path Termination Point Ethernet UNI." 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     8"It is entry in the zxGponIPHostVLANTagFilterModeTable."                      %"When a frame is received, the frame is processed according to the following Forward 
        Operations. The operations are invoked based on the value of VID, user priority, or 
        the entire TCI or whether or not the TCI field exists. This attribute indicates the 
        received frame is treated as indicated below.(1 byte)
        !!!!!!mode5/6/9/10 is no used currently!!!!!!! 
        tag-filter-action      untag-filter-action      forward-mode
        'transparent'          'transparent'            'mode0'
        'discard'              'transparent'            'mode1'
        'transparent'          'discard'                'mode2'
        'vid-filter'           'transparent'            'mode3'
        'vid-filter'           'discard'                'mode4'
        'prio-filter'          'transparent'            'mode7'
        'prio-filter'          'discard'                'mode8'
        'prio-vid-filter'      'transparent'            'mode11'
        'prio-vid-filter'      'discard'                'mode12'
        " 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     `"This attribute provides the number of entries in the VLAN Filter Table that are valid.(1 byte)" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                    �"This managed entity is used to organize data associated with VLAN tagging. 
            Instances of this managed entity are created/deleted at the request of the OLT.
            Zero or one instance of this managed entity may exist for each instance of MAC 
            Bridge Port Configuration Data which is associated with Interworking VCC Termination 
            Point (PON side) or Physical Path Termination Point Ethernet UNI." 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     4"It is entry in the zxGponIPHostVLANTagFilterTable."                       Z"This attribute specifies the TCI value which is provisioned at a bridging port.(2 bytes)" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     `"This attribute provides the number of entries in the VLAN Filter Table that are valid.(1 byte)" 1"G.983.2 section 7.3.50 VLAN tagging filter data"                     �"An instance of this managed entity represents a set of attributes that control 
        an ONT's IEEE 802.1X operation with regard to IEEE 802 services." /"G.984.4 9.3.15    Dot1X configuration profile"                     &"It is entry in the zxGponDot1xTable."                       |"This attribute is a large string whose content appears as the prefix of the NAS port ID in radius access-request messages." ""                    <"When set to 2 (deny), this attribute causes 802.1X conversations to fail when no external authentication server is accessible, 
         such that no Ethernet service is provided. 
         The default value 1 (succeed) causes 802.1X conversations to succeed when no external authentication server is accessible." ""                     �"This attribute is a large string that contains the URI of the first choice radius authentication server.
         The null string indicates that no radius authentication server is specified." ""                     {"This attribute is the shared secret for the first radius authentication server. It is a null-terminated character string." ""                     �"This attribute is a large string that contains the URI of the second choice radius authentication server.
         The null string indicates that no radius authentication server is specified." ""                     |"This attribute is the shared secret for the second radius authentication server. It is a null-terminated character string." ""                     �"This attribute is a large string that contains the URI of the third choice radius authentication server.
         The null string indicates that no radius authentication server is specified." ""                     {"This attribute is the shared secret for the third radius authentication server. It is a null-terminated character string." ""                     �"This attribute indicates the IP address of a possible proxy at the OLT for 802.1X radius messages. The default value 0.0.0.0 indicates that no proxy is required." ""                    "An instance of this managed entity represents a set of attributes that control a port's IEEE 802.1X operation.
         An instance of this managed entity is associated with a physical path termination point that performs IEEE 802 
         authentication (ie Ethernet or DSL)." ("9.3.14    Dot1X port extension package"                     *"It is entry in the zxGponPortDot1xTable."                       �"This index indicates the type of interface.
            1 eth uni
            2 dsl uni
         Currently, only ethuni is supported." ""                     �"If set true, this boolean attribute forces the associated port to authenticate via 802.1X as a precondition of normal service. 
         The default value false does not impose 802.1X authentication on the associated port." ""                     �"This attribute returns the value of the port's PAE state. States are further described in IEEE 802.1X.
         0xFFFF means NA" ""                     �"This attribute returns the value of the port's back-end authentication state. States are further described in IEEE 802.1X.
         0xFFFF means NA" ""                    ."This attribute controls the directionality of the port's authentication requirement. 
         The default value 1 (both) indicates that control is imposed in both directions. 
         The value 2 (upstream) indicates that control is imposed only on traffic from the subscriber toward the network." ""                    ="This attribute indicates the actual directionality of the port's authentication. 
         The value 1 (both) indicates that control is imposed in both directions. 
         The value 2 (upstream) indicates that control is imposed only on traffic from the subscriber toward the network. 
         0xFFFF means NA" ""                     �"This read-only attribute indicates whether the controlled port is currently authorized (1) or unauthorized (2).
         0xFFFF means NA" ""                    |"This attribute specifies the interval between EAP request/identity invitations sent to the peer. 
         Other events such as carrier present or EAPOL start frames from the peer may trigger an EAP request/identity frame from the ONT at any time; 
         this attribute controls the ONT's periodic behaviour in the absence of these other inputs. It is expressed in seconds." ""                    �"This attribute specifies the time the ONT will wait for a response from the radius server before timing out. 
         Within this maximum interval, the ONT may initiate several retransmissions with exponentially increasing delay. 
         Upon timeout, the ONT may try another radius server if there is one, or invoke the fallback policy, if no alternate radius servers are available. 
         Server timeout is expressed in seconds, with a default value of 30 and a maximum value of 65535 seconds." ""                     �"This attribute records the reauthentication interval specified by the radius authentication server. 
         It is expressed in seconds. The attribute is only meaningful after a port has been authenticated. " ""                     �"This boolean attribute records whether the radius authentication server has enabled reauthentication on this service (true) or not (false). 
         The attribute is only meaningful after a port has been authenticated." ""                     �"This boolean attribute indicates whether key transmission is enabled (true) or not (false). 
         This feature is not required; the parameter is listed here for completeness vis-a-vis 802.1X." ""                     �"This table defines a set of actions that can be performed on the port
         associated with a physical path termination point that performs IEEE 802 authentication (ie Ethernet or DSL)." ("9.3.14    Dot1X port extension package"                     8"It is entry in the zxGponPortDot1xRegisterActionTable."                      "This attribute defines a set of actions that can be performed on the associated port. 
         The act of writing to the register causes the specified action.
         1 Force reauthentication - this opcode initiates an 802.1X reauthentication conversation with the associated port. 
           The port remains in its currently authorized state until the conversation concludes.
         2 Force unauthenticated - this opcode initiates an 802.1X authentication conversation whose outcome is predestined to fail, 
           thereby disabling normal Ethernet service on the port. The port's provisioning is not changed, such that upon reinitialization, a new 802.1X conversation may restore service without prejudice.
         3 Force authenticated - this opcode initiates an 802.1X authentication conversation whose outcome is predestined to succeed, 
           thereby unconditionally enabling normal Ethernet service on the port. The port's provisioning is not changed, such that upon reinitialization, a new 802.1X conversation is required." ""                     H"This attribute specifies the profile that mapping from DSCP to P-bits." C"G.984.4 9.3.13 Extended VLAN tagging operation configuration data"                     0"It is entry in the zxGponDscp2CosProfileEntry."                       �"This attribute provides a unique number for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (4 bytes)"                       �"This attribute provides a unique name for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (2 bytes)"                      N"This attribute specifies mapping from DSCP to P-bits. 
        The attribute can be considered a bit string sequence of 64 3-bit groups. 
        The 64 sequence entries represent the possible values of the 6-bit DSCP field. 
        Each 3-bit group specifies the P-bit value to which the associated DSCP value should be mapped." C"G.984.4 9.3.13 Extended VLAN tagging operation configuration data"                     4"Forbidden to delete table entry if not equal zero."                       4"This attribute specifies the action of this entry." C"G.984.4 9.3.13 Extended VLAN tagging operation configuration data"                     w"An instance of this managed entity may be associated with one or 
             more VoIP voice CTP managed entities." 	"G.984.4"                     ."It is entry in the zxGponMGCConfigDataTable."                       �"This attribute provides a unique number for each instance of this managed entity.
        (1~n)(R, Set-by-create) (mandatory) (2 bytes)" +"G.984.4 section 9.9.16    MGC config data"                    P"This attribute points to a network address ME that contains the name (IP address 
        or resolved name) of the primary MGC that controls the signalling  messages. The 
        port is optional and defaults to 2944 for text message formats and 2955 for binary
        message formats. (R, W, Set-by-create) (mandatory) (2 bytes)" +"G.984.4 section 9.9.16    MGC config data"                     "" ""                     "" +"G.984.4 section 9.9.16    MGC config data"                     "" +"G.984.4 section 9.9.16    MGC config data"                     "" +"G.984.4 section 9.9.16    MGC config data"                    \"This attribute points to a network address ME that contains the name (IP address 
        or resolved name) of the secondary or backup MGC that controls the signalling 
        messages. The port is optional and defaults to 2944 for text message formats and 
        2955 for binary message formats. (R, W, Set-by-create) (mandatory) (2 bytes)" +"G.984.4 section 9.9.16    MGC config data"                     "" ""                     "" +"G.984.4 section 9.9.16    MGC config data"                     "" +"G.984.4 section 9.9.16    MGC config data"                     "" +"G.984.4 section 9.9.16    MGC config data"                     �"This attribute specifies the port(1~65535) of TCP/UDP used for communication
        with the MGC. (R, W, Set-by-create) (mandatory) (2 bytes)" +"G.984.4 section 9.9.16    MGC config data"                     "" ""                     �"This integer attribute reports the version(1~255) of the Megaco protocol in use. 
        (R, W, Set-by-create) (mandatory) (1 byte)" +"G.984.4 section 9.9.16    MGC config data"                     �"This attribute defines the message format. Valid values are:
        0    Text long
        1    Text short
        2    Binary
        The default value is 0. (R, W, Set-by-create) (mandatory) (1 byte)" +"G.984.4 section 9.9.16    MGC config data"                     �"This attribute specifies the maximum retry time for MGC transactions, in seconds.
        The default value 0 specifies vendor-specific implementation (R, W) (optional) (2 bytes)" +"G.984.4 section 9.9.16    MGC config data"                     �"This attribute specifies the maximum number of times a message is retransmitted
        to the MGC. The default value 0 specifies vendor-specific implementation 
        (R, W, Set-by-create) (optional) (2 bytes)" +"G.984.4 section 9.9.16    MGC config data"                     �"The attribute specifies the service status delay time for changes in line service
        status. This attribute is specified in seconds. The default value 0 specifies no 
        delay. (R, W) (optional) (2 bytes)" +"G.984.4 section 9.9.16    MGC config data"                    _"The attribute specifies the base string for the H.248 physical termination id(s)
        for this ONT. This string is intended to uniquely identify an ONT. Vendor specific
        termination identifiers (i.e. port ids) are optionally added to this string to
        uniquely identify a termination on a specific ONT. (R, W) (optional) (25 bytes)" +"G.984.4 section 9.9.16    MGC config data"                    "This attribute identifies the gateway softswitch vendor. 
         The format is four ASCII coded alphabetic characters [A..Z] as defined in ANSI T1.220. 
         A value of four null characters indicates no particular vendor. (R, W, Set-by-create) (mandatory) (4 bytes)" +"G.984.4 section 9.9.16    MGC config data"                     4"This attribute specifies the action of this entry." +"G.984.4 section 9.9.16    MGC config data"                    "This managed entity organizes data associated with VLAN tagging. 
            Regardless of its point of attachment, the specified tagging operations 
            refer to the upstream direction. Instances of this managed entity are 
            created and deleted by the OLT." C"G.984.4 9.3.13 Extended VLAN tagging operation configuration data"                     0"It is entry in the zxGponExVLANTagConfigTable."                       u"This attribute indicates the type of interface.
            1 eth uni
            2 uplink
            3 IP host"                      Y"This attribute indicates the type of interface.
            For eth UNI:
            The third byte specifies the slot Id associated with this UNI;the forth byte 
            specifies the port Id associated with this UNI.
            For UpLink:
            The first 2 bytes specifies the slot Id and bridge group Id associated with the bridge;
            the second 2 bytes specifies the bridge port associated with this uplink.(4 bytes)
            For IPHostConfigDataId:
            The third and forth bytes provides a unique number for each instance of this managed entity.(4 bytes)"                       �"This attribute gives the special TPID value for operations 
        on the input (filtering) side of the table. Typical values 
        include 0x8a88 and 0x9100. (R, W) (mandatory) (2 bytes)."                       �"This attribute gives the special TPID value for operations
         on the output (tagging) side of the table. Typical values 
         include 0x8a88 and 0x9100. (R, W) (mandatory) (2 bytes)."                       �"Regardless of its association, the extended VLAN tagging
         operation configuration data ME pertains to upstream traffic.
         This attribute specifies the mode for downstream mapping. (R, W) (mandatory) (1 byte)"                       4"This attribute specifies the action of this entry." C"G.984.4 9.3.13 Extended VLAN tagging operation configuration data"                    N"This attribute specifies mapping from DSCP to P-bits. 
        The attribute can be considered a bit string sequence of 64 3-bit groups. 
        The 64 sequence entries represent the possible values of the 6-bit DSCP field. 
        Each 3-bit group specifies the P-bit value to which the associated DSCP value should be mapped." C"G.984.4 9.3.13 Extended VLAN tagging operation configuration data"                    "This managed entity organizes data associated with VLAN tagging. 
            Regardless of its point of attachment, the specified tagging operations 
            refer to the upstream direction. Instances of this managed entity are 
            created and deleted by the OLT." C"G.984.4 9.3.13 Extended VLAN tagging operation configuration data"                     +"It is entry in the zxGponFilterRuleEntry."                       �"This attribute provides a unique number for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (4 bytes)"                       �"This attribute provides a unique name for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (2 bytes)"                       ^"This attribute provides the number of tag.
        (R, Set-by-create) (mandatory) (2 bytes)"                       �"The Ethertype value on which to filter received frames, 
         as listed below. Note: This filter is recommended for 
         use on untagged frames or frames with only priority.(4 bits)"                       �"Filter received frames on this priority value(0-7).Do not filter on inner priority(8).
        This is the default filter when no other one-tag rule applies(14).This entry is a no-tag
        rule; ignore all other filter fields(15).(4 bits)"                       a"Filter received frames on this VID value(0-4094).Do not filter on the inner VID(4096).(13 bits)"                        "Filter Inner TPID/DE: (3 bits)"                      "Filter received frames on this priority value(0-7).Do not filter on outer priority.(8).
        This is the default filter when no other two-tag rule applies(14).This entry is not a
        double-tag rule; ignore all other outer tag filter fields(15).(4 bits)"                       a"Filter received frames on this VID value(0-4094).Do not filter on the outer VID(4096).(13 bits)"                        "Filter outer TPID/DE: (3 bits)"                       4"Forbidden to delete table entry if not equal zero."                       4"This attribute specifies the action of this entry." C"G.984.4 9.3.13 Extended VLAN tagging operation configuration data"                    "This managed entity organizes data associated with VLAN tagging. 
            Regardless of its point of attachment, the specified tagging operations 
            refer to the upstream direction. Instances of this managed entity are 
            created and deleted by the OLT." C"G.984.4 9.3.13 Extended VLAN tagging operation configuration data"                     ."It is entry in the zxGponTreatmentRuleEntry."                       �"This attribute provides a unique number for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (4 bytes)"                       �"This attribute provides a unique name for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (2 bytes)"                      �"This attribute provides the number of tags to remove(0~3).(R, Set-by-create) (mandatory) (2 bytes)
        0..2    Remove 0, 1 or 2 tags, respectively. 
        If one tag is specified, then the outer tag is stripped from double-tagged frames.
        3    Discard the frame. 
        No symmetric downstream operation exists; 
        ie this rule is ignored in the downstream direction."                       }"This Boolean attribute indicates whether or not a add inner tag is 
        enabled. The value TRUE means enabled.(1 byte)"                       }"This Boolean attribute indicates whether or not a add outer tag is 
        enabled. The value TRUE means enabled.(1 byte)"                       "Treatment priority: (4 bits)"                       O"Use this value as the priority to insert in the inner VLAN tag. (0-7)(4 bits)"                       "Treatment VID: (13 bits)"                       D"Use this value as the VID in the inner VLAN tag. (0-4094)(13 bits)"                      "Treatment inner TPID/DE: (3 bits)
         000    Copy TPID (and DE, if present) from inner tag of received frame
         001    Copy TPID (and DE, if present) from outer tag of received frame
         010    Set TPID = output TPID attribute value, copy DE bit from inner tag of received frame
         011    Set TPID = output TPID, copy DE from outer tag of received frame
         100    Set TPID = 0x8100
         101    Reserved
         110    Set TPID = output TPID, DE=0
         111    Set TPID = output TPID, DE=1"                       "Treatment priority: (4 bits)"                       O"Use this value as the priority to insert in the outer VLAN tag. (0-7)(4 bits)"                       "Treatment VID: (13 bits)"                       D"Use this value as the VID in the outer VLAN tag. (0-4094)(13 bits)"                      "Treatment outer TPID/DE: (3 bits)
         000    Copy TPID (and DE, if present) from inner tag of received frame
         001    Copy TPID (and DE, if present) from outer tag of received frame
         010    Set TPID = output TPID attribute value, copy DE bit from inner tag of received frame
         011    Set TPID = output TPID, copy DE from outer tag of received frame
         100    Set TPID = 0x8100
         101    Reserved
         110    Set TPID = output TPID, DE=0
         111    Set TPID = output TPID, DE=1"                       4"Forbidden to delete table entry if not equal zero."                       4"This attribute specifies the action of this entry." C"G.984.4 9.3.13 Extended VLAN tagging operation configuration data"                    "This managed entity organizes data associated with VLAN tagging. 
            Regardless of its point of attachment, the specified tagging operations 
            refer to the upstream direction. Instances of this managed entity are 
            created and deleted by the OLT." C"G.984.4 9.3.13 Extended VLAN tagging operation configuration data"                     5"It is entry in the zxGponUniExVLANTableConfigTable."                       }"This attribute provides a unique index of filter for this ExVLAN table.  
        (R, Set-by-create) (mandatory) (2 bytes)"                       �"This attribute provides a unique index of treatment for this ExVLAN table.  
        (R, Set-by-create) (mandatory) (2 bytes)"                       4"This attribute specifies the action of this entry." C"G.984.4 9.3.13 Extended VLAN tagging operation configuration data"                         "" "G.984.4 & G.983.2"                     *"It is entry in the zxGponInterworkTable."                       w"This attribute specifies the interworking option.
        'bridge', 'dot1p', 'dot1pBridge' are supported at present." "G.984.4 & G.983.2"                     �"This attribute provides the interface id associated with this interworking.
        It stands for the  UNI index(slot/port) or the uplink index(slot/bridge/port).
        (4 bytes)" "G.984.4 & G.983.2"                     Y"This attribute specifies the interface type associated with this interworking.(2 bytes)" "G.984.4 & G.983.2"                     �"This attribute provides the uni list(each four bytes stand for a certain uni index) associated with 
        this interworking when 'zxGponInterworkOption' equals uni(7).
        (4 bytes)" "G.984.4 & G.983.2"                     :"This attribute specifies the uni number in the uni list." "G.984.4 & G.983.2"                     �"This bitmap specifies the priorities used by this connection when using 802.1p mapping.
        Each bit from bit0(LSB) to bit7(MSB) indicates whether priority0~priority7 is occupied.(1 byte)" "G.984.4 & G.983.2"                     a"This attribute specifies the maximum GEM payload size associated with GAL Eth profile.(2 bytes)" "G.984.4 & G.983.2"                     s"This attribute specifies the maximum GEM frame loss intergration period associated with GAL TDM profile.(2 bytes)" "G.984.4 & G.983.2"                     X"This attribute specifies the CES buffer CDV tolerance of CES service profile.(2 bytes)" "G.984.4 & G.983.2"                     N"This attribute specifies the channel signal of CES service profile.(2 bytes)" "G.984.4 & G.983.2"                     V"This attribute indicates the PPTP counter associated with this interworking.(1 byte)" "G.984.4 & G.983.2"                     L"This attribute indicates the operation state of this interworking.(1 byte)" "G.984.4 & G.983.2"                     ;"This attribute specifies the action of this interworking." "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     ,"It is entry in the zxGponMcInterworkTable."                       m"This attribute specifies the multicast interworking option.
        Only 'bridge' is supported at present." "G.984.4 & G.983.2"                     �"This attribute provides the interface id associated with this interworking.
        It stands for the uplink index(slot/bridge/port).
        (4 bytes)" "G.984.4 & G.983.2"                     Y"This attribute specifies the interface type associated with this interworking.(2 bytes)" "G.984.4 & G.983.2"                     a"This attribute specifies the maximum GEM payload size associated with GAL Eth profile.(2 bytes)" "G.984.4 & G.983.2"                     V"This attribute indicates the PPTP counter associated with this interworking.(1 byte)" "G.984.4 & G.983.2"                     L"This attribute indicates the operation state of this interworking.(1 byte)" "G.984.4 & G.983.2"                     ;"This attribute specifies the action of this interworking." "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     '"It is entry in the zxGponMCAddrTable."                       \"This attribute provides a unique number for each instance of this managed entity.(2 bytes)" "G.984.4 & G.983.2"                     :"This attribute provides the start multicast IP.(4 bytes)" "G.984.4 & G.983.2"                     9"This attribute provides the stop multicast IP.(4 bytes)" "G.984.4 & G.983.2"                     F"This attribute specifies the action of this multicast address entry." "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     ("It is entry in the zxGponServiceTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     �"4bytes value contains:type(MSB 2bytes)/ifId(LSB 2bytes).
        type   means
        -------------
        0      bridge
        1      ethuni
        2      iphost" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "1 byte value stands for the list of 802.1p priority.
        MSB stands for priority 7, LSB stands for priority 0.
        " "G.984.4 & G.983.2"                     x"Each 2 bytes stand for the vlan id related with this service.
        The first N*2 bytes are valid, until vlan id=0." "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                         "" V"G.984.4/9.11.1 & 9.11.2    Traffic management/Priority queue-G & Traffic scheduler-G"                     4"It is entry in the zxGponGemPortTrafficLimitTable."                       �"This attribute points to the instance of the GEM traffic descriptor managed entity 
        that contains the upstream traffic parameters used for this GEM port network CTP ME." $"G.984.4 9.2.3 GEM port network CTP"                     �"This attribute points to the instance of the priority queue-G used for this GEM port network CTP 
        in the downstream direction. " $"G.984.4 9.2.3 GEM port network CTP"                    �"The traffic descriptor allows for traffic management. 
            A priority controlled ONT can point from a MAC bridge port 
            configuration data ME to a GEM traffic descriptor in order 
            to implement traffic management (marking, policing). 
            A rate controlled ONT can point to a GEM traffic descriptor 
            from either a MAC bridge port configuration data ME or 
            GEM port network CTP to implement traffic management (marking, shaping)." &"G.984.4/9.11.3    Traffic Descriptor"                     2"It is entry in the zxGponGemTrafficProfileTable."                       "Traffic Descriptor Profile ID" ""                     !"Traffic Descriptor Profile Name" ""                     B"This attribute specifies committed information rate, in byte/s. " '"G.984.4 9.11.3 GEM traffic descriptor"                     <"This attribute specifies peak information rate, in byte/s." '"G.984.4 9.11.3 GEM traffic descriptor"                     ;"This attribute specifies committed block size, in bytes. " '"G.984.4 9.11.3 GEM traffic descriptor"                     6"This attribute specifies peak block size, in bytes. " '"G.984.4 9.11.3 GEM traffic descriptor"                     "This attribute specifies whether the colour marking algorithm 
        considers pre-existing marking on ingress packets (colour-aware) 
        or ignores it (colour-blind). If colour-aware, packets can only 
        be demoted (from green to yellow or red, or from yellow to red). " '"G.984.4 9.11.3 GEM traffic descriptor"                    �"This attribute is meaningful in colour-aware mode. 
        It specifies how the pre-existing drop precedence is 
        marked on ingress packets. For DEI and PCP marking, 
        a drop eligible indicator is equivalent to yellow colour, 
        otherwise the colour is green. For DSCP AF marking, 
        the lowest drop precedence is equivalent to green, 
        otherwise the colour is yellow." '"G.984.4 9.11.3 GEM traffic descriptor"                    "This attribute specifies how drop precedence is to be 
        marked by the ONT on egress packets. If set to internal 
        marking only, the externally visible packet contents are 
        not modified, but the packet is identified in a vendor-specific 
        local way that indicates its colour to the priority queue-G ME. 
        It is possible for the egress marking to differ from the ingress 
        marking; for example ingress PCP marking could be translated to 
        DEI egress marking." '"G.984.4 9.11.3 GEM traffic descriptor"                     U"This attribute specifies the algorithm used to determine the colour of the packet. " '"G.984.4 9.11.3 GEM traffic descriptor"                     "" ""                     "" ""                         "" ""                     ""                      Y"This attribute indicates the sub-type of an OMCI trap:
        1:      uni-LANLos,
        2:      ethUniPm-FCSErrs,
        3:      ethUniPm-ExecessCollisionCnt,
        4:      ethUniPm-LateCollisionCnt,
        5:      ethUniPm-FrameTooLongs,
        6:      ethUniPm-RxBufOverflows,
        7:      ethUniPm-TxBufOverflows,
        8:      ethUniPm-SingleCollisionCnt,
        9:      ethUniPm-MultiCollisionCnt,
        10:     ethUniPm-SQECnt,
        11:     ethUniPm-DeferredTxCnt,
        12:     ethUniPm-InternalMACTxErrCnt,
        13:     ethUniPm-CarrierSenseErrCnt,
        14:     ethUniPm-AlignErrCnt,
        15:     ethUniPm-InternalMACRxErrCnt,
        16:     galEthPm-DiscardedFrames,
        17:     gemPortPm-LostPkts,
        18:     gemPortPm-MisinsertedPkts,
        19:     gemPortPm-ImpairedBlocks
        " ""                     �"This attribute indicates the position of the OMCI trap.
        According to the sub-type, it may be the UNI index or the GEM port of the ONU." ""                     +"This attribute indicates the trap status." ""                         ""                     "" �"G.984.4 Ethernet performance monitoring history data
                     Ethernet performance monitoring history data 2
                     Ethernet performance monitoring history data 3"                     -"It is entry in the zxGponOmciEthStatsTable."                       "" 	"G.984.4"                     "" 	"G.984.4"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     4"This attribute specifies the action of this entry." 	"G.984.4"                     "" 8"G.984.4 Ethernet performance monitoring history data 2"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 	"G.984.4"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" "G.984.4 & G.983.2"                     -"It is entry in the zxGponOmciGEMStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     ;"This attribute specifies the action of this interworking." "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     0"It is entry in the zxGponOmciGALEthStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     0"It is entry in the zxGponOmciBridgeStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     7"It is entry in the zxGponOmciUNIBridgePortStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     :"It is entry in the zxGponOmciUpLinkBridgePortStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     0"It is entry in the zxGponOmciIPHostStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     4"This attribute specifies the action of this entry." "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     2"It is entry in the zxGponOmciCallCtrlStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     4"This attribute specifies the action of this entry." "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     -"It is entry in the zxGponOmciRTPStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     4"This attribute specifies the action of this entry." "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     5"It is entry in the zxGponOmciSIPCallInitStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     4"This attribute specifies the action of this entry." "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     2"It is entry in the zxGponOmciSIPAgentStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     4"This attribute specifies the action of this entry." "G.984.4 & G.983.2"                     �"An instance of this managed entity is associated with an instance of the
            MGC config data or MGC config portal ME." 	"G.984.4"                     -"It is entry in the zxGponOmciMGCStatsTable."                       c"This attribute identifies the most recently finished 15-minute interval. (R) (mandatory) (1 byte)" F"G.984.4 section    9.9.17    MGC performance monitoring history data"                     y"This attribute points to an instance of the threshold data  managed entity 
        that contains PM threshold values." F"G.984.4 section    9.9.17    MGC performance monitoring history data"                     �"This attribute counts the number of received Megaco messages on this association,
        as defined by H.341. (R) (mandatory) (4 bytes)" F"G.984.4 section    9.9.17    MGC performance monitoring history data"                     �"This attribute counts the total number of octets received on this association, 
        as defined by H.341. (R) (mandatory) (4 bytes)" F"G.984.4 section    9.9.17    MGC performance monitoring history data"                     �"This attribute counts the total number of Megaco messages sent over this association,
        as defined by H.341. (R) (mandatory) (4 bytes)" F"G.984.4 section    9.9.17    MGC performance monitoring history data"                     �"This attribute counts the total number of octets sent over this association, 
        as defined by H.341. (R) (mandatory) (4 bytes)" F"G.984.4 section    9.9.17    MGC performance monitoring history data"                    "This attribute counts the total number of errors detected on this association, 
        as defined by H.341. This includes:syntax errors detected in a given received message,
          outgoing transactions that failed for protocol reasons.(R) (mandatory) (4 bytes)" F"G.984.4 section    9.9.17    MGC performance monitoring history data"                    ;"This attribute counts the total number of transport losses (for example, socket problems)
        detected on this association. A link loss is defined as loss of communication with the 
        remote entity due to hardware/transient problems, or problems in related software.
        (R) (mandatory) (4 bytes)" F"G.984.4 section    9.9.17    MGC performance monitoring history data"                     �"This attribute reports the last event detected on this association. 
        This includes events such as the link failing or being set up." F"G.984.4 section    9.9.17    MGC performance monitoring history data"                     �"This attribute reports the time in seconds since the last event on
        this association was detected, as defined by H.341. (R) (mandatory) (4 bytes)" F"G.984.4 section    9.9.17    MGC performance monitoring history data"                    "This attribute reports the time in seconds since these statistics were last reset, 
        as defined by H.341. Under normal circumstances, a get action on this attribute would 
        return 900 seconds to indicate a completed 15-minute interval. (R) (mandatory) (4 bytes)" F"G.984.4 section    9.9.17    MGC performance monitoring history data"                     4"This attribute specifies the action of this entry." F"G.984.4 section    9.9.17    MGC performance monitoring history data"                     Q"Performance monitoring history data of Physical path termination point CES UNI." ~"G.984.4, CES physical interface performance monitoring history data,
        Pseudowire performance monitoring history data"                     -"It is entry in the zxGponOmciCESStatsTable."                       "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 	"G.984.4"                     "" k"Vender specific Ethernet performance
                     Ethernet performance monitoring history data 4"                     4"It is entry in the zxGponOmciPrivateEthStatsTable."                       "" 	"G.984.4"                     "" 	"G.984.4"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     4"This attribute specifies the action of this entry." 	"G.984.4"                     "" �"G.984.4 Ethernet performance monitoring history data
                     Ethernet performance monitoring history data 2
                     Ethernet performance monitoring history data 3"                     0"It is entry in the zxGponOmciEthHisStatsTable."                       "" 	"G.984.4"                     "" 	"G.984.4"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     4"This attribute specifies the action of this entry." 	"G.984.4"                     "" 8"G.984.4 Ethernet performance monitoring history data 2"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 	"G.984.4"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" 8"G.984.4 Ethernet performance monitoring history data 3"                     "" "G.984.4 & G.983.2"                     0"It is entry in the zxGponOmciGEMHisStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     ;"This attribute specifies the action of this interworking." "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     :"It is entry in the zxGponOmciUNIBridgePortHisStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     ="It is entry in the zxGponOmciUpLinkBridgePortHisStatsTable."                       "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     "" "G.984.4 & G.983.2"                     *"FEC performance monitoring history data." 2"9.2.11  FEC performance monitoring history data."                     0"It is entry in the zxGponOmciFecHisStatsTable."                       T"This attribute identifies the most recently finished 15-minute 
        interval." 	"G.984.4"                     �"This attribute points to an instance of the threshold data 1 managed
         entity that contains PM threshold values. Since no threshold value 
         attribute number exceeds 7, a threshold data 2 ME is optional." 	"G.984.4"                     ^"This attribute counts the number of bytes that were corrected by the 
        FEC function." 	"G.984.4"                     Y"This attribute counts the code words that were corrected by the FEC
         function." 	"G.984.4"                     ]"This attribute counts the code words that were not corrected by
         the FEC function." 	"G.984.4"                     6"This attribute counts the total received code words." 	"G.984.4"                     d"This attribute counts seconds during which there was a forward error
         correction anomaly." 	"G.984.4"                     Q"Performance monitoring history data of Physical path termination point CES UNI." ~"G.984.4, CES physical interface performance monitoring history data,
        Pseudowire performance monitoring history data"                     -"It is entry in the zxGponOmciCESStatsTable."                       "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 9"G.984.4, Pseudowire performance monitoring history data"                     "" 	"G.984.4"                     "" k"Vender specific Ethernet performance
                     Ethernet performance monitoring history data 4"                     7"It is entry in the zxGponOmciPrivateEthHisStatsTable."                       "" 	"G.984.4"                     "" 	"G.984.4"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     "" 6"G.984.4 Ethernet performance monitoring history data"                     4"This attribute specifies the action of this entry." 	"G.984.4"                     "" -"G.984.4 Performance monitoring history data"                     3"It is entry in the zxGponOmciStatsThresholdEntry."                      p"This attribute indicates the type of OMCI statistics threshold data.
            1 eth
            2 ces
            3 gem port
            4 bridge port
            5 radius
            6 dot1x
            
            For eth, there are 19 threshold data as follows:
               fcs-err value1
               excessive-collision value2
               late-collision value3
               too-long value4
               rx-buf-overflow value5
               tx-buf-overflow value6
               single-collision value7
               multi-collisions value8
               sqe value9
               deferred-tx value10
               internal-mac-tx-err value11
               internal-mac-rx-err value12
               carrier-sense-err value13
               alignment-err value14
               pppoe-filtered value15
               drop-events value16
               undersize value17
               fragments value18
               jabbers value19
            For ces, there are 10 threshold data as follows:
               down-missing value1
               down-reordered value2
               down-misordered value3
               down-buffer-underrun-overrun value4
               down-malformed value5
               down-stray value6
               down-remote-loss value7
               down-es value8
               down-ses value9
               down-uas value10
            For gem port, there are 3 threshold data as follows:
               lost-packets value1
               misinserted-packets value2
               impaired-blocks value3
            For bridge port, there are 3 threshold data as follows:
               delay-exceeded-discard value1
               mtu-exceeded-discard value2
               received-and-discarded value3
            For radius, there are 2 threshold data as follows:
               retransmission-access-request value1
               received-invalid-radius value2
            For dot1x, there are 2 threshold data as follows:
               received-EAPOL-invalid-frames value1
               received-EAP-length-error-frames value2
            "                       �"This attribute provides a unique number for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (4 bytes)"                       �"This attribute provides a unique name for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (2 bytes)"                       "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     "" "Threshold data value"                     4"Forbidden to delete table entry if not equal zero."                       4"This attribute specifies the action of this entry." 	"G.984.4"                     "" >"G.984.4 9.3.17    Radius performance monitoring history data"                     0"It is entry in the zxGponOmciRadiusStatsTable."                       "" 	"G.984.4"                     "" 	"G.984.4"                     "" 4"G.984.4 Radius performance monitoring history data"                     "" 4"G.984.4 Radius performance monitoring history data"                     "" 4"G.984.4 Radius performance monitoring history data"                     "" 4"G.984.4 Radius performance monitoring history data"                     "" 4"G.984.4 Radius performance monitoring history data"                     "" 4"G.984.4 Radius performance monitoring history data"                     4"This attribute specifies the action of this entry." 	"G.984.4"                     "" ="G.984.4 9.3.17    Dot1x performance monitoring history data"                     /"It is entry in the zxGponOmciDot1xStatsTable."                       "" 	"G.984.4"                     "" 	"G.984.4"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     4"This attribute specifies the action of this entry." 	"G.984.4"                     )"FEC performance monitoring current data" 2"9.2.11  FEC performance monitoring history data."                     1"It is entry in the zxGponOmciFecCurrStatsTable."                       T"This attribute identifies the most recently finished 15-minute 
        interval." 	"G.984.4"                     �"This attribute points to an instance of the threshold data 1 managed
         entity that contains PM threshold values. Since no threshold value 
         attribute number exceeds 7, a threshold data 2 ME is optional." 	"G.984.4"                     ^"This attribute counts the number of bytes that were corrected by the 
        FEC function." 	"G.984.4"                     Y"This attribute counts the code words that were corrected by the FEC
         function." 	"G.984.4"                     ]"This attribute counts the code words that were not corrected by
         the FEC function." 	"G.984.4"                     6"This attribute counts the total received code words." 	"G.984.4"                     d"This attribute counts seconds during which there was a forward error
         correction anomaly." 	"G.984.4"                    '"The row status of this entry.The zxGponOmciFecCurrThresDataId need to 
        be configured when add a row to the entry. When add or delete rows in 
        zxGponOmciFecCurrStatsTable,The corresponding entry in 
        zxGponOmciFecHisStatsTable synchronization also be added or deleted."                       "" >"G.984.4 9.3.17    Radius performance monitoring history data"                     4"It is entry in the zxGponOmciRadiusHistStatsTable."                       "" 	"G.984.4"                     "" 	"G.984.4"                     "" 4"G.984.4 Radius performance monitoring history data"                     "" 4"G.984.4 Radius performance monitoring history data"                     "" 4"G.984.4 Radius performance monitoring history data"                     "" 4"G.984.4 Radius performance monitoring history data"                     "" 4"G.984.4 Radius performance monitoring history data"                     "" 4"G.984.4 Radius performance monitoring history data"                     "" ="G.984.4 9.3.17    Dot1x performance monitoring history data"                     3"It is entry in the zxGponOmciDot1xHistStatsTable."                       "" 	"G.984.4"                     "" 	"G.984.4"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                     "" 3"G.984.4 Dot1x performance monitoring history data"                         �"his managed entity represents the point at a CES UNI in the ONT where the 
            physical path terminates and physical level functions are performed." :"G.984.4 9.8.1    Physical path termination point CES UNI"                     +"It is entry in the zxGponPptpCESUNITable."                       �"The following coding is used for this attribute:
         0    Autosense
         1 to 254    One of the values from table 9.1.5-1/G.984.4 that is compatible with a CES circuit pack.(1 byte)"                       �"If the value of expected type is not 0, then the value of sensed type equals the value of 
        expected type. If expected type = 0, then the value of sensed type is one of the compatible 
        values from table 9.1.5-1/G.984.4.(1 byte)"                       e" This attribute specifies and reports the loopback configuration of the physical interface.(1 byte)"                       �"This attribute is used to activate (unlock: value 0x00) and deactivate (lock: value 0x01) 
        the functions performed by instances of this managed entity.(1 byte)"                      "This attribute indicates whether or not this managed entity is capable of performing 
        its task. The operational state reflects the perceived ability to receive or to generate 
        a valid signal. Valid values are enabled (0x00) and disabled (0x01).(1 byte)"                       ="This attribute specifies the DS1 framing structure.(1 byte)"                       :"This attribute specifies the line coding scheme.(1 byte)"                      *"This attribute specifies the length of the twisted pair cable from a DS1 
        physical UNI to the DSX-1 cross-connect point or the length of co-axial 
        cable from a DS3 physical UNI to the DSX-3 cross-connect point. Valid values 
        are given in table 9.8.1-1/G.984.4..(1 byte)"                       5"This attribute specifies the mode of a DS1.(1 byte)"                       o"This attribute is used to control alarm reporting from this managed entity. See clause I.1.8/G.984.4.(1 byte)"                       ["This attribute provides a provisionable length of time. See clause I.1.8/G.984.4.(1 byte)"                       Q"This attribute specifies the line type used in a DS3 or E3 application.(1 byte)"                       �"The pseudowire maintenance profile permits the configuration of pseudowire 
            service exception handling. It is created and deleted by the OLT." 1"G.984.4 9.8.7    Pseudowire maintenance profile"                     *"It is entry in the zxGponPwProfileTable."                       �"This attribute provides a unique number for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (2 bytes)"                       �"This attribute provides a unique name for each instance of this managed entity.  
        (R, Set-by-create) (mandatory) (2 bytes)"                      "This attribute specifies the desired maximum depth of the playout buffer in the 
        PSN to TDM direction. The value is expressed as a multiple of the 125 us frame rate. 
        The default value 0 selects the ONT's internal policy. (R, W, Set-by-create) (optional) (2 bytes)"                      !"This attribute specifies the desired nominal fill depth of the playout buffer in the PSN to TDM 
        direction. The value is expressed as a multiple of the 125 us frame rate. The default value 0 selects 
        the ONT's internal policy. (R, W, Set-by-create) (optional) (2 bytes)"                      �"TThis attribute defines the payload bit pattern to be applied toward the TDM service if no payload 
        packet is available to play out. The default value 0 specifies that the ONT apply its internal policy.
        0    ONT default, vendor-specific (recommended: AIS for unstructured service, all 1s for structured service)
        1    Play out AIS according to the service definition (for example, DS3 AIS)
        2    Play out all 1s
        3    Play out all 0s
        4    Repeat the previous data
        5    Play out DS1 idle (ANSI T1.403-1999 appendix C)
        6..15    Reserved for future standardization
        16..255    Vendor-specific, not to be standardized.(R, W, Set-by-create) (optional) (1 byte)"                      �"The alarm declaration policy attribute defines the anomaly rate that causes the corresponding alarm 
        to be declared. It is an integer percentage between 1..100. If this density of anomalies occurs during 
        the alarm onset soak interval, the alarm is declared. The default value 0 selects the ONT's internal policy.
        (R, W, Set-by-create) (optional) (1 byte)"                      �"The alarm clear policy attribute defines the anomaly rate that causes the corresponding alarm to be 
        cleared. It is an integer percentage between 0..99. If no more than this density of anomalies occurs 
        during the alarm clear soak interval, the alarm is cleared. The default value 255 selects the ONT's 
        internal policy. (R, W, Set-by-create) (optional) (1 byte)"                       +"(R, W, Set-by-create) (optional) (1 byte)"                       +"(R, W, Set-by-create) (optional) (1 byte)"                       +"(R, W, Set-by-create) (optional) (1 byte)"                       +"(R, W, Set-by-create) (optional) (1 byte)"                       +"(R, W, Set-by-create) (optional) (1 byte)"                       +"(R, W, Set-by-create) (optional) (1 byte)"                      ."This attribute defines the number of consecutive lost packets that causes 
        the transmitted R bit to be set in the TDM to PSN direction, indicating lost
        packets to the far end. The default value 0 selects the ONT's internal policy. 
        (R, W, Set-by-create) (optional) (1 byte)"                      C"This attribute defines the number of consecutive valid packets that causes the 
        transmitted R bit to be cleared in the TDM to PSN direction, removing the remote 
        failure indication to the far end. The default value 0 selects the ONT's internal 
        policy. (R, W, Set-by-create) (optional) (1 byte)"                      �"This attribute defines the action toward the Nx64 TDM interface when remote 
        failure is indicated on packets received from the PSN (either R bit set or M = 0b10 
        while the L bit is cleared).
        0    Do nothing (default)
        1    Play out service-specific RAI/REI/RDI code
        2    Send channel idle signalling and idle channel payload to all DS0s comprising the service
        (R, W, Set-by-create) (optional) (1 byte)"                      �"This attribute defines the action toward the TDM interface when far end TDM failure 
        is indicated on packets received from the PSN (L bit set).
        0    Play out service-specific AIS (default)
        1    Repeat last received packet
        2    Send channel idle signalling and idle channel payload to all DS0s comprising the service
        (R, W, Set-by-create) (optional) (1 byte)"                      �"Number of lost, malformed or otherwise unusable packets expected in the PSN to TDM 
        direction within a one-second interval that causes a severely errored second to be counted. 
        Stray packets do not count toward a severely errored second, nor do packets whose L bit is 
        set at the far end. The default value is 3. (R, W, Set-by-create) (optional) (2 bytes)"                       4"Forbidden to delete table entry if not equal zero."                       4"This attribute specifies the action of this entry."                      2"The Ethernet flow termination point contains the attributes necessary 
            to originate and terminate Ethernet frames in the ONT. It is appropriate 
            when transporting pseudowire services via layer 2. Instances of this managed 
            entity are created and deleted by the OLT." X"G.984.4 9.8.9    Ethernet flow termination point,9.8.5    Pseudowire termination point"                     ."It is entry in the zxGponCESoETHConfigTable."                       �"This attribute indicates the index of MAC bridge in ONT, from 1 to M.
            The first byte specifies the slot Id associated with this MAC bridge;
            the second byte specifies the bridge group Id associated with this MAC bridge.(2 bytes)"                      d"reference to Transmit circuit ID in G.984.4 9.8.5    Pseudowire termination point,
            This attribute is a pair of ECID (Ethernet circuit ID)values that the ONT transmits 
            in the direction from the TDM termination toward the packet-switched network.
            This is the first value which is used for the payload ECID.(4 bytes)."                      O"reference to Transmit circuit ID in G.984.4 9.8.5    Pseudowire termination point,
        this is the second which is required only if signalling is to be carried in a distinct channel. 
        If signalling is not present, or is carried in the same channel as the payload, 
        the second ECID should be set to 0.(4 bytes)."                      f"reference to Expected circuit ID in G.984.4 9.8.5    Pseudowire termination point,
            This attribute is a pair of ECID (Ethernet circuit ID) values that the ONT can 
            expect in the direction from the packet-switched network toward the TDM termination.
            This is the first value which is used for the payload ECID.(4 bytes)."                      �"reference to Expected circuit ID in G.984.4 9.8.5    Pseudowire termination point,
            This attribute is a pair of ECID (Ethernet circuit ID) values that the ONT can 
            expect in the direction from the packet-switched network toward the TDM termination.
            This is the second which is used for the optional separate signalling ECID. In both cases,
            default value 0 indicates that no ECID checking is expected..(4 bytes)."                      f"reference to Received circuit ID in G.984.4 9.8.5    Pseudowire termination point,
            This attribute is a pair of ECID (Ethernet circuit ID) values that the ONT can 
            expect in the direction from the packet-switched network toward the TDM termination.
            This is the first value which is used for the payload ECID.(4 bytes)."                      �"reference to Received circuit ID in G.984.4 9.8.5    Pseudowire termination point,
            This attribute is a pair of ECID (Ethernet circuit ID) values that the ONT can 
            expect in the direction from the packet-switched network toward the TDM termination.
            This is the second which is used for the optional separate signalling ECID. In both cases,
            the default value 0 indicates that no ECID checking is expected.(4 bytes)."                       `"This attribute specifies the tagging policy to be applied to upstream Ethernet frames.(1 byte)"                       �"If the tag policy calls for tagging of upstream Ethernet frames, this attribute specifies the tag 
        control information, which includes the VLAN tag, P bits and CFI bit. (R, W) (optional) (2 bytes)"                       �"This attribute specifies the near-end MAC address. It is established by non-OMCI means (eg factory 
        programmed into ONT flash memory) and included here for information only.(R)(mandatory) (6 bytes)"                       �"This attribute specifies the MAC address of the destination Ethernet frames. 
        (R, W, Set-by-create) (mandatory) (6 bytes)"                       �"This attribute sets the loopback configuration:
        0    No loopback
        1    Loopback of downstream traffic at MAC client(R, W) (mandatory) (1 byte)"                       4"This attribute specifies the action of this entry." 2"G.984.4 9.8.9    Ethernet flow termination point"                    G"The pseudowire termination point supports packetized (rather than TDM) G-PON
             transport of TDM services, transported either directly over Ethernet or over UDP/IP. 
             Instances of this managed entity are created and deleted by the OLT.This table is 
             the config of transported over UDP/IP" /"G.984.4 9.8.5    Pseudowire termination point"                     -"It is entry in the zxGponCESoIPConfigTable."                      ."When the pseudowire service is transported via IP, this attribute points to 
        an instance of the TCP/UDP config data managed entity. The default value 0 is 
        applicable if the pseudowire is not transported via IP. (R, W, Set-by-create) 
        (mandatory for IP transport) (2 bytes)"                       "(2 bytes)"                       �"When the pseudowire service is transported via IP, this attribute points to a large
         string managed entity that contains the URI of the far-end termination point(2 bytes)"                       4"This attribute specifies the action of this entry." ""                     "" /"G.984.4 9.8.5    Pseudowire termination point"                     ,"It is entry in the zxGponPwTDMConfigTable."                      �"Number of payload bytes per packet. Valid only if service type = 
        unstructured or unstructured octet-aligned. Valid choices depend on the TDM
        service, but must include the following. Other choices are at the vendor's discretion.
                DS1    192
                DS1    200, required only if unstructured octet aligned service is supported
              E1    256
        DS3    1024
        E3    1024   (R, W, Set-by-create) (mandatory for unstructured service) (2 bytes)"                      �"Number of 125 microsecond frames to be encapsulated in each pseudowire packet.
        Valid only if service type = structured. The minimum set of choices for various 
        TDM services is listed below, and is affected by the possible presence of in-band 
        signalling. Other choices are at the vendor's discretion.
                NxDS0, no signalling, N = 1    64 (8 ms) required, 
        40 (5 ms) desired
        NxDS0, no signalling, N = 2..4    32 (4 ms)
        NxDS0, no signalling, N > 4    8 (1 ms)
        NxDS0 with DS1 CAS    24 (3 ms)
        NxDS0 with E1 CAS    16 (2 ms)  (R, W, Set-by-create) (mandatory for structured service) (1 byte)"                      �"This attribute selects the timing mode of the TDM service. If RTP is used, this attribute must 
        be set to be consistent with the value of the RTP time stamp mode attribute in the RTP parameters
        managed entity at the far end.
        0    Network timing (default)
                1    Differential timing
                2    Adaptive timing
                3    Loop timing: local TDM transmit clock derived from local TDM receive stream(R, W) (mandatory) (1 byte)"                       �"This attribute points to an instance of the pseudowire maintenance profile managed entity. If the 
        pointer has its default value 0, the ONT's internal defaults apply. (R, W) (optional) (2 bytes)"                       �"Underlying transport:
           0    Ethernet, MEF8
           1    UDP/IP
        (R, W, Set-by-create) (mandatory) (1 byte)"                       "" /"G.984.4 9.8.5    Pseudowire termination point"                     ,"It is entry in the zxGponPwTDMConfigTable."                      �"This attribute specifies the basic service type, either a transparent bit
         pipe or an encapsulation that recognizes the underlying structure of the payload.
         0    Basic unstructured (also known as structure agnostic)
         1    Octet aligned unstructured, structure agnostic. Applicable only to DS1, a mode
            in which each frame of 193 bits is encapsulated in 25 bytes with 7 padding bits.
         2    Structured (structure-locked)(R, W, Set-by-create) (mandatory) (1 byte)"                      	"0    No signalling visible at this layer
         1    CAS, to be carried in the same packet stream as the payload
         2    CAS, to be carried in a separate signalling channel
         (R, W, Set-by-create) (mandatory for structured service type) (1 byte)"                       6"See clause I.1.8/G.984.4. (R, W) (optional) (1 byte)"                       6"See clause I.1.8/G.984.4. (R, W) (optional) (1 byte)"                      G"The pseudowire termination point supports packetized (rather than TDM) G-PON
             transport of TDM services, transported either directly over Ethernet or over UDP/IP. 
             Instances of this managed entity are created and deleted by the OLT.This table is 
             the config of transported over UDP/IP" ,"G.984.4 9.8.6    RTP pseudowire parameters"                     ,"It is entry in the zxGponPwRTPConfigTable."                      �"This attribute determines the mode in which RTP timestamps are generated in the TDM to PSN direction.
            0    Unknown or not applicable (default)
            1    Absolute. Timestamps are based on the timing of the incoming TDM signal.
            2    Differential. Timestamps are based on the ONT's reference clock, which is understood to be 
                             stratum-traceable along with the reference clock at the far end.
            (R, W, Set-by-create) (mandatory) (1 byte)"                      �"PTYPE specifies the RTP payload type in the TDM to PSN direction. It comprises two values. 
            The first is for the payload channel, the second, for the optional separate signalling channel. 
            Assignable PTYPEs lie in the dynamic range 96..127. If signalling is not transported in its own channel, 
            the second value should be set to 0. (R, W, Set-by-create) (mandatory) (1 bytes)"                      �"PTYPE specifies the RTP payload type in the TDM to PSN direction. It comprises two values. 
            The first is for the payload channel, the second, for the optional separate signalling channel. 
            Assignable PTYPEs lie in the dynamic range 96..127. If signalling is not transported in its own channel, 
            the second value should be set to 0. (R, W, Set-by-create) (mandatory) (1 bytes)"                      �"Expected PTYPE specifies the RTP payload type in the PSN to TDM direction. The received payload type 
            may be used to detect malformed packets. It comprises two values. The first is for the payload channel, 
            the second, for the optional separate signalling channel. To disable either or both of the check functions,
            set the corresponding value to its default value 0. (R, W, Set-by-create) (optional) (1 bytes)"                      �"Expected PTYPE specifies the RTP payload type in the PSN to TDM direction. The received payload type 
            may be used to detect malformed packets. It comprises two values. The first is for the payload channel, 
            the second, for the optional separate signalling channel. To disable either or both of the check functions,
            set the corresponding value to its default value 0. (R, W, Set-by-create) (optional) (1 bytes)"                      f"SSRC specifies the RTP synchronization source in the TDM to PSN direction. It comprises two values. The first
            is for the payload channel, the second, for the optional separate signalling channel. If signalling is not 
            transported in its own channel, the second value should be set to 0. (R, W, Set-by-create) (mandatory) (4 bytes)"                      f"SSRC specifies the RTP synchronization source in the TDM to PSN direction. It comprises two values. The first
            is for the payload channel, the second, for the optional separate signalling channel. If signalling is not 
            transported in its own channel, the second value should be set to 0. (R, W, Set-by-create) (mandatory) (4 bytes)"                      �"Expected SSRC specifies the RTP synchronization source in the PSN to TDM direction. The received SSRC may be used 
            to detect misconnection (stray packets). It comprises two values. The first is for the payload channel, the second, 
            for the optional separate signalling channel. To disable either or both of the check functions, set the corresponding 
            value to its default value 0. (R, W, Set-by-create) (optional) (8 bytes)"                      �"Expected SSRC specifies the RTP synchronization source in the PSN to TDM direction. The received SSRC may be used 
            to detect misconnection (stray packets). It comprises two values. The first is for the payload channel, the second, 
            for the optional separate signalling channel. To disable either or both of the check functions, set the corresponding 
            value to its default value 0. (R, W, Set-by-create) (optional) (8 bytes)"                       �"This attribute specifies the frequency of the common timing reference, in multiples of 8 kHz.
             The default value is 1 (8 kHz). (R, W, Set-by-create) (mandatory) (2 bytes)"                       4"This attribute specifies the action of this entry." ""                            