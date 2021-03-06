                                                                          �"This MIB module contains managed object definitions for   
        Pseudo Wire operation as in [RFC3985][RFC3931][PWCNTRL]. 
        architecture', Martini, L., et al, 'Pseudowire Setup and   
        Maintenance using LDP', and Townsley, M., et al, 'Layer Two  
        Tunneling Protocol (Version 3)'.  
 
        This MIB module enables the use of any underlying packet   
        switched network (PSN). MIB nodules that will support  
        PW operations over specific PSN types are defined in   
        separate memos.  
 
        The indexes for this MIB module are also used to index the  
        PSN-specific tables and the PW-specific tables. The PW Type
        dictates which PW-specific MIB module to use.   
       " �"Zhongxing Telcom Co. Ltd.
                     E-mail: info@mail.zte.com.cn
                     http  : www.zte.com.cn or www.zhongxing.com"       -- May 15, 2006
          �"This object contains an appropriate value to be used  
        for zxPwIndex when creating entries in the  
        zxPwTable. The value 0 indicates that no  
        unassigned entries are available.  To obtain the  
        value of zxPwIndex for a new entry in the  
        zxPwTable, the manager issues a management  
        protocol retrieval operation to obtain the current  
        value of zxPwIndex.  After each retrieval  
        operation, the agent should modify the value to  
        reflect the next unassigned index.  After a manager  
        retrieves a value the agent will determine through  
        its local policy when this index value will be made  
        available for reuse."                       �"This table specifies information for configuring and  
        status monitoring which are common to all service types  
        and PSN types."                      0"A row in this table represents a pseudo wire (PW) virtual  
         connection across a packet network. It is indexed by  
         zxPwIndex, which uniquely identifying a singular   
         connection.   
         A row is created by the operator or by the agent if the PW  
         is created by non-SNMP application or due to autodiscovery   
         process.  
         None of the read-create objects values can be changed   
         when zxPwRowStatus is in the active(1) state. Changes are  
         allowed when the zxPwRowStatus is in notInService(2) or  
         notReady(3) states only.   
         If the operator need to change one of the values for an  
         active row (for example in order to fix a mismatch in  
         configuration between the local node and the peer), the  
         zxPwRowStatus should be first changed to notInService(2),  
         the objects may be changed now, and later to active(1)   
         in order to re-initiate the signaling process with the  
         new values in effect.  
         "                       ["Index for the conceptual row identifying a PW within   
        this PW Emulation table."                       T"This value indicate the service to be carried over  
        this PW.   
       " "Used by MAP"                    �"Set by the operator to indicate the protocol responsible   
         for establishing this PW.  
         'manual' is used in all cases where no maintenance  
         protocol (PW signaling) is used to set-up the PW, i.e.  
         require configuration of entries in the PW tables  
         including PW labels, etc.  
         'pwIdFecSignaling' is used in case of signaling with the   
         Pwid FEC element with LDP signaling. 
         'genFecSignaling' is used of the generalized FEC with LDP   
         is used for signaling purposes.  
         'l2tpControlProtocol' indicates the use of L2TP   
         control protocol.   
         'other' is used for other types of signaling."                       �"Set by the operator to indicate the PSN type. Based on  
         this object, the relevant PSN table entries are created  
         in the in the PSN specific MIB modules.  
        " "Used by MAP"                     "This object defines the relative set-up priority of the PW    
         in a lowest-to-highest fashion, where 0 is the highest   
         priority. PWs with the same priority are treated with  
         equal priority. Dropped PW will be set 'dormant' (as  
         indicated in zxPwOperStatus).  
         This value is significant if there are competing resources  
         between PWs and the implementation support this feature. 
         Equal priority handling with competing resources is  
         implementation specific. "                      "This object defines the relative holding priority of the  
         PW in a lowest-to-highest fashion, where 0 is the highest   
         priority. PWs with the same priority are treated with  
         equal priority. Dropped PW will be set 'dormant' (as  
         indicated in zxPwOperStatus).  
         This value is significant if there are competing resources  
         between PWs and the implementation support this feature. 
         Equal priority handling with competing resources is  
         implementation specific. "                       �"Denotes the address type of the peer node. It should be   
         set to 'unknown' if PE/PW maintenance protocol is not used  
         and the address is unknown."                       �"This object contains the value of the peer node address  
         of the PW/PE maintenance protocol entity. This object  
         SHOULD contain a value of all zeroes if not applicable   
         (zxPwPeerAddrType is 'unknown')."                       "If the PW is attached to another PW instead of a local   
        native service, this item indicates the zxPwIndex of the  
        attached PW, and the PW specific entry in the service MIB  
        module MUST not be created. Otherwise, this object MUST  
        be set to zero."                       �"If the PW is represented in the ifTable as an ifIndex, this  
        item holds the ifIndex of the PW in the ifTable, otherwise   
        it MUST be set to zero."                       �"Used in the outgoing PW ID field within the 'Virtual  
        Circuit FEC Element'.  
        Applicable if zxPwOwner equal 'zxPwIdFecSignaling' or   
        'l2tpControlProtocol', should be set to zero otherwise." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                     �"Used in the Group ID field sent to the peer PWES   
        within the maintenance protocol used for PW setup.  
        Applicable if zxPwOwner equal 'zxPwIdFecSignaling' or   
        'l2tpControlProtocol', should be set to zero otherwise." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                     �"This object is an octet string representing the attachment  
        group identifier (AGI) this PW belongs too, which typically   
        identifies the VPN ID.  
        Applicable if zxPwOwner equal 'genFecSignaling'." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                    Z"This object is an octet string representing the local   
        forwarder attachment individual identifier (AII) to be   
        used by this PW. It is used as the SAII for outgoing   
        signaling messages and the TAII in the incoming messages   
        from the peer.  
 
        Applicable if zxPwOwner equal 'genFecSignaling'." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                    W"This object is an octet string representing the peer   
        forwarder attachment individual identifier (AII) to be   
        used by this PW. It is used as the TAII for outgoing   
        signaling messages and the SAII in the incoming messages   
        from the peer.  
        Applicable if zxPwOwner equal 'genFecSignaling'. " f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                     �"Defines if the control word will be sent with each packet   
        by the local node. Some PW types mandate the use of   
        control word, and is such cases the value configured has   
        no effect on the existence of the control word." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                    "If not equal zero, the optional IfMtu object in the   
        signaling protocol will be sent with this value,   
        representing the locally supported MTU size over the   
        interface (or the virtual interface) associated with the   
        PW." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                    �"A PW MAY be associated to an interface (or a virtual   
        interface) in the ifTable of the node as part of the  
        service configuration. This object defines if the   
        maintenance protocol will send the interface's name as  
        appears on the ifTable in the name object as part of the  
        maintenance protocol. If set to false, the optional   
        element will not be sent." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                     R"Indicates the capabilities to be advertised by this node  
        to the peer." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                     �"Obtained from the Group ID field as received via the   
        maintenance protocol used for PW setup, zero if not used.   
        Value of 0xFFFF shall be used if the object is yet to be   
        defined by the PW maintenance protocol." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                     �"If signaling is used for PW establishment, this object   
        indicates the status of the control word negotiation,   
        and in both signaling or manual configuration indicates   
        if CW is to be present or not for this PW." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                     �"The remote interface MTU as (optionally) received from the  
        remote node via the maintenance protocol. Should be zero   
        if this parameter is not available or not used." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                     �"Indicates the interface description string as received by  
        the maintenance protocol, MUST be NULL string if not   
        applicable or not known yet." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                     7"Indicates the capabilities as advertised by the peer." f"Martini, et al, 'Pseudowire Setup and Maintenance using  
        the Label Distribution Protocol.'"                     c"If set to value other than zero, indicates that   
        fragmentation is desired for this PW." ?"Malis A., Townsley M., 'PWE3 Fragmentation and 
