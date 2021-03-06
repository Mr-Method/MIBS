                       f"The MIB module for the Performance Management of ZTE
                        Access Node interface." �"Zhang Weiping      ZTE Corporation
                         Mail: zhang.weiping@zte.com.cn
                         Tel : 021-68896470" "201109132000Z" "201108101500Z" "201108051500Z" "201107021400Z" '"Modify this mib according to standar." T"Add the table zxAnBrgIfCurrStatsTable for vport port stats 
            function." T"Add the table zxAnEthIfCurrStatsTable for ether port stats 
            function." %"Initial version of this MIB module."                   <"Current performance data table of the ethernet interfaces."                       <"Current performance data entry of the ethernet interfaces."                      J"The total number of octets received on the interface,
            including framing characters.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            ifCounterDiscontinuityTime."                      W"The total number of packets received on the interface,
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
            ifCounterDiscontinuityTime."                      �"The number of packets, delivered by this sub-layer to a
            higher (sub-)layer, which were addressed to a multicast
            address at this sub-layer.  For a MAC layer protocol, this
            includes both Group and Functional addresses.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            ifCounterDiscontinuityTime."                      �"The number of packets, delivered by this sub-layer to a
            higher (sub-)layer, which were addressed to a broadcast
            address at this sub-layer.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            ifCounterDiscontinuityTime."                       w"The number of packets,which above the configured MTU-size,
             e.g.mtu = 2000 (frames >2000 are discarded)."                       U"The number of packets,which above the min port size,
             the value is 64."                       j"The total number of octets transmitted out of the interface, 
            including framing characters."                       k"The total number of packets transmitted out of the interface, 
            including framing characters."                      �"The total number of packets that higher-level protocols
            requested be transmitted, and which were not addressed to a
            multicast or broadcast address at this sub-layer, including
            those that were discarded or not sent.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            ifCounterDiscontinuityTime."                      0"The total number of packets that higher-level protocols
            requested be transmitted, and which were addressed to a
            multicast address at this sub-layer, including those that
            were discarded or not sent.  For a MAC layer protocol, this
            includes both Group and Functional addresses.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            ifCounterDiscontinuityTime"                      �"The total number of packets that higher-level protocols
            requested be transmitted, and which were addressed to a
            broadcast address at this sub-layer, including those that
            were discarded or not sent.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            ifCounterDiscontinuityTime."                      �"A count of MAC Control frames transmitted on
             this interface with an opcode indicating the
             PAUSE operation.

             This counter does not increment when the
             interface is operating in half-duplex mode.

             For interfaces operating at 10 Gb/s, this
             counter can roll over in less than 5 minutes if
             it is incrementing at its maximum rate.  Since
             that amount of time could be less than a
             management station's poll cycle time, in order
             to avoid a loss of information, a management
             station is advised to poll the
             dot3HCOutPauseFrames object for 10 Gb/s or
             faster interfaces.

             Discontinuities in the value of this counter can
             occur at re-initialization of the management
             system, and at other times as indicated by the
             value of ifCounterDiscontinuityTime."                      �"The number of outbound packets which were chosen to be
            discarded even though no errors had been detected to prevent
            their being transmitted.  One possible reason for discarding
            such a packet could be to free up buffer space.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            ifCounterDiscontinuityTime."                      C"A count of frames that are involved in out collision and 
             are subsequently transmitted successfully.

             A frame that is counted by an instance of this
             object is also counted by the corresponding
             instance of either the ifOutUcastPkts,
             ifOutMulticastPkts, or ifOutBroadcastPkts,
             and is not counted by the corresponding
             instance of the dot3StatsSingleCollisionFrames
             object.

             This counter does not increment when the
             interface is operating in full-duplex mode.

             Discontinuities in the value of this counter can
             occur at re-initialization of the management
             system, and at other times as indicated by the
             value of ifCounterDiscontinuityTime."                      X"A count of frames that are involved in a single
             collision, and are subsequently transmitted
             successfully.

             A frame that is counted by an instance of this
             object is also counted by the corresponding
             instance of either the ifOutUcastPkts,
             ifOutMulticastPkts, or ifOutBroadcastPkts,
             and is not counted by the corresponding
             instance of the dot3StatsMultipleCollisionFrames
             object.

             This counter does not increment when the
             interface is operating in full-duplex mode.

             Discontinuities in the value of this counter can
             occur at re-initialization of the management
             system, and at other times as indicated by the
             value of ifCounterDiscontinuityTime."                      Z"A count of frames that are involved in more
             than one collision and are subsequently
             transmitted successfully.

             A frame that is counted by an instance of this
             object is also counted by the corresponding
             instance of either the ifOutUcastPkts,
             ifOutMulticastPkts, or ifOutBroadcastPkts,
             and is not counted by the corresponding
             instance of the dot3StatsSingleCollisionFrames
             object.

             This counter does not increment when the
             interface is operating in full-duplex mode.

             Discontinuities in the value of this counter can
             occur at re-initialization of the management
             system, and at other times as indicated by the
             value of ifCounterDiscontinuityTime."                      n"A count of frames received on a particular
             interface that are an integral number of octets
             in length but do not pass the FCS check.  This
             count does not include frames received with
             frame-too-long or frame-too-short error.

             The count represented by an instance of this
             object is incremented when the frameCheckError
             status is returned by the MAC service to the
             LLC (or other MAC user). Received frames for
             which multiple error conditions pertain are,
             according to the conventions of IEEE 802.3
             Layer Management, counted exclusively according
             to the error status presented to the LLC.

             Note:  Coding errors detected by the physical
             layer for speeds above 10 Mb/s will cause the
             frame to fail the FCS check.

             For interfaces operating at 10 Gb/s, this
             counter can roll over in less than 5 minutes if
             it is incrementing at its maximum rate.  Since
             that amount of time could be less than a
             management station's poll cycle time, in order
             to avoid a loss of information, a management
             station is advised to poll the
             dot3HCStatsFCSErrors object for 10 Gb/s or
             faster interfaces.

             Discontinuities in the value of this counter can
             occur at re-initialization of the management
             system, and at other times as indicated by the
             value of ifCounterDiscontinuityTime."                      �"A count of frames received on a particular
             interface that are not an integral number of
             octets in length and do not pass the FCS check.

             The count represented by an instance of this
             object is incremented when the alignmentError
             status is returned by the MAC service to the
             LLC (or other MAC user). Received frames for
             which multiple error conditions pertain are,
             according to the conventions of IEEE 802.3
             Layer Management, counted exclusively according
             to the error status presented to the LLC.

             This counter does not increment for group
             encoding schemes greater than 4 bits per group.

             For interfaces operating at 10 Gb/s, this
             counter can roll over in less than 5 minutes if
             it is incrementing at its maximum rate.  Since
             that amount of time could be less than a
             management station's poll cycle time, in order
             to avoid a loss of information, a management
             station is advised to poll the
             dot3HCStatsAlignmentErrors object for 10 Gb/s
             or faster interfaces.

             Discontinuities in the value of this counter can
             occur at re-initialization of the management
             system, and at other times as indicated by the
             value of ifCounterDiscontinuityTime."                       e"Clear all the current performance variables.
             When get this variable, always return 1."                       6"Current performance data table of bridge interfaces."                       6"Current performance data entry of bridge interfaces."                      J"The total number of octets received on the interface,
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
            ifCounterDiscontinuityTime."                      �"The number of packets, delivered by this sub-layer to a
            higher (sub-)layer, which were addressed to a multicast
            address at this sub-layer.  For a MAC layer protocol, this
            includes both Group and Functional addresses.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            ifCounterDiscontinuityTime."                      �"The number of packets, delivered by this sub-layer to a
            higher (sub-)layer, which were addressed to a broadcast
            address at this sub-layer.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            ifCounterDiscontinuityTime."                       j"The total number of octets transmitted out of the interface, 
            including framing characters."                      �"The total number of packets that higher-level protocols
            requested be transmitted, and which were not addressed to a
            multicast or broadcast address at this sub-layer, including
            those that were discarded or not sent.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            ifCounterDiscontinuityTime."                      0"The total number of packets that higher-level protocols
            requested be transmitted, and which were addressed to a
            multicast address at this sub-layer, including those that
            were discarded or not sent.  For a MAC layer protocol, this
            includes both Group and Functional addresses.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            ifCounterDiscontinuityTime"                      �"The total number of packets that higher-level protocols
            requested be transmitted, and which were addressed to a
            broadcast address at this sub-layer, including those that
            were discarded or not sent.

            Discontinuities in the value of this counter can occur at
            re-initialization of the management system, and at other
            times as indicated by the value of
            ifCounterDiscontinuityTime."                       e"Clear all the current performance variables.
             When get this variable, always return 1."                      ?"The status of this conceptual row.
            
            The supported actions of this conceptual row only include:
            'createAndGo' and 'destroy'.

            To create a row in this table, a manager must set this object to 
            createAndGo(4), and must comply with the multi-variables binding 
            rule described in zxAnBrgIfCurrStatsEntry.
    
            To delete a row in this table, a manager must set this object to 
            destroy(6). 
             
            To get this object, the agent always returns active(1)."                       0"Current statistics data table of service port."                       $"A zxAnSrvPortCurrStatsTable entry."                       "An index for a bridge port."                       "Service port ID."                       d"The total number of octets received on the interface, including 
             framing characters."                       k"The total number of octets transmitted out of the interface, 
             including framing characters."                       "Received unicast packets."                       "Transmitted unicast packets."                       "Received multicast packets."                        "Transmitted multicast packets."                       "Received broadcast packets."                        "Transmitted broadcast packets."                       "Received octet rate."                       "Transmitted octet rate."                       "Received octet peak rate."                       "Transmitted octet peak rate."                       ;"Value 1 means to clear all the current performance value."                      A"The status of this conceptual row.
            
            The supported actions of this conceptual row only include:
            'createAndGo' and 'destroy'.

            To create a row in this table, a manager must set this object to 
            createAndGo(4), and must comply with the multi-variables binding 
            rule described in zxAnSrvPortCurrStatsEntry.
    
            To delete a row in this table, a manager must set this object to 
            destroy(6). 
             
            To get this object, the agent always returns active(1)."                               e"The compliance statement for entities which implement the
             ZTE-AN-INTERFACE-STATS-MIB."                   f"A collection of objects providing current performance data of 
            the ethernet interfaces."                 d"A collection of objects providing current performance data of 
            the bridge interfaces."                 _"A collection of objects providing current performance data of 
            the service port."                                