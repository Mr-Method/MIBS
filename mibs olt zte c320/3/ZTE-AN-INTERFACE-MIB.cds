:--------------------------------------------------------------------------------
-- File Name : ZTE-AN-INTERFACE-MIB.mib
-- Date      : 2006-09-05
-- Author    : ZTE Nms dept.
--
-- Zte Interface Mib for Access Node
-- 
-- 
--------------------------------------------------------------------------------
   "Protocol Type."               "Protocol Type."               "Protocol Rate Limiting Scale."               "Storm control type."                                                                                                     3"This MIB defines zte Access Node managed objects." n"Su Chunshan
                        Mail: suchunshan@zte.com.cn
                        Tel : 021-68896292"                  �"The management capabilities of this interface.
            The bit value 1 means the function represented by this bit is supported
            by this interface.
            
            bit 0: value 1 means support optical parameters.
            bit 1: value 1 means support zxAnIfDhcpTestTimeout,
                   zxAnIfDhcpTestClientMac, zxAnIfDhcpTestAuthMode, 
                   zxAnIfDhcpTestUserName, zxAnIfDhcpTestPassword and 
                   zxAnIfDhcpTestOption60String in zxAnIfDhcpTestTable.
            bit 2: value 1 means support zxAnIfPppoeTestTimeout in 
                   zxAnIfPppoeTestTable.
            bit 3: value 1 means support the unit of
                   zxAnEtherIfOutDiscardPktRatio and 
                   zxAnEtherIfInDiscardPktRatio is 0.01%.
            bit 4: value 1 means support ifXTable For DSL port.
            
            NOTE:
               No recomanded to display it in NMS.
            "                       7"This table includes the general interface infomation."                       "An entry in zxAnIfTable."                       :"Current actual data transmition speed at this interface."                       8"Current actual data recieving speed at this interface."                       1"Reset the statistics counter at this interface."                      "
            Operate the interface.
            lock   -- disable the service and alarm of this interface
            unlock -- release the lock status 
            reset  -- reset interface and then return the before adminStatus.
            
            "                       �"The time that the link of interface is down.
                         The format is YYYY-MM-DD HH:MM:SS.
                         eg 2010-07-07 13:15:27"                       �"The time that the link of interface is up.
                         The format is YYYY-MM-DD HH:MM:SS.
                         eg 2010-07-07 13:15:27"                       c"Enable or disable the ethernet switch forward flood BPDU packet at
              this interface." "Used by MAP"                     b"Enable or disable the ethernet switch forward flood GARP packet at
             this interface." "Used by MAP"                     @"Use this parameter to load interface factory default settings."                      �"Linkdown and linkup trap severity.
             notification -- zxAnIfAccesslinkDown and zxAnIfAccesslinkUp should
                             be generated when the interface linkup or linkdown
                             occurs.
             alarm       -- zxAnIfAccessLinkDownAlm and zxAnIfAccessLinkDownClr
                            should be generated when the interface linkdown 
                            occurs."                       @"This table includes the ethernet-like interface configuration."                       #"An entry in zxAnEtherIfConfTable."                      +"DURABLE: { auto_negotiate:all }
            The desired speed and duplex for this interface. If the selected
            control is not possible on the interface, a value of illegal(99)
            is returned.  If the port type does NOT support the default
            of auto_negotiate(1), then the application initializes the
            port to a valid value (e.g., 1000full(6)).  Note that not all
            controls are possible for all interfaces.  For example, only
            full-1000(6) is available for Gigabit Ethernet interfaces."                       ("The actual duplex for this interface. "                       '"The actual speed for this interface. "                       X"The physical tpye of this interface,it is used by 10GE interface 
         only now. "                       �"The connector tpye of this interface,such as fibre or copper or auto. 
            if no connector should be regard,it is noUse."                       E"The reference clock used by this interface.It is used by 10GE port."                       +"Enable/disable the ehternet flow control."                       +"Enable/disable the ehternet Port Protect."                       $"Enable/disable MAC learning limit."                       )"Max MAC limit learnt.range is [0,32768]"                       "Max Transmission Unit."                       *"Multicast flooding Control of this port."                      �"Enables and disables the port isolation function.
            enable(1): The port is added to the isolation group. All 
                the ports in the isolation group are isolated from each other 
                in layer 2,but they are not isolated from the ports not in 
                the isolation group.
            disable(2): The port is removed from the isolation group."                       D"This table includes the ethernet-like port performance statistics."                       #"An entry in zxAnEtherIfStatTable."                       3"The FCSErrors counter of ethernet-like interface."                       W"The current 15 mininutes FCSErrors counter of ethernet-like 
             interface."                      G"The threshold of zxAnEtherIfStat15minFCSErrors. When it exceeds 
             this threshold, the zxAnEtherIf15minFcsErrsThreshAlm trap should be
             generated.
             If zxAnEtherIfStat15minFCSErrors always exceeds the threshold, only
             one zxAnEtherIf15minFcsErrsThreshAlm trap should be sent."                       9"The 1 day FCSErrors counter of ethernet-like interface."                      B"The threshold of zxAnEtherIfStat1dayFCSErrors. When it exceeds this
             threshold,the zxAnEtherIf1dayFcsErrsThreshAlm trap should be 
             generated.
             If zxAnEtherIfStat1dayFCSErrors always exceeds the threshold,only 
             one zxAnEtherIf1dayFcsErrsThreshAlm trap should be sent."                      �"An estimate of the interface's current transmitted bandwidth in 
             bytes per second. 
             For interfaces which do not vary in bandwidth or for those where no
             accurate estimation can be made, this object should contain the 
             nominal bandwidth. 
             If the bandwidth of the interface is greater than the maximum value
             reportable by this object then this object should report its 
             maximum value (4,294,967,295)."                      �"An estimate of the interface's current transmitted bandwidth in 
             packets per second.
             For interfaces which do not vary in bandwidth or for those where no
             accurate estimation can be made, this object should contain the 
             nominal bandwidth.  
             If the bandwidth of the interface is greater than the maximum value
             reportable by this object then this object should report its 
             maximum value (4,294,967,295)."                       y"An estimate of the interface's current transmitted bandwidth 
             utilization. The value is between 0 to 100."                      "An estimate of the interface's discarded packets ratio being 
             transmitted.
             
             When bit 3 of zxAnInterfaceMgmtCapabilities is 0, the unit is 1%.
             When bit 3 of zxAnInterfaceMgmtCapabilities is 1, the unit is 
             0.01%."                      "The interface's peak transmitted bandwidth in bytes per second. 
             If the bandwidth of the interface is greater than the maximum value
             reportable by this object then this object should report its 
             maximum value (4,294,967,295)."                      �"An estimate of the interface's current received bandwidth in bytes 
             per second.
             For interfaces which do not vary in bandwidth or for those where no
             accurate estimation can be made, this object should contain the 
             nominal bandwidth.
             If the bandwidth of the interface is greater than the maximum value
             reportable by this object then this object should report its 
             maximum value (4,294,967,295)."                      �"An estimate of the interface's current received bandwidth
            in packets per second.  For interfaces which do not vary in bandwidth or for 
            those where no accurate estimation can be made, this object should 
            contain the nominal bandwidth.  If the bandwidth of the interface 
            is greater than the maximum value reportable by this object then 
            this object should report its maximum value (4,294,967,295)."                       �"An estimate of the interface's current received bandwidth 
             utilization.
             The value is between 0 to 100."                      "An estimate of the interface's discarded packets ratio received.
             
             When bit 3 of zxAnInterfaceMgmtCapabilities is 0, the unit is 1%.
             When bit 3 of zxAnInterfaceMgmtCapabilities is 1, the unit is 
             0.01%."                      	"The interface's peak received bandwidth in bytes per second.
             If the bandwidth of the interface is greater than the maximum value
             reportable by this object then this object should report its 
             maximum value (4,294,967,295)."                       �"An estimate of the interface's received error packets ratio.
             The value equals (recevied error packets / total received packets) 
             * 100%."                      A"The threshold of zxAnEtherIfOutBandwidthUtil.
             When it exceeds this threshold, the zxAnEtherIfOutBwUtilThreshAlarm
             trap should be generated.
             If zxAnEtherIfOutBandwidthUtil always exceeds the threshold, only 
             one zxAnEtherIfOutBwUtilThreshAlarm trap should be sent."                      >"The threshold of zxAnEtherIfInBandwidthUtil.
             When it exceeds this threshold, the zxAnEtherIfInBwUtilThreshAlarm 
             trap should be generated.
             If zxAnEtherIfInBandwidthUtil always exceeds the threshold, only 
             one zxAnEtherIfInBwUtilThreshAlarm trap should be sent."                       �"The total number of packets that higher-level protocols requested 
             be transmitted.
            
             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                       �"The total number of correct octets received on the interface,
             including framing characters.

             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                       �"The total number of correct octets transmitted out of the 
             interface, including framing characters.

             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                       �"The total number of error octets received on the interface, 
             including framing characters.

             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                       �"The total number of error octets transmitted out of the
             interface, including framing characters.

             Discontinuities in the value of this counter can occur at 
             re-initialization of the management system."                       D"The current 1 second FCSErrors counter of ethernet-like interface."                      l"The threshold of zxAnEthIfStat1SecFcsErrs. 
             When it exceeds this threshold, the zxAnEthIf1SecFcsErrsThreshAlm 
             trap should be generated.
             If zxAnEthIfStat1SecFcsErrs always exceeds the threshold, only one 
             zxAnEthIf1SecFcsErrsThreshAlm trap should be sent. 
             The unit is number of error frames."                      �"The number of outbound packets which were chosen to be discarded
             even though no errors had been detected to prevent their being 
             transmitted. 
             One possible reason for discarding such a packet could be to free 
             up buffer space.
             Discontinuities in the value of this counter can occur at 
             re-initialization of the management system." "Used by MAP"                    �"The number of inbound packets which were chosen to be discarded
             even though no errors had been detected to prevent their being 
             deliverable to a higher-layer protocol. 
             One possible reason for discarding such a packet could be to 
             free up buffer space.
             Discontinuities in the value of this counter can occur at 
             re-initialization of the management system." "Used by MAP"                     �"The total number of received packets.
            
             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                       "Counter of errored seconds."                       &"Counter of severely errored seconds."                       !"Counter of unavailable seconds."                       $"Counter of loss of signal seconds."                       D"Reset interface statistics counter manually when it is set to '1'." "Used by MAP"                     �"This table includes the ethernet-like port mirroring.
            
            NOTES: 
                1. It must have only one MirroringPort in a device now.
                2. Mirrored Ports  can't be more than 8.
        "                       *"An entry in zxAnEtherPortMirroringTable."                       '"The session id of the port mirroring."                       M"The ethernet-like mirroring port.It is the destination  
            port."                       �"The ethernet-like mirrored port.It is a sequence of 
            some source ports,such as 1346.1245.2681 .
            NOTES: Max count of ports is 8 now.
                "                      ""The traffic direction list of the mirrored port list.
                Each value of the sequence represents a traffic direction.
                The value may be followings:
                    both(1)
                    egress(2), 
                    ingress(3),
                "                       "Rowstatus of this entry."                       I"Enable or disable the self-loop detection functionality.
             "                       �"Enable or disable the auto-shutdown functionality.
             If zxAnIfAutoShutdownBySelfLoop is enabled, interface can be
             auto-shutdown when self-loop is detected.
             "                       C"This table is interface loop back configuration information table"                       D"An entry containing interface loop back configuration information."                       m"Enable or disable the self-loop detection functionality
             for special interface.
             "                       5"This table is interface loop back information table"                       6"An entry containing interface loop back information."                      _"The loop back status. The value selfLoop means 
                 interface self-loop is detected.
                 selfLoopRecover means that interface is closed 
                 because of self-loop failure.
                 selfLoopRecover means that the status of interface
                 is trying to change from selfLoopClose to normal."                       z"Clear Management object loop back status. this action means 
                 set zxAnIfLoopBackStatus value to normal."                           G"Enable or disable the ethernet switch broadcast limit.
             "                       Q"Enable or disable the ethernet switch forward flood BPDU packet.
             "                       G"Enable or disable the ethernet switch multicast limit.
             "                       4"configuare the package flood limit.
             "                       D"Enable or disable the ethernet switch port protect.
             "                       I"Enable or disable the ethernet switch unknowncast limit.
             "                       d"This table includes the ethernet-switch port Protect,for all vdsl card.             
            "                       ,"An entry in zxAnEtherVdslPortProtectTable."                       "The Port Protect id."                       "The Vlan Id."                       Q"Enable or disable the ethernet switch Port protect for Vdsl card.
            "                       "Rowstatus of this entry."                       �"Ethernet interface statistic interval, The rate and ratio value is calculated in
             this interval. The value is between 30 to 600 seconds."                       �"Global system maximum frame size, specifies the maximum frame size
             on all interfaces(PON ports and uplink interfaces). The invalid
             frame whose size is larger than the object will be discarded."                           #"The MAC of packets,which drifted."                       $"The port VLAN, which MAC drifted.."                       "The uplink Interface index."                       $"Mac drift status,success or failed"                       ?"This table provides one row for each interface loopback test."                       *"DSL line loopback test information entry"                       "Rack number of the port."                       "Shelf number of the port."                       "Slot number of the port."                       "The port number."                       �"bridge port index. eg.It is PVC ID in  ADSL port.
                 If the test is only in the physical port,then this fileds will be 0"                       v"This is loop test action expected.
                 
                 NOTES:
                 
                 "                       �"This is loop test operational status.
                  
                  Note: if zxAnIfLoopBackTestOperStatus equal to Excuting(1),
                  ifOperStaus should be loopback test(3). "                       B"This is loop test result and includes reasons for test failures."                       7"The count of cells will be sent in the loopback test."                       2"The count of recived cells in the loopback test."                       "Loop test table RowStatus . "                       1"This table includes the queue performance Stat."                       ("An entry in zxAnEtherIfQueueStatTable."                       %"The queeue number of the interface."                       D"The total number of octets received on the queue of the interface."                       E"The total number of packets received on the queue of the interface."                       K"The total number of octets transmitted out of the queue of the interface."                       L"The total number of packets transmitted out of the queue of the interface."                       B"The total number of octets droped in the queue of the interface."                       C"The total number of packets droped in the queue of the interface."                       �"This table provides objects to monitor optical module
         in a network element. It also provides
        objects for setting high and low threshold levels."                       ("An entry in zxAnOpticalModuleMonTable."                       \"The optical power monitored at the input.
            Value 0x7fffffff means unsupported."                       �"The lower limit threshold on input optical power.
            The alarm should be generated when zxAnOpticalPowerRxCurrValue 
            is lower than this threshold. "                       �"The upper limit threshold on input optical power. 
            The alarm should be generated when zxAnOpticalPowerRxCurrValue 
            exceeds this threshold."                       ]"The optical power monitored at the output.
            Value 0x7fffffff means unsupported."                       �"The lower limit threshold on output optical power.
            The alarm should be generated  when zxAnOpticalPowerTxCurrValue is 
            lower than this threshold. "                       �"The upper limit threshold on output optical power.
            The alarm should be generated when zxAnOpticalPowerTxCurrValue 
            exceeds this threshold."                       3"The optical modules interface rate  at the input."                       4"The optical modules  interface rate at the output."                       U"The optical modules bias current .
            Value 0x7fffffff means unsupported."                       W"The optical  modules supply voltage.
            Value 0x7fffffff means unsupported."                       S"The optical  modules wavelength.
            Value 0x7fffffff means unsupported."                       T"The optical modules temperature .
            Value 0x7fffffff means unsupported."                       N"The optical modules vender P/N.
            Empty string means unsupported."                       P"The optical  modules vender name.
            Empty string means unsupported."                       �"The lower limit threshold on optical modules bias current.
            The alarm should be generated  when zxAnOpticalBiasCurrent 
            is lower than this threshold."                       �"The upper limit threshold on optical modules bias current.
            The alarm should be generated when zxAnOpticalBiasCurrent 
            exceeds this threshold."                       �"The lower limit threshold on optical modules supply voltage.
            The alarm should be generated when zxAnOpticalSupplyVoltage 
            is lower than this threshold."                       �"The upper limit threshold on optical modules supply voltage.
            The alarm should be generated when zxAnOpticalSupplyVoltage 
            exceeds this threshold."                       �"The lower limit threshold on optical modules temperature.
            The alarm should be generated  when zxAnOpticalTemperature 
            is lower than this threshold."                       �"The upper limit threshold on optical modules temperature.
            The alarm should be generated when zxAnOpticalTemperature 
            exceeds this threshold."                       U"The optical module interface rate.
            Value 0x7fffffff means unsupported."                        "The optical module Fiber Type."                       P"The optical module vension Level.
            Empty string means unsupported."                       M"The optical  module vender sn.
            Empty string means unsupported."                       R"The optical module production date.
            Empty string means unsupported."                       G"The optical module type.
            Empty string means unsupported."                       K"The optical fiber interface.
            Empty string means unsupported."                       e"The material number of pin(A2).
            The string which is composed of 'f' means unsupported."                       o"The optical module data is from register.
            The string which is composed of 'f' means unsupported."                               �"The mode of virtual COM port.           
            discovered(1) - The COM port will be discovered with broadcast 
                             by the manager.
            report(2)     - The COM port will report itself to the manager.
           "                       <"The listening port of virtual COM port in discovered mode."                       B"The remote manager ip address of vitual COM port in report mode."                       C"The remote manager TCP/IP port of vitual COM port in report mode."                       @"The listening port of virtual COM port for signaling transfer."                       ."The VLAN ID is used to transfer com package."                           "The COM port table. "                       #"An entry in the COM port table . "                       "The index of the COM port. "                       #"The config type of the COM port. "                       $"The flow control of the COM port. "                      k"The communication mode of the COM port.
            ipAndPort (1)      -  The COM port will send and receive message
                                  with the specified IP and port.        
            virtualComPort (2) -  The COM port will be managed and communicated 
                                  with other virtual COM port.          
           "                       @"The protocol of the COM port communication in ipAndPort mode. "                       9"The local TCP/UDP port for the COM port communication. "                       6"The peer IP address for the COM port communication. "                       3"The TCP/UDP port for the COM port communication. "                       6"The encryption mode for the COM port communication. "                       9"The cache ability while reading data from the COM port."                       |"The packet size condition while transmitting packet.
            The packet will be transmitted once this size satisfied."                       x"The interval condition while transmitting packet.
            The packet will be transmitted once the time satisfied."                       �"The mode of COM port.           
            discovered(1) - The COM port will be discovered with broadcast 
                             by the manager.
            report(2)     - The COM port will report itself to the manager.
           "                       B"The remote manager ip address address type such as IPv4 or IPv6."                       ;"The remote manager ip address of COM port in report mode."                       <"The remote manager TCP/IP port of COM port in report mode."                       b"The VLAN ID is used to transfer COM package.
            Value 0 means no VLAN ID is specified."                       ("A list of Ethernet statistics entries."                       �"A collection of statistics kept for a particular
               Ethernet interface.  As an example, an instance of the
                  etherHistStatsPkts object might be named etherHistStatsPkts.1"                       W"The value of this object uniquely identifies this
             etherHistStats entry."                      ""The total number of events in which packets
             were dropped by the probe due to lack of resources.
             Note that this number is not necessarily the number of
             packets dropped; it is just the number of times this
             condition has been detected."                      A"The total number of octets of data (including
             those in bad packets) received on the
             network (excluding framing bits but including
             FCS octets).

             This object can be used as a reasonable estimate of
             ethernet utilization.  If greater precision is
             desired, the etherHistStatsPkts and etherHistStatsOctets
             objects should be sampled before and after a common
             interval.  The differences in the sampled values are
             Pkts and Octets, respectively, and the number of
             seconds in the interval is Interval.  These values
             are used to calculate the Utilization as follows:

                              Pkts * (9.6 + 6.4) + (Octets * .8)
              Utilization = -------------------------------------
                                      Interval * 10,000

             The result of this equation is the value Utilization
             which is the percent utilization of the ethernet
             segment on a scale of 0 to 100 percent."                       w"The total number of packets (including bad packets,
             broadcast packets, and multicast packets) received."                       �"The total number of good packets received that were
             directed to the broadcast address.  Note that this
             does not include multicast packets."                       �"The total number of good packets received that were
             directed to a multicast address.  Note that this
             number does not include packets directed to the
             broadcast address."                      �"The total number of packets received that
             had a length (excluding framing bits, but
             including FCS octets) of between 64 and 1518
             octets, inclusive, but had either a bad
             Frame Check Sequence (FCS) with an integral
             number of octets (FCS Error) or a bad FCS with
             a non-integral number of octets (Alignment Error)."                       �"The total number of packets received that were
             less than 64 octets long (excluding framing bits,
             but including FCS octets) and were otherwise well
             formed."                       �"The total number of packets received that were
             longer than 1518 octets (excluding framing bits,
             but including FCS octets) and were otherwise
             well formed."                      T"The total number of packets received that were less
             than 64 octets in length (excluding framing bits but
             including FCS octets) and had either a bad Frame
             Check Sequence (FCS) with an integral number of
             octets (FCS Error) or a bad FCS with a non-integral
             number of octets (Alignment Error).

             Note that it is entirely normal for
             etherHistStatsFragments to increment.  This is because
             it counts both runts (which are normal occurrences
             due to collisions) and noise hits."                      �"The total number of packets received that were
             longer than 1518 octets (excluding framing bits,
             but including FCS octets), and had either a bad
             Frame Check Sequence (FCS) with an integral number
             of octets (FCS Error) or a bad FCS with a
             non-integral number of octets (Alignment Error).

             Note that this definition of jabber is different
             than the definition in IEEE-802.3 section 8.2.1.5
             (10BASE5) and section 10.3.1.4 (10BASE2).  These
             documents define jabber as the condition where any
             packet exceeds 20 ms.  The allowed range to detect
             jabber is between 20 ms and 150 ms."                       ]"The best estimate of the total number of collisions
             on this Ethernet segment."                       �"The total number of packets (including bad
             packets) received that were 64 octets in length
             (excluding framing bits but including FCS octets)."                       �"The total number of packets (including bad
             packets) received that were between
             65 and 127 octets in length inclusive
             (excluding framing bits but including FCS octets)."                       �"The total number of packets (including bad
             packets) received that were between
             128 and 255 octets in length inclusive
             (excluding framing bits but including FCS octets)."                       �"The total number of packets (including bad
             packets) received that were between
             256 and 511 octets in length inclusive
             (excluding framing bits but including FCS octets)."                       �"The total number of packets (including bad
             packets) received that were between
             512 and 1023 octets in length inclusive
             (excluding framing bits but including FCS octets)."                       �"The total number of packets (including bad
             packets) received that were between
             1024 and 1518 octets in length inclusive
             (excluding framing bits but including FCS octets)."                       �"A list of interface entries.  The number of entries is
                 given by the value of ifNumber.  This table contains
                 additional objects for the interface table."                       o"An entry containing additional management information
                 applicable to a particular interface."                       `"The value of this object uniquely identifies this
                       etherHisStats entry."                      �"The total number of octets received on the interface,
                 including framing characters.  This object is a 64-bit
                 version of ifInOctets.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      "The number of packets, delivered by this sub-layer to a
                 higher (sub-)layer, which were not addressed to a multicast
                 or broadcast address at this sub-layer.  This object is a
                 64-bit version of ifInUcastPkts.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      Z"The number of packets, delivered by this sub-layer to a
                 higher (sub-)layer, which were addressed to a multicast
                 address at this sub-layer.  For a MAC layer protocol, this
                 includes both Group and Functional addresses.  This object
                 is a 64-bit version of ifInMulticastPkts.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      �"The number of packets, delivered by this sub-layer to a
                 higher (sub-)layer, which were addressed to a broadcast
                 address at this sub-layer.  This object is a 64-bit version
                 of ifInBroadcastPkts.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      �"The total number of octets transmitted out of the
                 interface, including framing characters.  This object is a
                 64-bit version of ifOutOctets.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      U"The total number of packets that higher-level protocols
                 requested be transmitted, and which were not addressed to a
                 multicast or broadcast address at this sub-layer, including
                 those that were discarded or not sent.  This object is a
                 64-bit version of ifOutUcastPkts.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      �"The total number of packets that higher-level protocols
                 requested be transmitted, and which were addressed to a
                 multicast address at this sub-layer, including those that
                 were discarded or not sent.  For a MAC layer protocol, this
                 includes both Group and Functional addresses.  This object
                 is a 64-bit version of ifOutMulticastPkts.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      H"The total number of packets that higher-level protocols
                 requested be transmitted, and which were addressed to a
                 broadcast address at this sub-layer, including those that
                 were discarded or not sent.  This object is a 64-bit version
                 of ifOutBroadcastPkts.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                       j"A list of interface entries.  The number of entries is
                 given by the value of ifNumber."                       d"An entry containing management information applicable to a
                 particular interface."                      �"A unique value, greater than zero, for each interface.  It
                 is recommended that values are assigned contiguously
                 starting from 1.  The value for each interface sub-layer
                 must remain constant at least from one re-initialization of
                 the entity's network management system to the next re-
                 initialization."                      h"The total number of octets received on the interface,
                 including framing characters.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      �"The number of packets, delivered by this sub-layer to a
                 higher (sub-)layer, which were not addressed to a multicast
                 or broadcast address at this sub-layer.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      9"The number of packets, delivered by this sub-layer to a
                 higher (sub-)layer, which were addressed to a multicast or
                 broadcast address at this sub-layer.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime.
     
                 This object is deprecated in favour of ifInMulticastPkts and
                 ifInBroadcastPkts."                      E"The number of inbound packets which were chosen to be
                 discarded even though no errors had been detected to prevent
                 their being deliverable to a higher-layer protocol.  One
                 possible reason for discarding such a packet could be to
                 free up buffer space.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      �"For packet-oriented interfaces, the number of inbound
                 packets that contained errors preventing them from being
                 deliverable to a higher-layer protocol.  For character-
                 oriented or fixed-length interfaces, the number of inbound
                 transmission units that contained errors preventing them
                 from being deliverable to a higher-layer protocol.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      \"For packet-oriented interfaces, the number of packets
                 received via the interface which were discarded because of
                 an unknown or unsupported protocol.  For character-oriented
                 or fixed-length interfaces that support protocol
                 multiplexing the number of transmission units received via
                 the interface which were discarded because of an unknown or
                 unsupported protocol.  For any interface that does not
                 support protocol multiplexing, this counter will always be
                 0.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      o"The total number of octets transmitted out of the
                 interface, including framing characters.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      "The total number of packets that higher-level protocols
                 requested be transmitted, and which were not addressed to a
                 multicast or broadcast address at this sub-layer, including
                 those that were discarded or not sent.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      �"The total number of packets that higher-level protocols
                 requested be transmitted, and which were addressed to a
                 multicast or broadcast address at this sub-layer, including
                 those that were discarded or not sent.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime.
     
                 This object is deprecated in favour of ifOutMulticastPkts
                 and ifOutBroadcastPkts."                      "The number of outbound packets which were chosen to be
                 discarded even though no errors had been detected to prevent
                 their being transmitted.  One possible reason for discarding
                 such a packet could be to free up buffer space.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                      H"For packet-oriented interfaces, the number of outbound
                 packets that could not be transmitted because of errors.
                 For character-oriented or fixed-length interfaces, the
                 number of outbound transmission units that could not be
                 transmitted because of errors.
     
                 Discontinuities in the value of this counter can occur at
                 re-initialization of the management system, and at other
                 times as indicated by the value of
                 ifCounterDiscontinuityTime."                       5"The length of the output packet queue (in packets)."                       ""                       "a entry of this table."                       ,"The index of this Ethernet vlan stat table"                       "The vlan id"                       ,"Enable/disable the ethernet vlan Statisic."                       "Received Broadcast Packets"                       "Received Unicast Packets"                       "Received Multicast Packets"                       "Received Broadcast Packets"                       $"Received Discarded Unicast Packets"                       &"Received Discarded Multicast Packets"                       "Transmitted Broadcast Packets"                       "Transmitted Unicast Packets"                       "Transmitted Multicast Packets"                       )"Transmitted Discarded Broadcast Packets"                       '"Transmitted Discarded Unicast Packets"                       )"Transmitted Discarded Multicast Packets"                       K"The total number of packets transmitted out of the
           interface."                       8"The total number of packets received on the interface."                       >"The total number of octets transmitted out of the interface."                       7"The total number of octets received on the interface."                       ("The total number of discarded packets."                      "This object indicates the ratio of transmitted packets discarded
             by this traffic processor due to subscriber bandwidth limitations.
        
             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                      "This object indicates the ratio of received packets discarded
             by this traffic processor due to subscriber bandwidth limitations.
        
             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                      "This object indicates the ratio of transmitted packets discarded
             by this traffic processor due to congestion in the queues.
        
            Discontinuities in the value of this counter can occur at
            re-initialization of the management system."                       "This object indicates the number of transmitted packets discarded
             by this traffic processor due to subscriber bandwidth limitations.
        
             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                      "This object indicates the number of received packets discarded
             by this traffic processor due to subscriber bandwidth limitations.
        
             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                      "This object indicates the number of transmitted packets discarded
             by this traffic processor due to congestion in the queues.
        
            Discontinuities in the value of this counter can occur at
            re-initialization of the management system."                       ,"The transmitted bit rate of the interface."                       )"The received bit rate of the interface."                       �"The total number of errored octets transmitted out of the
            VLAN, including framing characters.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system."                       �"The total number of errored octets received on the VLAN,
            including framing characters.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system."                       "The row status of this entry."                               B"The table listing PPPoE test entries. An entry indicates a test." "Used by MAP"                     '"An entry in the zxAnIfPppoeTestTable."                       ("This object indicates the rack number."                       )"This object indicates the shelf number."                       ("This object indicates the slot number."                       1"This object indicates the physical port number."                       �"When zxAnIfPppoeTestCircuitType are 'onu' or 'gemportOrLlid' or
            'servicePort', this object indicates 'onu ID'.
            When zxAnIfPppoeTestCircuitType are 'physicalPort' or 'bridgePort',
            its value is '0'."                       )"This object indicates the type of port."                      �"This value is an oid which indicats the logical index.

            When zxAnIfPppoeTestCircuitType is 'physicalPort', its value is '0'.
            When zxAnIfPppoeTestCircuitType is 'bridgePort', this object
            includes {pvc}, such as oid {1} indicates pvc1.
            When zxAnIfPppoeTestCircuitType is 'onu', its value is '0'.
            When zxAnIfPppoeTestCircuitType is 'gemportOrLlid', this object
            includes {gemport/llid}, such as oid {1} indicates gemport1/llid1.
            When zxAnIfPppoeTestCircuitType is 'onuUni', this object
            includes {ONU slot and UNIID}, this type is used for SFU only.
            When the slotNo is not cared about, the slotNo should be 0, 
            such as oid{0.1}, which indicates slotNo0 and UNIID1.
            When zxAnIfPppoeTestCircuitType is 'servicePort', this object
            includes {serviceportID}, such as oid {1} indicates serviceportID1."                      2"The VLAN of interface which will be used in testing datagram.

            0 means that test will use the PVID of interface.
            Non-zero value must be within the tagged VLAN list of interface. If
            can not find the VLAN in the tagged VLAN list of interface, test
            fail."                      W"The status of test. Agent need keep this parameter updated so that
            manager can get the latest status of test by polling.

            notStarted(1) - test is not started
            inProgress(2) - test is in progress
            success(3) - test is completed successfully
            failed(4) - test failed
            "                      �"The failed reason of test.

            none(1)               - no error
            unknownError(2)       - unknown error
            hardwareNotSupport(3) - Hardware does not support the test.
            notFindVlan(4)        - Specified VLAN is not existed.
            padiTimeOut(5)        - PADI request timed out.
            padrTimeOut(6)        - PADR request timed out.
            lcpNegotiationFail(7) - LCP negotiation failed.
            userAuthFail(8)       - User name or password is invalid.
            ipNegotiationFail(9)  - IP negotiation failed.
            pppoeTestTimeout(10)  - PPPoE test timed out.
            "                       "The user name."                       "The password."                       1"The protocol that is used to anthenticate user."                      "The object is used to start or stop test. The object could be
            specified when creating an entry, also could be specified alone in a
            SET operation.

            start(1) - Start the test.
            stop(2)  - Stop the test.
            "                       "Client IP address type."                       r"The IP address that is distributed by BAS when PPPoE test is
             completed successfully.
            "                       "The BAS IP address type."                       "The BAS IP address."                       "The BAS MAC address."                       P"The BAS delay.
             Value 0 means that the device disconnects to BAS."                       C"The PPPoE test timed out.
             Value 0 means no timeout."                      f"This object is used to create a new row or delete an existing row
            in this table. Only 'createAndGo' and 'destroy' need to be
            supported. If test is in progress, agent should reject the 'destroy'
            request from manager.

            'createAndGo' means creating an entry.
            'destroy' means deleting an entry."                           A"The table listing DHCP test entries. An entry indicates a test." "Used by MAP"                     &"An entry in the zxAnIfDhcpTestTable."                       "Rack No. of the interface."                       "Shelf No. of the interface."                       "Slot No. of the interface."                       %"Physical port No. of the interface."                       �"ONU No. of the interface.
             It is valid only if zxAnIfDhcpTestIfType is 'ponOnu' or 
             'portVPort' or 'onuUni' or 'servicePort', otherwise, its value 
             is 0."                       "Type of the interface."                      �"Logic index of the interface.
            
            If zxAnIfDhcpTestIfType is 'physicalPort', its value is 0.
            
            If zxAnIfDhcpTestIfType is 'bridgePort', this object
            indicates 'pvc', such as oid '1' indicates 'PVC1'.
            
            If zxAnIfDhcpTestIfType is 'ponOnu', its value is 0.
            
            If zxAnIfDhcpTestIfType is 'ponVPort', this object
            indicates 'ponVPort', such as oid '1' indicates 'PortVPort1'.
            
            If zxAnIfDhcpTestIfType is 'onuUni', this object
            indicates 'onuSlot.uniId', this type is used for SFUs only.
            If the ONU slot is not cared about, the onuSlot is 0,
            such as oid '0.1' indicates 'ONUSlot0.UNIID1'.
            
            If zxAnIfDhcpTestIfType is 'servicePort', this object
            indicates 'servicePort', such as oid '1' indicates 'ServicePort1'."                      2"The VLAN of interface which will be used in testing datagram.

            0 means that test will use the PVID of interface.
            Non-zero value must be within the tagged VLAN list of interface. If
            can not find the VLAN in the tagged VLAN list of interface, test
            fail."                      W"The status of test. Agent need keep this parameter updated so that
            manager can get the latest status of test by polling.

            notStarted(1) - test is not started
            inProgress(2) - test is in progress
            success(3) - test is completed successfully
            failed(4) - test failed
            "                      ^"The failed reason of test.

            none(1)                - no error
            unknownError(2)        - unknown error
            hardwareNotSupport(3)  - Hardware does not support the test.
            notFindVlan(4)         - Specified VLAN is not existed.
            dhcpDiscoverTimeOut(5) - DHCP discover timed out.
            dhcpRequestTimeOut(6)  - DHCP request timed out.
            refusedByDhcpServer(7) - DHCP request refused by server.
            dhcpAuthFailed(8)      - DHCP authentication failed.
            dhcpTestTimeOut(9)     - DHCP test timed out.
            "                      "The object is used to start or stop test. The object could be
            specified when creating an entry, also could be specified alone in a
            SET operation.

            start(1) - Start the test.
            stop(2)  - Stop the test.
            "                       "Client IP address type."                       q"The IP address that is distributed by BAS when Dhcp test is
             completed successfully.
            "                       "The BAS IP address type."                       "The BAS IP address."                       "The BAS MAC address."                       P"The BAS delay.
             Value 0 means that the device disconnects to BAS."                       B"The DHCP test timed out.
             Value 0 means no timeout."                       #"The DHCP test client MAC address."                      �"DHCP test authentication mode.
             noAuth(1)              - DHCP test without authentication.
             option60String(2)      - authenticate with 
                                      zxAnIfDhcpTestOption60String.
             usernameAndPassword(3) - authenticate with zxAnIfDhcpTestUserName 
                                      and zxAnIfDhcpTestPassword.
            "                       �"The option60 for DHCP test.
             This object is valid when zxAnIfDhcpTestAuthMode is 
             option60String(1).
            "                       �"The user name. 
             This object is valid when zxAnIfDhcpTestAuthMode is 
             usernameAndPassword(2).
            "                       �"The password.
             This object is valid when zxAnIfDhcpTestAuthMode is 
             usernameAndPassword(2).
            "                       "The gateway IP address type."                       "The gateway IP address."                       /"The maximum delay for DHCP test ping gateway."                       /"The minimum delay for DHCP test ping gateway."                       0"The average delay for DHCP test ping gateway ."                       2"The successful times for DHCP test ping gateway."                      �"The status of this conceptual row.

             To create a row in this table, a manager must
             set this object to createAndGo(4).
          
             In particular, a newly created row cannot be created
             until the corresponding zxAnIfDhcpTestVlanId 
             have been set.
             
             To delete a row in this table, a manager must
             set this object to destroy(6)."                       0"Interface packet rate limit information table."                       "A entry of this table."                       ."The index of this packet rate limit ifIndex."                       M"Maximum broadcast packet rate.
             If it is 65535, then no limit."                       K"Maximum flooding packet rate.
             If it is 65535,then no limit."                       "The row status of this entry."                       ."Interface VLAN rate limit information table."                       "A entry of this table."                       4"The index of this interface VLAN rate limit table."                       "The VLAN ID."                        "The VLAN rate limit direction."                       !"The committed information rate."                       "The peak information rate."                       "The row status of this entry."                          8"The global protocol rate limiting table.
            This table specifies protocol rate limiting configuration, 
            which is used to reduce the maximum traffic rate for 
            each protocol such as DHCP, IGMP, ICMP and so on.
            This table supports get-next from first-class index. "                       #"The protocol rate limiting entry."                       "Supported interface type."                       "Supported protocol type."                       M"The packet rate limit egress value.
            0xFFFF means unconfigured."                       N"The packet rate limit ingress value.
            0xFFFF means unconfigured."                      ,"The valn protocol rate limiting table.
            This table specifies protocol rate limiting configuration, 
            which is used to reduce the maximum traffic rate for 
            each protocol such as DHCP, IGMP, ICMP and so on.
            This table supports get-next without index."                       #"The protocol rate limiting entry."                       "The VLAN ID."                       "Supported Protocol Type."                       M"The packet rate limit ingress value.
           0xFFFF means unconfigured."                       L"The packet rate limit egress value.
           0xFFFF means unconfigured."                       "The row status of this entry."                      >"The global protocol rate limiting table.
          This table specifies protocol rate limiting configuration, 
          which is used to reduce the maximum traffic rate for 
          each protocol such as DHCP, IGMP, ICMP and so on.
          This table supports get-next from 'zxAnProtoRateLimitIfPort' index."                       )"The vport protocol rate limiting entry."                       )" This object indicates the rack number."                       *" This object indicates the shelf number."                       *" This object indicates the slot number. "                       3" This object indicates the physical port number. "                       '"This object indicates the ONU number."                        "This Logical id of means vport"                       "Supported Protocol Type."                       N"The packet rate limit ingress value.
            0xFFFF means unconfigured."                       F"The packet rate egress value.
           0xFFFF means unconfigured."                       "The row status of this entry."                      C"The global protocol rate limiting table.
           This table specifies protocol rate limiting configuration, 
           which is used to reduce the maximum traffic rate for 
           each protocol such as DHCP, IGMP, ICMP and so on.
           This table support get-next from 'zxAnProtoRateLmtIfVlanPort' index."                       )"The vport protocol rate limiting entry."                       )" This object indicates the rack number."                       *" This object indicates the shelf number."                       *" This object indicates the slot number. "                       3" This object indicates the physical port number. "                       '"This object indicates the ONU number."                        "This Logical id of means vport"                       "The VLAN ID."                       "Supported Protocol Type."                       N"The packet rate limit ingress value.
            0xFFFF means unconfigured."                       M"The packet rate limit egress value.
            0xFFFF means unconfigured."                       "The row status of this entry."                       �"The supported protocol rate limiting table.
            This table specifies which kinds of information on protocol type,
            rate limiting scale and unit are supported for current device."                       -"The supported protocol rate limiting entry."                       )"Supported Protocol Rate Limiting Scale."                       "Supported Protocol Type."                        "The VLAN rate limit direction."                       6"Supported unit type of rate for a specific protocol."                           �"The interface protocol transparent table.
             This table specifies that interface transparent 
             transmits protocol.
             This table supports get-next from 'zxAnIfProtocolTransIfType' 
             index."                       +"The interface protocol transparent entry."                       "Rack No. of the interface."                       "Shelf No. of the interface."                       "Slot No. of the interface."                       %"Physical port No. of the interface."                       &"The ONU number. It is 0 in DSL port."                       "Type of the interface."                      �"Logic index of the interface.
            
            If zxAnIfTransProtocolIfType is 'physicalPort', its value is 0.
            
            If zxAnIfTransProtocolIfType is 'bridgePort', this object
            indicates 'pvc', such as oid '1' indicates 'PVC1'.
            
            If zxAnIfTransProtocolIfType is 'ponOnu', its value is 0.
            
            If zxAnIfTransProtocolIfType is 'ponVPort', this object
            indicates 'ponVPort', such as oid '1' indicates 'PortVPort1'.
            
            If zxAnIfTransProtocolIfType is 'onuUni', this object
            indicates 'onuSlot.uniId', this type is used for SFUs only.
            If the ONU slot is not cared about, the onuSlot is 0,
            such as oid '0.1' indicates 'ONUSlot0.UNIID1'.
            
            If zxAnIfTransProtocolIfType is 'servicePort', this object
            indicates 'servicePort', such as oid '1' indicates 'ServicePort1'.
            
            If zxAnIfTransProtocolIfType is 'vlan', this object indicates
            'vlanId | svlanId.cvlanId', such as oid '1' indicates 'VLANID1',
            oid '1.2' indicates 'SVLANID1.CVLANID2'.
            "                        "The transparent protocol type."                       "The row status of this entry."                           �"This table includes the optical module threshold profile. 
            It can be configured up to 32,which one is the default profile."                       +"An entry in zxAnOpticalModuleAlmPrfTable."                       �"A textual string containing information about the
            optical module alarm threshold profile name. It can be
            configured up to 32 profiles,which one is the default
            profile."                       �"The lower limit threshold on input optical power.
            The alarm should be generated  when zxAnOpticalIfRxPwrCurrValue
            is lower than this threshold. The default value is -340. "                       �"The upper limit threshold on input optical power. 
            The alarm should be generated when zxAnOpticalIfRxPwrCurrValue
            exceeds this threshold.The default value is 30. "                       �"The lower limit threshold on output optical power.
            The alarm should be generated  when zxAnOpticalIfTxPwrCurrValue
            is lower than this threshold. The default value is -140. "                       �"The upper limit threshold on output optical power.
            The alarm should be generated when zxAnOpticalIfTxPwrCurrValue
            exceeds this threshold.The default value is 90. "                       �"The lower limit threshold on optical modules bias
            current.The alarm should be generated  when
            zxAnOpticalBiasCurrent is lower than this threshold.
            The default value is 0. "                       �"The upper limit threshold on optical modules bias current.
            The alarm should be generated when zxAnOpticalBiasCurrent 
            exceeds this threshold.The default value is 1310. "                       �"The lower limit threshold on optical modules supply voltage.
            The alarm should be generated when zxAnOpticalSupplyVoltage 
            is lower than this threshold.The default value is 0. "                       �"The upper limit threshold on optical modules supply voltage.
            The alarm should be generated when zxAnOpticalSupplyVoltage 
            exceeds this threshold.The default value is 70. "                       �"The lower limit threshold on optical modules temperature.
            The alarm should be generated  when zxAnOpticalTemperature 
            is lower than this threshold.The default value is -45. "                       �"The upper limit threshold on optical modules temperature.
            The alarm should be generated when zxAnOpticalTemperature 
            exceeds this threshold.The default value is 90. "                       �"Indicates whether optical module is online/offline 
            traps should be generated
            for this interface.The default value is enabled(1)"                      A"The status of this conceptual row.
            
            The supported actions of this conceptual row only include:
            'createAndGo' and 'destroy'.

            To create a row in this table, a manager must set this object to 
            createAndGo(4), and must comply with the multi-variables binding 
            rule described in zxAnExampleFunc1Xxx1Entry.
    
            To delete a row in this table, a manager must set this object to 
            destroy(6). 
             
            To get this object, the agent always returns active(1)."                       ?"This table includes the optical module profile configuration."                       +"An entry in zxAnOpticalAlmPrfIfConfTable."                       n"A textual string containing information about the
            optical module alarm threshold profile name ."                       B"This table includes the ALS configuration of the optical module."                       ("An entry in zxAnOpticalAlsIfConfTable."                       %"Enable or disable the ALS function."                       �"This attribute specifies the value of the LOS duration. 
            The laser will be shutdown when detected the LOS duration 
            longer than zxAnOptAlsLaserLosDuration value.
            Setting this object will enable the ALS function."                       �"This attribute specifies the value of the laser shutdown 
            duration. 
            Setting this object will enable the ALS function."                       �"This attribute specifies the value of the laser re-open 
            duration.
            Setting this object will enable the ALS function."                               !"The number of total ADSL ports."                       !"The number of total VDSL ports."                       ""The number of total SHDSL ports."                       *"The number of total ethernet user ports."                       !"The number of total IGMP ports."                       $"The number of total PWE3 E1 ports."                           ""The number of online ADSL ports."                       ""The number of online VDSL ports."                       #"The number of online SHDSL ports."                       +"The number of online ethernet user ports."                       ""The number of online IGMP ports."                       %"The number of online PWE3 E1 ports."                           ""The number of active ADSL ports."                       ""The number of active VDSL ports."                       #"The number of active SHDSL ports."                       +"The number of active ethernet user ports."                       %"The number of active PWE3 E1 ports."                           2"Interface VLAN CoS performance statistics table."                       &"An entry in zxAnIfVlanCosStatsTable."                       }"An integer that is in the range of the layer 2 CoS values.
             This corresponds to the 802.1p and ISL CoS values."                       1"Enable/disable the interface VLAN CoS Statisic."                       �"The total number of octets transmitted out of the interface,
             including framing characters. 
             Discontinuities in the value of this counter can occur at 
             re-initialization of the management system."                       �"The total number of octets received on the interface, including
             framing characters. 
             Discontinuities in the value of this counter can occur at 
             re-initialization of the management system."                      �"The total number of packets that higher-level protocols requested
             be transmitted, and which were not addressed to a multicast or 
             broadcast address at this sub-layer, including those that were 
             discarded or not sent.
             Discontinuities in the value of this counter can occur at 
             re-initialization of the management system."                      ="The number of packets, delivered by this sub-layer to a higher
             (sub-)layer, which were not addressed to a multicast or broadcast 
             address at this sub-layer.
             Discontinuities in the value of this counter can occur at 
             re-initialization of the management system."                      �"The total number of packets that higher-level protocols requested
             be transmitted, and which were addressed to a multicast address at 
             this sub-layer, including those that were discarded or not sent.
             For a MAC layer protocol, this includes both Group and Functional 
             addresses. 
             Discontinuities in the value of this counter can occur at 
             re-initialization of the management system."                      �"The number of packets, delivered by this sub-layer to a higher
             (sub-)layer, which were addressed to a multicast address at this 
             sub-layer. For a MAC layer protocol, this includes both Group and 
             Functional addresses.  
             Discontinuities in the value of this counter can occur at 
             re-initialization of the management system."                      g"The total number of packets that higher-level protocols requested
             be transmitted, and which were addressed to a broadcast address at 
             this sub-layer, including those that were discarded or not sent.
             Discontinuities in the value of this counter can occur at 
             re-initialization of the management system."                      ;"The number of packets, delivered by this sub-layer to a higher
             (sub-)layer, which were addressed to a broadcast address at this 
             sub-layer.               
             Discontinuities in the value of this counter can occur at 
             re-initialization of the management system."                      "This object indicates the ratio of transmitted packets discarded
             by this traffic processor due to subscriber bandwidth limitations.
        
             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                      "This object indicates the ratio of received packets discarded
             by this traffic processor due to subscriber bandwidth limitations.
        
             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                      "This object indicates the ratio of transmitted packets discarded
             by this traffic processor due to congestion in the queues.
        
            Discontinuities in the value of this counter can occur at
            re-initialization of the management system."                       "This object indicates the number of transmitted packets discarded
             by this traffic processor due to subscriber bandwidth limitations.
        
             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                      "This object indicates the number of received packets discarded
             by this traffic processor due to subscriber bandwidth limitations.
        
             Discontinuities in the value of this counter can occur at
             re-initialization of the management system."                      "This object indicates the number of transmitted packets discarded
             by this traffic processor due to congestion in the queues.
        
            Discontinuities in the value of this counter can occur at
            re-initialization of the management system."                      ?"The status of this conceptual row.
            
            The supported actions of this conceptual row only include:
            'createAndGo' and 'destroy'.

            To create a row in this table, a manager must set this object to 
            createAndGo(4), and must comply with the multi-variables binding 
            rule described in zxAnIfVlanCosStatsEntry.
    
            To delete a row in this table, a manager must set this object to 
            destroy(6). 
             
            To get this object, the agent always returns active(1)."                            "Interface storm control table."                       %"A entry of zxAnIfStormControlTable."                       2"The index of this interface storm control table."                       "Storm control packet type."                       �"The packet rate limit ingress value. 
             Value 0 means that the packet will be discarded.
             0x7FFFFFFE means no limit.                            
             0x7FFFFFFF means not supported."                       �"The packet rate limit egress value. 
             Value 0 means that the packet will be discarded.
             0x7FFFFFFE means no limit.
             0x7FFFFFFF means not supported."                        "The unit of packet rate limit."                       %"Interface VLAN storm control table."                       )"A entry of zxAnIfVlanStormControlTable."                       7"The index of this interface VLAN storm control table."                       "The VLAN ID."                       "Storm control packet type."                       \"Value 0 means that the packet will be discarded.
             Value 65535 means no limit."                       "Burst size."                      C"The status of this conceptual row.
            
            The supported actions of this conceptual row only include:
            'createAndGo' and 'destroy'.

            To create a row in this table, a manager must set this object to 
            createAndGo(4), and must comply with the multi-variables binding 
            rule described in zxAnIfVlanStormControlEntry.
    
            To delete a row in this table, a manager must set this object to 
            destroy(6). 
             
            To get this object, the agent always returns active(1)."                           &"Interface protocol rate limit table."                       '"A entry of zxAnProtoIfRateLimitTable."                       ;"The index of this interface ptrotocol packet limit table."                       "The protocol packet type."                       �"The packet rate limit ingress value. 
             Value 0 means that the packet will be discarded,
             0x7FFFFFFE means no limit.
             0x7FFFFFFF means not supported."                       �"The packet rate limit egress value. 
             Value 0 means that the packet will be discarded,
             0x7FFFFFFE means no limit.
             0x7FFFFFFF means not supported."                           1"Interface VLAN MAC address learned limit table."                       1"Interface VLAN MAC address learned limit entry."                       "Interface index."                       
