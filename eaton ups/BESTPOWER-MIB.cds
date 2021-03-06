o--BESTPOWER-MIB { iso(1) org(3) dod(6) internet(1) private(4)
--      enterprises(1) bestpower(2947) }
--Last Modification 03/23/00 by Steve Van Duser
--Contributing Authors:  Steve Van Duser BEST POWER
--                       Jamie Krueger   BEST POWER
--                       Brian Young     BEST POWER
--                       RFC1628 model for a UPS MIB
                                                 D"SEVERE: The Inverter heatsink assembly inside the UPS is too hot ."           --  All FERRUPS models
 ="SEVERE: The failure of one or more fuses has been detected."             h"INFORMATION: The UPS has entered in 'sleep' mode. Power to the
                load has been cut off."             8"WARNING: The UPS has switched to battery backup power."             �"WARNING: The battery charger voltage on the UPS has reached a
                value that is too high for safe battery maintenance."           |-- Fortress, Fortress II, Unity/1 Single-Phase, and  FERRUPS.
-- Also include  (Check Charger)
-- for FERRUPS FE series.
 r"SEVERE: A critical fault has been detected inside the UPS.
                Power to the load has been shut off."             `"INFORMATION: The UPS has returned from a near low or high battery
                 condition."             )"SEVERE: The last test performed failed."             /"INFORMATION: The UPS is not on battery power."             V"INFORMATION: The UPS woke up from 'sleep' mode. Power to the load has been restored."             q"SEVERE: The runtime remaining on battery power is very short,
                and the UPS will soon shut down."             @"INFORMATION: The UPS has returned from an on bypass condition."             m"SEVERE: The Emergency Power OFF feature has been activiated at
                the RS-232 port on the UPS."             *"SEVERE: The fan on the UPS has stopped ."           d-- Unity/1 single phase, Fortress,  Fortress II (Fan Malfunction)
