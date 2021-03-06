*-- ****************************************************************************
--  ALVARION-DEVICE-MIB definitions
--
--  Copyright (c) 2007, Alvarion Ltd.
--  All Rights Reserved.
--
--  Alvarion Device MIB file.
--
-- ****************************************************************************
                                         "Alvarion Device MIB." �"Alvarion Ltd.
                     Postal: 21a HaBarzel St.
                             P.O. Box 13139
                             Tel-Aviv 69710
                             Israel
                     Phone:  +972 3 645 6262"                       ^"Specifies if the coDeviceStateChangeNotification notification
                 is generated."                       g"Specifies if the coDeviceAuthorizationFailureNotification
                 notification is generated."                       b"Specifies if the coDeviceSecurityFailureNotification
                 notification is generated."                       b"Specifies if the coDeviceFirmwareFailureNotification
                 notification is generated."                       g"Specifies if the coDeviceConfigurationFailureNotification
                 notification is generated."                           "Device discovery attributes."                       �"An entry in the coDeviceDiscoveryTable.
                 coDevDisIndex - Uniquely identifies a device on the
                                 MultiService Controller."                       $"Specifies the index of the device."                       "Device serial number."                       %"Ethernet MAC address of the device."                       "IP address of the device."                       "Device operational state."                       8"Name assigned to the device by the configuration tool."                       <"Location assigned to the device by the configuration tool."                       ;"Contact assigned to the device by the configuration tool."                       2"Identifies the group that the device belongs to."                       ?"Elapsed time in minutes since the device was last authorized."                            "Device information attributes."                       �"An entry in the coDeviceInfoTable.
                 coDevDisIndex - Uniquely identifies a device on the
                                 MultiService Controller."                       9"Refer to a Alvarion product inside alvarionProductsMIB."                       '"Alvarion product name for the device."                       )"Revision number of the device firmware."                       ,"Revision number of the device boot loader."                       )"Revision number of the system hardware."                           "Device status attributes."                       �"An entry in the coDeviceStatusTable.
                 coDevDisIndex - Uniquely identifies a device on the
                                 MultiService Controller."                       +"Time elapsed after the device powered up."                       ="Average number of processes running during the last minute."                       @"Average number of processes running during the last 5 minutes."                       A"Average number of processes running during the last 15 minutes."                       "Current CPU usage."                       ."Average CPU usage during the last 5 seconds."                       /"Average CPU usage during the last 10 seconds."                       /"Average CPU usage during the last 20 seconds."                       "Total system RAM."                       "Available system RAM."                       "Memory used by the buffers."                       ""Memory used by the system cache."                       -"Percentage of the permanent storage in use."                       -"Percentage of the temporary storage in use."                               |"A coDeviceStateChangeNotification trap signifies that the
                 SNMP entity has detected a device state change."                 �"A coDeviceAuthorizationFailureNotification trap
                 signifies that the SNMP entity has detected a device
                 authentication failure."                 �"A coDeviceSecurityFailureNotification trap signifies
                 that the SNMP entity has detected a device connection
                 failure."                 �"A coDeviceFirmwareFailureNotification trap signifies
                 that the SNMP entity has detected a device firmware
                 failure."                 �"A coDeviceConfigurationFailureNotification trap
                 signifies that the SNMP entity has detected a device
                 configuration failure."                         ."The compliance statement for the Device MIB."                   ("A collection of configuration objects."                 G"A collection of objects for Device
                 discovery status."                 J"A collection of objects for device
                 configuration items."                 ="A collection of objects for device
                 status."                 1"A collection of supported device notifications."                            