Reassembly'."                   %-- I.e. fragmentation not desired  
 �"The status of the fragmentation based on the local   
        configuration and the peer capabilities as advertised by   
        the peer if control protocol is used." ?"Malis A., Townsley M., 'PWE3 Fragmentation and 
Reassembly'."                    
"The local configuration of FCS retention for this PW. FCS   
        retention can be configured for PW types HDLC, PPP and   
        Ethernet only. If the agent does not support FCS retention  
        the error should be configured in zxPwFcsRetentionStatus." Y"Malis A., et al.,  'PWE3 Frame Check Sequence Retention'   
        - work in progress"                    "The status of the FCS retention negotiation process based on  
       local configuration and the remote advertisement.  
       remoteIndicationUnknown - set if a FEC has not been received  
       from the remote.  
       remoteRequestFcsRetention - indicates that the peer has   
       requested for FCS retention. FCS retention will be used if   
       the local node is capable and configured to use it for this  
       PW.  
       fcsRetentionEnabled - FCS retention is enabled (both peers  
       were configured for FCS retention for signaled PW, or the   
       local node is configured and capable for FCS retention.  
       fcsRetentionDisabled - FCS retention is disabled (not   
       configured locally or not advertised by the peer).  
       localFcsRetentionCfgErr - Set if the local node has been  
       configured for FCS retention but is not capable to support  
       it.  
       fcsRetentionFcsSizeMismatch - Set if there is a FCS size   
       mismatch between the loacl and the peer node.  
      " ["Malis A., et al.,  'PWE3 Frame Check Sequence Retention'   

        - work in progress"                    �"The PW label used in the outbound direction (i.e. toward   
        the PSN). It may be set up manually if owner is 'manual'   
        or automatically otherwise. Examples: For MPLS PSN, it   
        represents the 20 bits of PW tag, for L2TP it represents   
        the 32 bits Session ID.  
        If the label is not yet known (signaling in process), the   
        object should return a value of 0xFFFF." "Used by MAP"                    �"The PW label used in the inbound direction (i.e. packets   
        received from the PSN. It may be set up manually if owner  
        is 'manual' or automatically otherwise.   
        Examples: For MPLS PSN, it represents the 20 bits of PW  
        tag, for L2TP it represent the 32 bits Session ID.  
        If the label is not yet known (signaling in process), the   
        object should return a value of 0xFFFF." "Used by MAP"                     ("The canonical name assigned to the PW." "Used by MAP"                     �"A textual string containing information about the PW.   
        If there is no description this object contains a zero  
        length string."                       '"System time when this PW was created."                       I"Specifies the total time this PW operStatus has been   
        Up(1)."                      "The value of sysUpTime at the time the PW entered  
       its current operational state.  If the current state was  
       entered prior to the last re-initialization of the local  
       network management subsystem, then this object contains a  
       zero value."                       ,"The desired operational status of this PW." "Used by MAP"                    �"This object indicates the operational status of the PW, it   
         does not reflect the status of the CE bound interface.   
         It is set to down only if pwNotForwarding,   
         psnFacingPwRxFault, or psnFacingPwTxFault indications are   
         set in zxPwLocalStatus or zxPwRemoteStatus.     
         It indicates 'lowerLayerDown' if the only reason for   
         not being in the 'up' state is either outer tunnel   
         or physical layer down of the network side is in the down   
         state.  
         All other states are declared based on the description in   
         the textual convention.  
         " "Used by MAP"                    ?"Indicates the status of the PW in the local node.  
         The various indications in this object should be   
         available independent of the ability of the local node to   
         advertise them or the remote node to accept these status  
         indications through the control protocol.  
        "                      b"Indicates the remote node capability to advertise the   
         PW status notification.  
         notAppicable should be reported for manually set PW, or   
         if the local node is not capable of sending the status   
         notification object.  
         notYetKnown should be reported if the signaling protocol   
         has not yet finished the process of capability   
         determination.  
         remoteCapable and remoteNotcapable should be reported   
         based on the initial signaling exchange that has   
         determined the remote node capability.  
       "                      �"Indicates the status of the PW as was advertised by the   
         remote. If the remote is not capable of advertising the   

         status object, or the local node is not able to accept   
         the status object through signaling, then the applicable   
         bit is 'pwNotForwarding' which is set if the remote has   
         sent label release or label withdraw for this PW.  
        "                       �"The number of seconds, including partial seconds,  
          that have elapsed since the beginning of the current  
          interval measurement period."                       T"The number of previous 15-minute intervals  
       for which data was collected."                       �"For creating, modifying, and deleting this row. None of the  
        read-create objects in the conceptual rows may be changed   
        when this object is in the active(1) state." "Used by MAP"                     F"This variable indicates the storage type for this  
        object."                       ""                              