-- and  FERRUPS (Check Cooling)
 X"INFORMATION: The UPS has returned from a high ambient temp
                condition."             %"INFORMATION: A test is in progress."             5"SEVERE: The Bypass is presently engaged on the UPS."             5"SEVERE: There is a hardware problem inside the UPS."             A"SEVERE: The UPS has failed a scheduled or manual inverter test."             F"SEVERE: The temperature of the PFM module inside the UPS is too hot."           )-- FERRUPS FE with PFM module installed
 b"INFORMATION: A  manual test of the alarm beeper is being performed
                 on the UPS."             M"INFORMATION: Communication with the UPS has been
                restored."             X"INFORMATION: The UPS has returned from an output overload
                 condition."             P"SEVERE: One or all of the temperature probes has been disconnected on the UPS."           -- FERRUPS FE only
 H"INFORMATION: The UPS has returned from a high heatsink temp condition."             D"SEVERE: The internal DC supply voltages are attenuated or missing."             �"SEVERE: To much load equipment has been connected to the UPS and
                 has has caused excess current draw  from the output."           "-- Unity/1 single phase UPS only
 _"INFORMATION: The UPS has returned from a circuit breaker warning
                 condition."             C"INFORMATION: The UPS has returned from a probe missing condition."             ;"WARNING: The output load exceeds the UPS output capacity."             5"WARNING: The ups history log buffer is almost full."             >"SEVERE: One or more MOVs have failed due to a voltage surge."             T"SEVERE: The UPS has lost the programmed settings in the memory of the logic board."             R"INFORMATION: The UPS has returned from a low runtime
                condition."             M"SEVERE: The temperature of the main transformer inside the UPS is too hot ."           -- All FERRUPS models
 k"SEVERE: The UPS has shut down due to an extended excess of current
                draw from the output."           "-- Unity/1 single phase UPS only
 :"SEVERE: The UPS has found a problem in your wall outlet."             Z"SEVERE: The output load has exceeded the UPS output capacity, and the UPS has shut down."           -- All FERRUPS Models
 �"SEVERE: The UPS batteries are low and will soon be exhausted.
                If utility power is not restored the UPS will put itself
                to 'sleep' and immediately cut power to the load."             ^"WARNING: The ups has been given shutdown command
                by the management station."             /"INFORMATION: Utility power has been restored."             V"INFORMATION: The ups has been turned off
                by the management station."             �"SEVERE: A hardware malfunction has occurred inside the UPS.
                Please consult a factory authorized service  representative for assistance."             L"WARNING: The UPS battery voltage is either too low or missing to start up."             '"WARNING: Utility power not available."             ]"SEVERE: The UPS detected a possible failure in the tap changer (open or welded relay, etc.)"             �"SEVERE: The UPS will run for approximately 2 minutes more and then
                put itself to sleep to prevent a complete discharge of the batteries."             y"SEVERE: Communication to the UPS has been lost.  Steps
                  to reestablish communication are in progress."             -"INFORMATION: The test of UPS has completed."             @"SEVERE: The UPS has failed a scheduled or manual battery test."             8"SEVERE: One or more UPS batteries need to be replaced."             3"WARNING: The ups event log buffer is almost full."             #"INFORMATION: The UPS is rebooted."             ="SEVERE: The internal temperature inside the UPS is too hot."           -- All FERRUPS models
                                         -"An ID string identifying the Family of UPS."                       *"The UPS model name (example: 'FE500VA')."                       >"The capacity rating of the UPS expressed in VoltAmperes(VA)."                       "Type of UPS."                       9"A unique identification number provided by the factory."                       #"The firmware revision of the UPS."                       ;"The date when the UPS was installed in mm/dd/yyyy format."                           "The status of the inverter ."                       J"The elapsed time in seconds since the UPS has switched to battery power."                       R"The remaining time in minutes that the UPS will be able to run on battery power."                       0"The UPS battery voltage expressed in 1/10 VDC."                       ,"The battery current expressed in 1/10 ADC."                       :"The internal UPS temperature expressed in 1/10 degree C."                       �"The date when the UPS system's batteries were last replaced
                in mm/dd/yyyy format. When the UPS batteries are replaced,
                this value should be reset by the administrator."                       6"The UPS battery cell voltage expressed in 1/100 VDC."                       �"The UPS battery voltage measured from the most postive point in the battery
                string to the common reference point. The value is expressed in 1/10 VDC."                       �"The UPS battery voltage measured from the most negative point in the battery
                string to the common reference point. The value is expressed in 1/10 VDC."                           ("The utility line frequency in 1/10 Hz."                       '"The utility line voltage in 1/10 VAC."                       -"The utility line current in 1/10 Ampere AC."                           3"The magnitude of the present input current on L1."                       3"The magnitude of the present input current on L2."                       3"The magnitude of the present input current on L3."                           @"The magnitude of the present input voltage from L1 to Neutral."                       @"The magnitude of the present input voltage from L2 to Neutral."                       @"The magnitude of the present input voltage from L3 to Neutral."                           ;"The magnitude of the present input voltage from L1 to L2."                       ;"The magnitude of the present input voltage from L2 to L3."                       ;"The magnitude of the present input voltage from L3 to L1."                           7"The output frequency of the UPS expressed in 1/10 Hz."                       6"The output voltage of the UPS expressed in 1/10 VAC."                       ="The output current of the UPS expressed in 1/10 AC Amperes."                       <"The true output power of the UPS expressed in 1/100 Watts."                       J"The apparent output power of the UPS expressed in 1/100 VoltAmperes(VA)."                       d"The output powerfactor of the UPS expressed in +/- 1/100 units deviating
                 from 1."                       d"The percentage of the total UPS power capacity being used expressed
                 in % of 100."           -- UNITS percent
               A"The magnitude of the present Output voltage from L1 to Neutral."                       A"The magnitude of the present Output voltage from L2 to Neutral."                       A"The magnitude of the present Output voltage from L3 to Neutral."                           <"The magnitude of the present Output voltage from L1 to L2."                       <"The magnitude of the present Output voltage from L2 to L3."                       <"The magnitude of the present Output voltage from L3 to L1."                           4"The magnitude of the present Output current on L1."                       4"The magnitude of the present Output current on L2."                       4"The magnitude of the present Output current on L3."                           :"The magnitude of the present Output ApparentPower on L1."                       :"The magnitude of the present Output ApparentPower on L2."                       :"The magnitude of the present Output ApparentPower on L3."                           6"The magnitude of the present Output TruePower on L1."                       6"The magnitude of the present Output TruePower on L2."                       6"The magnitude of the present Output TruePower on L3."                           8"The magnitude of the present Output PowerFactor on L1."                       8"The magnitude of the present Output PowerFactor on L2."                       8"The magnitude of the present Output PowerFactor on L3."                           8"The magnitude of the present Output PercentLoad on L1."                       8"The magnitude of the present Output PercentLoad on L2."                       8"The magnitude of the present Output PercentLoad on L3."                           ~"The delay in seconds that the UPS waits before executing an off
                command upon request of an external device."                       &"The status of the Auto Restart mode."                       �"Setting this value to 1, enables the UPS to be shutdown after the
                registered clients operating systems have shutdown."                           R"The amount of time to delay in seconds before sending the first AC Fail message."                       Y"The amount of time to delay in seconds between sending the additional AC Fail messages."                       �"Determines whether or not to initiate a shutdown of all registered clients based on the
                AC Fail event with duration."                       {" The time allowed in seconds during an AC Fail condition before shutting
                down of all registered clients."                           �"Determines whether or not to initiate a shutdown of all registered clients based on the
                Low Battery condition."                       *"The table to schedule ups battery tests."                       "The entries for each day."                        "The index of scheduled events."                       0"The weekday on which the UPS should shut down."                       F"The time that the process of shutting down the UPS will be initiated"                       ."The table to schedule shutting down the ups."                       "The entries for each day."                        "The index of scheduled events."                       0"The weekday on which the UPS should shut down."                       F"The time that the process of shutting down the UPS will be initiated"                       -"The weekday on which the UPS should restart"                       3"The time the UPS will restart in hh:mm:ss format."                           7"The frequency of updating the history log in minutes."                       �"The frequency of saving configuration,history and event log data
                in non-volatile memory. If the value is set to 0, then saving data
                is disabled."                       Q"The IP address of the device. Setting this parameter causes BestLink to reboot."                       ?"The gateway address for the network BestLink is connected to."                       "The net mask of the device."                       �"The system date of the device. The date is in mm/dd/yyyy format.
                The range of system date is from 1/1/1980 to 12/31/2037."                       @"The system time of the device. The time is in hh:mm:ss format."                       >"The tftp file name that contains the software upgrade image."                       7"The tftp host IP address from where to get the image."                       c"Saves the history log, eventlog, and configuration data to non-volatile
                 memory."                       Z"The primary time server is responsible for sending the
        correct time to the UPS."                       Y"The secondary time server responsible for sending the
        correct time to the UPS."                       #"The version of BestLink software."                       ;"The version of MIB implemented in SNMP/WEB Card software."                       0"Enable/Disable DHCP function of SNMP/WEB Card."                       2"Enable/Disable Telnet function of SNMP/WEB Card."                       0"Enable/Disable TFTP function of SNMP/WEB Card."                       ;"Reset all parameters of SNMP/WEB Card to default setting."                       "Restart of SNMP/WEB Card."                           &"A list of managers to send traps to."                        "The managers to send traps to."                       %"The index to a trap receiver entry."                       2"The IP address of the manager to send a trap to."                       S"The community name to use in the trap when
                 sent to the manager."                      "The severity threshold of traps to send to the manager.
                 Traps are labeled by severity as informational(1), warning(2),
                 severe(3).  Only traps of equal or greater severity than
                 this value are sent to the manager."                       V"An entry will become active if yes, otherwise it will be
                 disabled."                           �"A list of registered shutdown client table entries.
                 The table contains zero, one, or many rows at any moment,
                 depending upon the number of Netwatch clients registered
                 with BestLink"                       i"An entry containing information applicable to a
                particular registered shutdown client."                       B"An index of alarm entries in the RegisteredShutdownClientsTable."                       2"The IP Address of the registered shutdown client"                       2"The total number of registered shutdown clients."                          �"Setting this variable to UpsOff(2) causes the UPS to shut off.
                When the UPS is in the off state, the UPS will remain off until
                the ON/OFF switch is manually toggled.

                Setting this variable to cancelUpsOff(1) allows for a method to cancel
                the upsOff(2) command to the UPS that is still pending, or will make
                an attempt to restart a UPS that has been shutdown, provided that
                BestLink is powered by some other means.

                Setting this variable to rebootUps(3) causes the UPS to shut off
                and turn back on.

                Setting this variable to cancelrebootUps(4) allows for a method to
                cancel the rebootUps(3) command to the UPS that is still pending,
                or will make an attempt to restart a UPS that has been shutdown,
                provided that BestLink is powered by some other means."                      h"Setting this variable to On(2) causes the
                UPS to activate the scheduling parameters that have been previously
                configured within the upsConfigDailyShutdownScheduleTable and the
                upsConfigWeeklyShutdownScheduleTable. Setting this variable to Off(1)
                suspends all currently configured schedules."                      �"Setting this value to a value other than (disable) begins to increase the UPS ability
                to reject poor line sources for example from a poorly regulated AC generator.
                The greater the value the greater the tolerance to allow poor line to be used to power the UPS.
                This control is used to prevent the UPS from using its batteries to create output power and
                allow an AC generator to supply power to the UPS."                           �"Setting this variable to any value other than (1) causes the UPS
                to perform a manual test or abort a particular test in progress."                           0"The present number of active alarm conditions."                       �"A unique identifier for an alarm condition.  This
                value must remain constant. Value 'noAlarm(37)'
                will be returned if no Alarm has occured till the
                point of GET operation."                      ["A list of alarm table entries.  The table contains
                zero, one, or many rows at any moment, depending upon
                the number of alarm conditions in effect.  The table
                is initially empty at agent startup.  The agent
                creates a row in the table each time a condition is
                detected and deletes that row when that condition no
                longer pertains.  The agent creates the first row with
                upsAlarmIndex equal to 1, and increments the value of
                upsAlarmIndex each time a new row is created."                       T"An entry containing information applicable to a
                particular alarm."                       -"An index of alarm entries in the alarm log."                       `"A unique identifier for an alarm condition.  This
                value must remain constant."                       6"The time that the alarm occurred in hh:mm:ss format."                           ."The UPS is drawing power from the batteries."                       j"The remaining battery runtime is less than or equal
                to the upsConfigLowRuntimeSetpoint."                       �"The battery voltage on the UPS has reached a value where the inverter will
                not be able to function very much longer."                       �"The battery voltage on the UPS has reached a value where the inverter
                 has stopped providing output power to the connected load equipment.
                 The UPS has shutdown to protect the batteries from complete discharge."                       }"The battery charger voltage on the UPS has reached a value that
                 is too high for safe battery maintenance."                       �"The periodic battery test has failed. A manual test of the batteries
                 needs to be performed to  determine which battery\batteries need
                 replaced."                       s"One or more batteries have been determined to require
                replacement.    Compatibility: Fortress II"                       4"The inverter has failed the automatic system test."                       f"The UPS has detected that the DC voltage needed to start up is too
                 low or missing."                       2"The output load exceeds the UPS output capacity."                       R"The output load has exceeded the UPS output capacity, and the UPS has shut down."                       �"To much load equipment has been connected to the UPS and has has caused excess
                 current draw from the output."                     "-- Unity/1 single phase UPS only
 d"The UPS has shut down due to an extended excess of current draw
                 from the output."                     "-- Unity/1 single phase UPS only
 -"The Bypass is presently engaged on the UPS."                     -- SOLA/BEST UPS only
 j"The UPS has gone into the Auto Bypass mode to redirect power around
                 the UPS circuitry."                     "-- Unity/1 single phase UPS only
 2"The UPS has found a problem in your wall outlet."                       !"The fan on the UPS has stopped "                     b--Unity/1 single phase, Fortress,  Fortress II (Fan Malfunction),
