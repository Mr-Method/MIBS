    �"The VLAN-ID that uniquely identifies a specific VLAN,
        any VLAN, or no VLAN.  The special values 0 and 4095
        have the same meaning as described in the VlanIdOrAny
        and VlanIdOrNone TEXTUAL-CONVENTIONs.

        Note that a MIB object that is defined using this
        TEXTUAL-CONVENTION should clarify the meaning of
        'any VLAN' and 'no VLAN' (i.e., the special values
        0 and 4095)."                                                         �"This MIB module describes a model for managing Ethernet
            point-to-point pseudowire services over a Packet
            Switched Network (PSN)." �"Zhongxing Telcom Co. Ltd.
                             E-mail: info@mail.zte.com.cn
                             http  : www.zte.com.cn or www.zhongxing.com"       -- May 15, 2009
           �"This table contains the index to the Ethernet tables
            associated with this ETH PW, the VLAN configuration and
            VLAN mode."                      �"This table is indexed by the same index that was created
            for the associated entry in the PW generic table in the
    
            PW-STD-MIB module.
            The zxPwIndex and the zxPwEnetPwInstance are used as indexes
            to allow multiple VLANs to exist on the same PW.
    
            An entry is created in this table by the agent for every
            entry in the pwTable with a pwType of 'ethernetTagged'
            or 'ethernet'. Additional rows may be created by the
            operator or the agent if multiple entries are required for
            the same PW.
    
            The value of zxPwEnetPwInstance can be arbitrary selected
            to make the row unique, however implementations that know
            the VLAN field value when the row is created MAY use the
            value of the VLAN itself for better readability and
            backward compatibility with older versions of this MIB
            module.
    
            This table provides Ethernet port mapping and VLAN
            configuration for each Ethernet PW.
    
            All read-create object in this table MAY be changed at any
            time, however change of some objects (for example
            zxPwEnetVlanMode) during PW forwarding state MAY cause traffic
            disruption.
    
            Manual entries in this table SHOULD be preserved after a
            re-boot, the agent MUST ensure the integrity of those
            entries. If the set of entires of a specific row are found to
            be non consistent after reboot, the PW pwOperStatus MUST be
            declared as notPresent(5).
            "                      �"If multiple rows are mapped to the same PW, this index is
             used to uniquely identify the individual row.
             If the value of the VLAN field is known at the time of
             of row creation, the value of zxPwEnetPwVlan MAY be used
             for better readability and backward compatibility with
             older versions of this MIB module. Otherwise the value
             '1' SHOULD be set to the first row for each zxPwIndex
             for better readability and in order that the management
             application will know in advance how to access the
             first row when it was created by the agent.
            "                      �"This Object defines the (service delimiting) VLAN field
            value on the PW. The value of 4095 MUST be used if the
            object is not applicable, for example when mapping all
            packets from an Ethernet port to this PW (raw mode).
            The value 0 MUST be set to indicate untagged frames
            (from the PW point of view), i.e. when zxPwEnetVlanMode
            equals 'noChange' and zxPwEnetPortVlan equals 0."                      _"This object indicates the mode of VLAN handling between the
             port or the virtual port associated with the PW and the
             PW encapsulation.
    
           - 'other' indicates an operation that is not defined by
              this MIB module.
    
            - 'portBased' indicates that the forwarder will forward
              packets between the port and the PW independent of their
              structure (i.e. there is no service delimiting VLAN tags
              from the PE standpoint).
    
            - 'noChange' indicates that the PW contains the original
               user VLAN, as specified in zxPwEnetPortVlan, i.e. the
               VLAN on the PE-CE link is the service delimiting tag
               and is kept 'as is' on the PW.
               
            - 'changeVlan' indicates that the VLAN field on the PW
              may be different than the VLAN field on the user's
              port. The VLAN on the PE-CE link is the service delimiting
              tag but has a different value on the PW.
    
            - 'removeVlan' indicates that the encapsulation on the
              PW does not include the service delimiting VLAN field.
              Note that PRI bits transparency is lost in this case.
    
            - 'addVlan' indicates that a VLAN field will be added
              on the PSN bound direction (i.e. on the PW). zxPwEnetPwVlan
              indicates the value that will be added.
    
            - Implementation of 'portsbased', 'removeVlan', 'addVlan'
              'other' and 'changeVlan' is OPTIONAL.
            "                      �"This object defines if the mapping between the original port
            (physical port or VPLS virtual port) to the PW is VLAN based
            or not. In case of VLAN mapping, this object indicates the
            the VLAN value on the original port.
    
            The value of '4095' MUST be used if the whole original port
            traffic is mapped to the same PW. Note that a pwType of
            'ethernetTagged' can still be used if service delimiting tag
            is added on the PW (zxPwEnetVlanMode equals 'addVlan').
    
            This object MUST be equal to zxPwEnetPwVlan if zxPwEnetVlanMode
            equals 'noChange'.
    
            The value 0 indicates packets without VLAN field
            (i.e. untagged frames) on the port are associated to this
            PW. This allows the same behavior as assigning 'Default
            VLAN' to untagged frames.
            "                      M"This object is used to specify the ifIndex of the Ethernet
             port associated with this PW for point-to-point Ethernet
             service, or the ifIndex of the virtual interface of the
             VPLS instance associated with the PW if the service is
             VPLS. Two rows in this table can point to the same ifIndex
             only if there is no overlap of VLAN values specified in
             zxPwEnetPortVlan that are associated with this port.
    
             A value of zero indicates that association to an ifIndex is
             not yet known."                      W"If the PW is modeled as an ifIndex in the ifTable, this
             object indicates the value of the ifIndex representing the
             Ethernet PW on the PSN side in the Etherlike-MIB. Note that
             this value may be different from the value of pwIfIndex
             that represents the ifIndex of the PW for ifType 'pw'."                       @"This object enables creating, deleting and modifying this row."                       5"This object indicates the storage type of this row."                                  