                                  "The MIB module for Eaton Environment Monitoring Probes (EMP).
         The elements of this MIB have been extracted from the 
         Eaton PowerMIB and placed in this separate MIB file for convenience.

        Copyright (C) Eaton Corporation (2007)."+"Eaton Power Quality Technical Support (PQTS) group
            www.eaton.com/powerxpert 
            Technical Resource Center phone numbers 
			United States:  1.800.843.9433 or 919.870.3028
			Canada:  1.800.461.9166 ext. 260
			All other countries:  Call your local service representative." "200703120000Z" !"Initial Version of eatonEMPMIB."                   "The EMP scalar objects."                 !"The EMP Contacts Table objects."                 ,"The compliance statement for a normal EMP."               -"The reading of an EMP's temperature sensor."                       *"The reading of an EMP's humidity sensor."                       �"The number of Contacts in the xupsContactSenseTable.
        This object indicates the number of rows in the 
        xupsContactSenseTable."                       �"A list of Contact Sensing table entries.  
        The number of entries is given by the value of 
        xupsEnvNumContacts."                       U"An entry containing information applicable 
        to a particular Contact input."                       �"The Contact identifier; identical to the Contact Number.
        This object is not-accessible to MIB browsers, but had to be changed to
        read-only to satisfy SMIv2 syntax checkers if it is included in traps."             -- actually not-accessible
        �"The normal state for this contact.  The 'other' (not 'Normally')
        state is the Active state for generating the xupstdContactActiveNotice
        trap.  If anyChange(3) is selected, then this trap is sent
        any time the contact changes to either Open or Closed.
        No traps are sent if the Contact is set to notUsed(4).
        In many cases, the configuration for Contacts may be done by other 
        means, so this object may be read-only."                      K"The current state of the Contact input;
        the value is based on the open/closed input state 
        and the setting for xupsContactType.
        When entering the openWithNotice(3) and closedWithNotice(4) 
        states, no entries added to the xupsAlarmTable, but
        the xupstdContactActiveNotice trap is sent."                       \"A label identifying the Contact.  This object should be
        set by the administrator."                       �"The Lower Limit of the EMP temperature; if xupsEnvRemoteTemp 
        falls below this value, the xupsRemoteTempBad alarm will occur."                       �"The Upper Limit of the EMP temperature; if xupsEnvRemoteTemp 
        rises above this value, the xupsRemoteTempBad alarm will occur.
        This value should be greater than xupsEnvRemoteTempLowerLimit."                       �"The Lower Limit of the EMP humidity reading; if xupsEnvRemoteHumidity
        falls below this value, the xupsRemoteHumidityBad alarm will occur."                       �"The Upper Limit of the EMP humidity reading; if xupsEnvRemoteHumidity 
        rises above this value, the xupsRemoteHumidityBad alarm will occur.
        This value should be greater than xupsEnvRemoteHumidityLowerLimit."                      