--and FERRUPS (Check Cooling)
 5"The internal temperature inside the UPS is too hot."                     -- All FERRUPS models
 ;"The Inverter heatsink assembly inside the UPS is to hot ."                     --  All FERRUPS models
 E"The temperature of the main transformer inside the UPS is too hot ."                     -- All FERRUPS models
 ?"The temperature of the PFM module inside the UPS is too hot ."                     )-- FERRUPS FE with PFM module installed
 B"One or all of the sense probes has been disconnected on the UPS."                       <"The internal DC supply voltages are attenuated or missing."                       g"The UPS detected a possible failure in the tap changer (open or
                 welded relay, etc.)"                       -"There is a hardware problem inside the UPS."                       5"The failure of one or more fuses has been detected."                       6"One or more MOVs have failed due to a voltage surge."                       ^"The UPS has lost the programmed settings in the memory of the logic
                 board."                       �"A hardware malfunction has occurred inside the UPS. Please consult a
                factory authorized service  representative for assistance."                       /"A general fault in the UPS has been detected."                     -- BEST/SOLA UPS
 1"A user test of the alarm beeper is in progress."                     -- All FERRUPS models
 "A test is in progress."                       ="The result of the last diagnostic test indicates a failure."                       f"The Emergency Power OFF feature has been activiated at the RS-232
                 port on the UPS."                       ,"The output of the UPS is in the off state."                       f"A problem has been encountered in the
                communications between the agent and the UPS."                            "The status of the bypass mode."                           A"The magnitude of the present Bypass voltage from L1 to Neutral."                       A"The magnitude of the present Bypass voltage from L2 to Neutral."                       A"The magnitude of the present Bypass voltage from L3 to Neutral."                           <"The magnitude of the present Bypass voltage from L1 to L2."                       <"The magnitude of the present Bypass voltage from L2 to L3."                       <"The magnitude of the present Bypass voltage from L3 to L1."                          