"VLAN ID."                       k"Maximum Learned MAC Addresses.
             
             Value 0 mean to disable MAC address learning."                      F"The status of this conceptual row.
            
            The supported actions of this conceptual row only include:
            'createAndGo' and 'destroy'.

            To create a row in this table, a manager must set this object to 
            createAndGo(4), and must comply with the multi-variables binding 
            rule described in zxAnIfVlanMacLearnedLimitEntry.
    
            To delete a row in this table, a manager must set this object to 
            destroy(6). 
             
            To get this object, the agent always returns active(1)."                           ;"The operational status of uplink interface changes to up."                 ="The operational status of uplink interface changes to down."                 @"The operational status of access link interface changes to up."                 B"The operational status of access link interface changes to down."                 <"The optical fiber module has checked loss of signal event."                 c"The optical fiber module has checked that the loss of signal event
            has been cleared."                 �"SelfLoop failure of access link interface has been found.
            Varible ifIndex indicates which access link interface has SelfLoop 
            failure."                 $"SelfLoop failure has been cleared."                 �"Mac draft of access link interface has been found.
            Varible ifIndex indicates which access link interface has MAC draft."                 "MAC drift has been cleared."                 "The interface signal degrade."                 '"The interface signal degrade cleared."                 v" It indicates that ZxAnEtherIfStat15minFCSErrors exceeds the threshold 
             zxAnEtherIf15minFcsErrsThresh."                 w" It indicates that ZxAnEtherIfStat15minFCSErrors is below the threshold 
             zxAnEtherIf15minFcsErrsThresh."                 t" It indicates that ZxAnEtherIfStat1dayFCSErrors exceeds the threshold 
             zxAnEtherIf1dayFcsErrsThresh."                 v" It indicates that ZxAnEtherIfStat1dayFCSErrors is below  the threshold 
             zxAnEtherIf1dayFcsErrsThresh."                 q" It indicates that zxAnEtherIfOutBandwidthUtil exceeds the threshold 
             zxAnEtherIfOutBwUtilThresh."                 s" It indicates that zxAnEtherIfOutBandwidthUtil is below  the threshold 
             zxAnEtherIfOutBwUtilThresh."                 v" It indicates that zxAnEtherIfInBandwidthUtil exceeds the threshold 
             zxAnEtherIfInBandwidthUtilThresh."                 x" It indicates that zxAnEtherIfInBandwidthUtil is below  the threshold 
             zxAnEtherIfInBandwidthUtilThresh."                 k" It indicates that zxAnOpticalPowerRxCurrValue is below  
            the zxAnOpticalPowerRxLowerThresh."                 %" zxAnOptPwrRxUnderThreshAlarm clear"                 m" It indicates that zxAnOpticalPowerRxCurrValue is exceeds  
            the zxAnOpticalPowerRxUpperThresh."                 %" zxAnOptPwrRxOverThreshAlarm clear."                 k" It indicates that zxAnOpticalPowerTxCurrValue is below  
            the zxAnOpticalPowerTxLowerThresh."                 %" zxAnOptPwrTxUnderThreshAlarm clear"                 m" It indicates that zxAnOpticalPowerTxCurrValue is exceeds  
            the zxAnOpticalPowerTxUpperThresh."                 %" zxAnOptPwrTxOverThreshAlarm clear."                 q" It indicates that zxAnEthIfStat1SecFcsErrs exceeds 
            the threshold zxAnEthIfStat1SecFcsErrsThresh."                 '" zxAnEthIf1SecFcsErrsThreshAlm clear."                 i" It indicates that zxAnOpticalBiasCurrent 
               is below the zxAnOpticalBiasCurrLowerThresh."                 '" zxAnOptBiasCurrUnderThreshAlm clear."                 g"It indicates that zxAnOpticalBiasCurrent 
               is over the zxAnOpticalBiasCurrUpperThresh."                 " zxAnOptOverCurrent clear."                 i" It indicates that zxAnOpticalSupplyVoltage is below 
              the zxAnOpticalVoltageLowerThresh."                 " zxAnOptUnderVoltage clear."                 f"It indicates that zxAnOpticalSupplyVoltage 
             is over the zxAnOpticalVoltageUpperThresh."                 " zxAnOptOverVoltage clear."                 d" It indicates that zxAnOpticalTemperature is below 
              the zxAnOpticalTempLowerThresh."                 $" zxAnOptLowTemperatureAlarm clear."                 a"It indicates that zxAnOpticalTemperature is over 
             the zxAnOpticalTempUpperThresh."                 %" zxAnOptHighTemperatureAlarm clear."                 @"The operational status of access link interface changes to up."                 B"The operational status of access link interface changes to down."                