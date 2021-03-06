     �"Pseudo-Wire Identifier. Used to identify the PW  
             (together with some other fields) in the signaling  
             session. Zero if the PW is set-up manually."                                                                                         c"This MIB module defines PWE3 managed objects as extension of PWE3 standard MIB modules from IETF." �"Zhongxing Telcom Co. Ltd.
                         E-mail: info@mail.zte.com.cn
                         http  : www.zte.com.cn or www.zhongxing.com"       -- May 15, 2009
               "The CES work mode."                       "The type of CES IP address 1."                       i"CES IP address 1. When creating a pseudowire, the source IP must be zxPwe3ExtCesIp1 or zxPwe3ExtCesIp2."                       "The type of CES IP address 2."                       i"CES IP address 2. When creating a pseudowire, the source IP must be zxPwe3ExtCesIp1 or zxPwe3ExtCesIp2."                       m"CES MAC address 1. When creating a pseudowire, the source MAC must be zxPwe3ExtCesMac1 or zxPwe3ExtCesMac2."                       m"CES MAC address 2. When creating a pseudowire, the source MAC must be zxPwe3ExtCesMac1 or zxPwe3ExtCesMac2."                       �"The minimum UDP port. When creating a pseudowire, the UDP port must between zxPwe3ExtCesMinUdpPort and zxPwe3ExtCesMaxUdpPort."                       �"The maximum UDP port. When creating a pseudowire, the UDP port must between zxPwe3ExtCesMinUdpPort and zxPwe3ExtCesMaxUdpPort."                       5"This table controls pseudowire extended parameters."                      V"A row in this table represents extended parameters of a pseudowire (PW). The row is created
            automatically by the local agent. It is indexed by zxPwIndex, which uniquely identifying a singular PW.
            Manual entries in this table SHOULD be preserved after a reboot, the agent MUST ensure the integrity of those entries."                       ("The pseudowire source IP address type."                       #"The pseudowire source IP address."                       $"The pseudowire source MAC address." "Used by MAP"                     n"This table controls MPLS specific parameters when the PW is
             going to be carried over MPLS PSN."                      Y"A row in this table represents parameters specific to MPLS
            PSN for a pseudowire (PW). The row is created
            automatically by the local agent if the zxPwPsnType is
            mpls(1). It is indexed by zxPwIndex, which uniquely
            identifying a singular PW.
            Manual entries in this table SHOULD be preserved after a
            reboot, the agent MUST ensure the integrity of those
            entries.
            If the set of entries of a specific row were found to be
            non consistent after reboot, the PW pwOperStatus MUST be
            declared as down(2).
            Any read-write object in this table MAY be changed at any
            time, however change of some objects (for example
            pwMplsMplsType) during PW forwarding state MAY cause traffic
            disruption."                       ("This variable indicates the MPLS type."                       !"The MPLS Outbound Tunnel Label."                        "The MPLS Inbound Tunnel Label."                       �"Used in the outgoing VC ID field within the 'Virtual 
            Circuit FEC Element' when LDP signaling is used or PW ID  
            AVP for L2TP.""Martini, et al, <draft-martini-l2circuit-trans-mpls>. 
            and So, et al, <draft-so-pwe3-ethernet>.
            Note: as specified in l2circuit-trans: It is REQUIRED to 
            assign the same VC ID, and VC type for a given circuit in 
            both directions."                     \"Define if the control word will be sent with each packet by  
            the local node." 6"Martini, et al, <draft-martini-l2circuit-trans-mpls>"                     _"Define if the sequence number will be sent with each packet by  
            the local node."                       ="This table controls pseudowire labels which have been used."                       H"A row in this table represents pseudowire labels which have been used."                       "The PSN type."                       6"Index of the pseudowire labels which have been used."                       -"The pseudowire labels which have been used."                       9"This table controls IP head parameters of a pseudowire."                       D"A row in this table represents IP head parameters of a pseudowire."                       :"Type of service. 256 means using the original TOS value."                       "Time to live."                       "Don't Fragment."                       k"This table specifies extended information for an ATM PW
             to be carried over PSN in any mode."                      "This table contains a set of extended parameters for
             the ATM PW that needs to be adapted and carried
             over the PSN.  This table is indexed by zxPwIndex from
             zxPwTable.  An entry is created for every new ATM
             type associated zxPwIndex in the zxPwTable.  Unless
             otherwise specified, all read-write objects in
             this table MAY be changed when the PW is defined
             as not active, and all RW objects values must
             persist after reboot."                       h"A packet can be transmitted to the PSN based on timeout expiration
            for collecting cells. "                       "PW QoS table."                       "PW QoS entry."                       "Committed information rate. "                       "Committed burst size. "                       v"CoS remark value for traffic lower than CIR. 
            The value 255 indicates that no remark CoS is configured."                       "Peak information rate. "                       "Peak burst size. "                       �"CoS remark value for traffic lower than PCR and higher than 
             CIR. 
            The value 255 indicates that no remark CoS is configured."                       "The row status of this entry."                       "Pseudo-wire clock table."                        "Pseudo-wire clock table entry."                      O"Pseudo wire clock status.            
             freeRun(1)   - Pseudo-wire clock could not be acquired and in free
                            status.
             holdOver(2)  - Pseudo-wire could not acquire clock, and hold
                            current clock
                            for a while. 
             acquiring(3) - Pseudo-wire clock is being acquired.
             acquired(4)  - Pseudo-wire clock has been acquired.
             notReady(5)  - Pseudo-wire is not ready to established and clock
                            is in this status.
            "                       L"Pseudo-wire clock offset.
             The unit is ppb(part per billion)."                                  