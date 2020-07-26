     �"Indicates the optional capabilities of the control protocol.  
       A value of zero indicates the basic LDP PW signaling.   
       Values may be added in the future based on new capabilities   
       introduced in IETF documents.  
      "               �"An octet string used in the generalized FEC element for  
       identifying attachment forwarder and groups. The NULL   
       identifier is of zero length.  
      "              Q"VLAN configuration for Ethernet PW.   
         Values between 0 to 4095 indicate the actual VLAN field  
         value.   
         A value of 4096 indicates that the object refer to   
         untagged frames, i.e. frames without 802.1Q field.  
         A value of 4097 indicates that the object is not   
         relevant."               v"Pseudo Wire Index. Locally unique index for indexing  
         several MIB tables associated with a particular PW."               �"An administrative identification mechanism for grouping a  
         set of service-specific pseudo-wire services. May only  
         have local significance."               �"If set to value other than zero, it indicates desired   
       fragmentation to the value set. If set to zero,   
       fragmentation is not desired for PSN bound packets.   
      "              -"Indicates the status of the control word negotiation based  
       on the local configuration and the indications received from  
       the peer node.    
 
       waitingForNextMsg(1) indicates that the node is waiting for   
       another label mapping from the peer.  
 
       sentWrongBitErrorCode(2) indicates that the local node has   
       notified the peer about mismatch in the C bit.  
 
       rxWithdrawWithWrongBitErrorCode(3) indicates that a withdraw   
       message has been received with the wrong C-bit error code.  

       illegalReceivedBit(4) indicates a C bit configuration with  
       the peer which is not compatible with the PW type.  
 
       cwPresent(5) indicates that the CW is present for this PW:  
       if signaling is used - C bit is set and agreed between the  
       nodes, and for manual configured PW the local configuration  
       require the use of the CW.  
 
       cwNotPresent(6) indicates that the CW is not present for   
       this PW: if signaling is used - C bit is reset and agreed   
       between the nodes, and for manual configured PW the local   
       configuration requires that CW would not be used. 
         
       notYetKnown(7) indicates that a label mapping has not yet   
       received from the peer.  
      "               �"Pseudo-Wire Identifier. Used to identify the PW   
         (together with some other fields) in the signaling   
         session. Zero if the PW is set-up manually."              3"The status of the fragmentation process based on local   
       configuration and the peer capability.  
 
       noFrag(0) bit indicates that local configuration is for no   
       fragmentation.  
 
       cfgFragGreaterThanPsnMtu(1) bit indicates the local desire  
       to fragment, but the fragmentation size desired is greater   
       than the MTU available at the PSN between the nodes.   
       Fragmentation is not done in this case.  
 
       cfgFragButRemoteIncapable(2) bit indicates that the local   
       configuration indicates the desire for fragmentation but   
       the peer is not capable of fragmentation.  
 
       cfgFragFcsLengthMismatch(3) bit indicates that there is a   
       mismatch between the FCS size between the local   
       configuration and the peer configuration.  
 
       fragEnabled(4) bit indicates that both the local was   
       configured for fragmentation and the peer has the   
       cabability to accept fragmented packets, and the FCS size is  
       equal in both peers.  
      "               �"The status of the PW and the interfaces affecting this PW.  
       If none of the bits are set, it indicate no faults are   
       reported.  
      "              {"Indicates the operational status of the PW.  
 
      - up(1):            Ready to pass packets.   
      - down(2):          If PW signaling has not yet finished, or  
                          indications available at the service   
                          level indicate that the PW is not   
                          passing packets.  
      - testing(3):       If AdminStatus at the PW level is set to   
                          test.  
      - dormant(4):       The PW is not available because the  
                          required resources are occupied by   
                          higher priority PWs. 
      - notPresent(5):    Some component is missing to accomplish   
                          the set up of the PW.  
      - lowerLayerDown(6):The underlying PSN or outer tunnel is not  
                          in OperStatus 'up' state.   
      "                     �"
            This MIB module defines TEXTUAL-CONVENTIONs 
            for concepts used in Pseudo Wire Edge-to-Edge 
            networks. 
           " �"Zhongxing Telcom Co. Ltd.
                     E-mail: info@mail.zte.com.cn
                     http  : www.zte.com.cn or www.zhongxing.com"       -- May 15, 2006
              