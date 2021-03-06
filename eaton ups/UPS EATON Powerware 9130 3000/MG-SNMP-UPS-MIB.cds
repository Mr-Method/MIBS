                   ""Humidity is below low threshold."           --#SEVERITY MAJOR
 ""Trap UPS has returned from buck."           --#SEVERITY INFORMATIONAL
 '"Trap UPS battery need to be replaced."           --#SEVERITY MINOR
 %"Trap UPS battery charger is active."           --#SEVERITY INFORMATIONAL
 2"Trap UPS waiting for battery charging condition."           --#SEVERITY INFORMATIONAL
 #"Trap UPS input has bad condition."           --#SEVERITY MINOR
 ""Trap UPS has overload condition."           --#SEVERITY MAJOR
 "Trap UPS self test succeeded."           --#SEVERITY INFORMATIONAL
  "Trap UPS off sequence started."           --#SEVERITY MAJOR
 !"Trap UPS exiting low condition."           --#SEVERITY INFORMATIONAL
 "Protection Lost."           --#SEVERITY MAJOR
 "Trap UPS is on boost."           --#SEVERITY MINOR
 5"Trap UPS battery return from unavailable condition."           --#SEVERITY INFORMATIONAL
 )"Trap UPS Battery returned to OK status."           --#SEVERITY INFORMATIONAL
 "Trap UPS passed battery test."           --#SEVERITY INFORMATIONAL
 ""Trap UPS entering low condition."           --#SEVERITY CRITICAL
 %"Temperature is below low threshold."           --#SEVERITY MAJOR
 ""Trap UPS off sequence cancelled."           --#SEVERITY INFORMATIONAL
 +"Environment Probe communication restored."           --#SEVERITY INFORMATIONAL
 "Trap UPS is on by pass."           --#SEVERITY MAJOR
 ""Trap UPS utility power restored."           --#SEVERITY INFORMATIONAL
 !"Trap UPS on sequence cancelled."           --#SEVERITY INFORMATIONAL
 &"Temperature is above high threshold."           --#SEVERITY MAJOR
 7"Trap UPS toggle (off/on) sequence in progress in ups."           --#SEVERITY MAJOR
 ."Trap UPS reached battery charging condition."           --#SEVERITY INFORMATIONAL
 *"Trap UPS on sequence in progress in ups."           --#SEVERITY CRITICAL
 "Humidity is in normal range."           --#SEVERITY INFORMATIONAL
 #"Humidity is above high threshold."           --#SEVERITY MAJOR
 *"Trap UPS quit overtemperature condition."           --#SEVERITY INFORMATIONAL
 "Trap UPS by pass unavailable."           --#SEVERITY MINOR
 ,"Trap UPS toggle (off/on) sequence started."           --#SEVERITY MAJOR
 !"Trap UPS returned from battery."           --#SEVERITY INFORMATIONAL
 )"Trap UPS Battery entering Fault status."           --#SEVERITY MAJOR
 "Redundancy Recovered."           --#SEVERITY INFORMATIONAL
 )"Trap UPS serial communication restored."           --#SEVERITY INFORMATIONAL
 "Input #2 is Open."           --#SEVERITY INFORMATIONAL
 "Trap UPS failed battery test."           --#SEVERITY MAJOR
 $"Trap UPS input quit bad condition."           --#SEVERITY INFORMATIONAL
 #"Trap UPS quit overload condition."           --#SEVERITY INFORMATIONAL
 /"Trap UPS battery returned from low condition."           --#SEVERITY INFORMATIONAL
 "Redundancy Lost."           --#SEVERITY MAJOR
 !"Trap UPS on sequence completed."           --#SEVERITY INFORMATIONAL
 ""Trap UPS off sequence completed."           --#SEVERITY INFORMATIONAL
 "Input #2 is Closed."           --#SEVERITY INFORMATIONAL
 "Trap UPS self test failed."           --#SEVERITY MINOR
 )"Trap UPS has overtemperature condition."           --#SEVERITY MAJOR
 "Input #1 is Closed."           --#SEVERITY INFORMATIONAL
  "Trap UPS utility power failed."           --#SEVERITY MAJOR
 +"Trap UPS off sequence in progress in ups."           --#SEVERITY CRITICAL
 0"Trap UPS battery does not need to be replaced."           --#SEVERITY INFORMATIONAL
 ,"Trap UPS enter environment external alarm."           --#SEVERITY MAJOR
 "Trap UPS return from by pass."           --#SEVERITY INFORMATIONAL
 +"Trap UPS exit environment external alarm."           --#SEVERITY INFORMATIONAL
 "Protection Recovered."           --#SEVERITY INFORMATIONAL
 '"Trap UPS serial communication failed."           --#SEVERITY CRITICAL
 ."Trap UPS toggle (off/on) sequence completed."           --#SEVERITY INFORMATIONAL
 "Trap UPS on sequence started."           --#SEVERITY MAJOR
 *"Environment Probe communication failure."           --#SEVERITY MAJOR
 !"Temperature is in normal range."           --#SEVERITY INFORMATIONAL
 #"Trap UPS has returned from boost."           --#SEVERITY INFORMATIONAL
 )"Trap UPS battery reached low condition."           --#SEVERITY CRITICAL
 ""Trap UPS battery is unavailable."           --#SEVERITY MINOR
 "Trap UPS is on buck."           --#SEVERITY MINOR
 "Trap UPS by pass available."           --#SEVERITY INFORMATIONAL
 "Input #1 is Open."           --#SEVERITY INFORMATIONAL
 )"Trap UPS battery charger is not active."           --#SEVERITY MINOR
 ."Trap UPS toggle (off/on) sequence cancelled."           --#SEVERITY INFORMATIONAL
 "Trap UPS is on Battery."           --#SEVERITY CRITICAL
                                         >"The UPS family name (e.g. `PULSAR', `COMET', `GALAXY', ...)."                       1"The UPS model name (e.g. `PSX20', `SV9', ... )."                       "The UPS revision level."                       1"The UPS microprocessor firmware version number."                       5"The UPS user identification (set by administrator)."                       /"The UPS installation date in dd/mm/yy format."                       &"The UPS manufacturing serial number."                           3"The number of managers that could manage the UPS."                       "The table of managers."                       ;"The description of a manager entry in the managers table."                       q"A unique value for each manager. Its value ranges between 1
                and the value of upsmgManagersNum."                       �"This object is the number of the manager device in the
                DevicesTable of the Config group. This means that the
                manager is powered by the UPS. If not the default value is 0."                       �"The type of manager according to the NMS platform. We
                include in the manager class all systems which will be
                notified by the agent via receiving traps (e.g. basic
                to complex NMS software)."                      �"The level of communication protocol for that manager.
                Setting this object to value invalid(2) has the effect of
                invalidating the corresponding entry in the upsmgManagersTable.
                It is an implementation-specific matter as to wether the agent
                removes an invalidated entry from the table. Accordingly,
                management stations must be prepared to receive tabular
                information from agents that corresponds to entry not currently
                in use. Proper interpretation of such entries requires
                examination of the relevant mgmanagerCommType object."                       u"A textual string containing information about the manager.
                (manufacturer and version description)."                       �"The IP address of the manager station receiving traps. The
                value of this object is meaningful if and only if the value
                of the relevant mgmanagerCommType object is snmp type."                       "The manager community string."                       ="The severity level of traps to be received by this manager."                      p"The manager Trap Acknowledgement status. Setting
                this object to mgnoack(2) or stdnomg(3) or cpqnoack(5)
                disables the trap acknowledgement from the related
                manager. The MG enterprise specific trap should then
                be sent only once by the agent to this manager in case
                of mgnoack(2), and should not be sent by the agent to
                this manager in case of stdnomg(3) or cpqnoack(5).
                mgack(1) allows a basic mecanism for acknowledged
                traps using upsmgAgentTrapAck object set by the
                manager to the enterprise specific number of the trap.
                mgacks(5) allows the enhanced mecanism using the
                upsmgAgentTrapSignature object set by the manager
                to the signature received within the trap var binding."                           8"The total number of receptacles controlled by the UPS."                       :"The table of receptacles that are controlled by the UPS."                       /"The description of a receptacle in the table."                       w"A unique value for each receptacle. Its value ranges between
                1 and the value of upsmgReceptaclesNum."                      O"The level of receptacle.

                Setting this object to value invalid(2) has the effect of
                invalidating the corresponding entry in the upsmgReceptaclesTable.
                It is an implementation-specific matter as to wether the agent
                removes an invalidated entry from the table. Accordingly,
                management stations must be prepared to receive tabular
                information from agents that corresponds to entry not currently
                in use. Proper interpretation of such entries requires
                examination of the relevant receptacleLevel object.
                Values 1 and 4 are reserved, value 3 is used to identify a simple
                one-level receptacle, and values greater than 4 represent a
                group of equivalent receptacles."                       +"A textual string for the receptacle type."                       /"A textual string identification for the user."                       &"The ON/OFF status of the receptacle."                      )"The receptacle number of the second level receptacle father.

                The value of this object is meaningful if and only if the value
                of the relevant mgreceptacleType object is related to a two-level
                receptacle class. Otherwise the default value is 0."                      "The volt-ampere rating of the receptacle.

                The value of this object is meaningful if and only if the value
                of the relevant mgreceptacleType object is related to a two-level
                receptacle class. Otherwise the default value is 0."                      "The overload status of the receptacle.

                The value of this object is meaningful if and only if the value
                of the relevant mgreceptacleType object is related to a two-level
                receptacle class. Otherwise the default value is 0."                      "The receptacle autonomy.

                The value of this object is meaningful if and only if the value
                of the relevant mgreceptacleType object is related to a two-level
                receptacle class. Otherwise the default value is 0."                           "The battery installed status."                       "The nominal battery voltage."                       &"The full load battery autonomy time."                       `"The recharge time to go from low battery cut off
                to full charge at full load."                       �"The minimum battery level required to supply power on the
                 loads after low battery condition turn off and restart on
                 main return."                       _"The maximum time delay of battery recharge before supply
                power to the loads."                       8"To set remaining time value for low battery condition."                       7"To set battery level value for low battery condition."                       ("The automatic restart enabling status."                       6"To set ups shutdown timer from on battery condition."                       '"To set ups shutdown delay (Sn delay)."                       "The UPS nominal VA rating."                       !"The low voltage transfer point."                       ""The high voltage transfer point."                       "The nominal output voltage."                       "The nominal output current."                       "The nominal output frequency."                       "The UPS by pass switch type."                       "To set audible alarm status."                       ""To set audible alarm time delay."                       4"The number of devices that are powered by the UPS."                       3"The table of devices that are powered by the UPS."                       9"The description of a device entry in the devices table."                       o"A unique value for each device. Its value ranges between 1
                and the value of upsmgDevicesNum."                       �"The receptacle number of the device plugged into the UPS.
                This value gives index entry in the ReceptaclesTable object
                of the Receptacle group. A value of 0 invalidates the entry
                in the DevicesTable."                       2"A textual string for device user identification."                       <"The volt-ampere rating of the device plugged into the UPS."                       ="To set the device position in the remote shutdown sequence."                       ;"To set the device position in the remote reboot sequence."                       T"To set the duration from start of computer shut-down
                to complete."                       R"To set the duration from start of computer boot-up
                to complete."                       "The table of receptacles."                       5"The description of a receptacle entry in the table."                       w"A unique value for each receptacle. Its value ranges between 1
                and the value of upsmgReceptaclesNum."                       ""Default return state at turn on."                       &"Default return state on main return."                       ="Default return state on main return from battery discharge."                       ."Battery level for starting shutoff sequence."                       ;"Time delay from on battery for starting shutoff sequence."                       ."Battery level for starting restart sequence."                       +"Time delay for starting restart sequence."                       ="Maximum Shutdown Duration for systems powered by this plug."                       ;"Maximum Reboot Duration for systems powered by this plug."                       V"The number of environ external alarm, value is
                  between 8 and 32.."                       -"The table of environmental external alarms."                       4"The description of an external alarm in the table."                       ~"A unique value for each external alarm. Its value ranges
                between 1 and the value of upsmgConfigExtAlarmNum."                       7"A textual string for alarm state user identification."                       6"The emergency condition status on Battery test fail."                       ,"The emergency condition status on By Pass."                       -"The emergency condition status on overload."                       !"The table of daily on/off time."                       ?"The description of a daily on/off time schedule in the table."                       a"The day index. It is a number between 1 and 7, 1 for
                Sunday, 2 for Monday, ..."                       e"To set daily power on time. Any value greater than 86400
                is to disable the Day On."                       g"To set daily power off time. Any value greater than 86400
                is to disable the Day Off."                       #"To set UPS booster low threshold."                       $"To set UPS booster high threshold."                       !"To set UPS fader low threshold."                       ""To set UPS fader high threshold."                       C"The table containing the configuration of the environment sensor."                       +"The description of an entry in the table."                       :"The sensor index, ranging from 1 to upsmgEnvironmentNum."                        "The sensor user-friendly name."                       0"The low temperature threshold in unit 0.1 Cel."                       1"The high temperature threshold in unit 0.1 Cel."                       E"The temperature hysteresys used for threshold test in unit 0.1 Cel."                       )"The low humidity threshold in unit 1 %."                       *"The high humidity threshold in unit 1 %."                       >"The humidity hysteresys used for threshold test in unit 1 %."                       ""The Input #1 user-friendly name."                       )"The Input #1 label for closed position."                       '"The Input #1 label for open position."                       ""The Input #2 user-friendly name."                       )"The Input #2 label for closed position."                       '"The Input #2 label for open position."                           <"The time remaining actual charge vs actual load (dynamic)."                       ."The battery level as a percentage of charge."                      "The actual operational battery recharge time to set point
                equal to upsmgConfigRechargeLevel. This value is computed from
                upsmgConfigRechargeLevel (level to reach), upsmgBatteryLevel (the
                actual reached level) and the UPS charge rate."                      H"The actual value of the battery recharge level that will be
                reached during the time delay necessary to restart after power
                returns. This value is computed from upsmgConfigRechargeTime
                (the delay), upsmgBatteryLevel (the actual level) and the UPS
                charge rate."                       "The actual battery voltage."                       "The actual battery current."                       "The battery temperature."                       Z"The battery full recharge time (from 0 to 100 percent)
                at current load."                       "The battery fault status."                        "The UPS has no Battery status."                       ("The UPS Battery to be replaced status."                       ("The UPS Battery is unavailable status."                       -"The UPS Battery quit high condition status."                       "The battery low status."                       )"The UPS Battery is not charging status."                       %"The UPS is at low condition status."                       *"The UPS Battery is not recharged status."                           "The number of input phases."                       "The table of input phases."                       $"The description of an input phase."                       b"The input phase voltage index. It is a number between 1
                and upsmgInputPhaseNum."                       "The input phase voltage."                       "The input phase frequency."                       7"The input phase minimum voltage over the last minute."                       7"The input phase maximum voltage over the last minute."                       "The input phase current."                       8"The utility power bad voltage or bad frequency status."                      "The utility power failure cause:
                no(1) is for no utility failure,
                outoftolvolt(2) is for voltage out of tolerance,
                outoftolfreq(3) is for frequency out of tolerance,
                utilityoff(4) is for no voltage at all."                           "The number of output phases."                       "The table of output phases."                       %"The description of an output phase."                       d"The output phase voltage index. It is a number between 1
                and upsmgOutputPhaseNum."                       "The output phase voltage."                       "The output phase frequency."                       "The output load per phase."                       "The output phase current."                       &"The UPS on battery / on main status."                       "The UPS on bypass status."                       !"The by pass unavailable status."                       ""The UPS bypass installed status."                       "The UPS utility off status."                       "The UPS on booster status."                       #"The UPS Inverter on / off status."                       "The output over load status."                       ""The ups over temperature status."                       "The UPS on fader status."                           "The ambient temperature."                       "The ambient humidity."                       "The table of external alarms."                       '"The description of an external alarm."                       \"The external alarm number. A number between 1 and
                upsmgConfigExtAlarmNum."                       0"The external alarm state (active or inactive)."                       ""The sensor unit number (0 to 4)."                       "The table of sensor units."                       #"The description of a sensor unit."                       ,"The unit number. A number between 1 and 4."                       '"The measured temperature of the unit."                       $"The measured humidity of the unit."                       )"Number of Environment sensor connected."                       T"The table containing the measurements and alarms made by Environment sensor units."                       7"The description of an entry in the measurement table."                       :"The sensor index, ranging from 1 to upsmgEnvironmentNum."                       3"The sensor communication failure : yes(1), no(2)."                       ."The temperature measurement in unit 0.1 Cel."                       4"Temperature is below low theshold : yes(1), no(2)."                       6"Temperature is above high threshold : yes(1), no(2)."                       )"The humidity measurement in unit 0.1 %."                       2"Humidity is below low threshold : yes(1), no(2)."                       3"Humidity is above high threshold : yes(1), no(2)."                       ("State of Input#1 : closed(1), open(2)."                       ("State of Input#2 : closed(1), open(2)."                           "The table of receptacles."                       5"The description of a receptacle entry in the table."                       w"A unique value for each receptacle. Its value ranges between 1
                and the value of upsmgReceptaclesNum."                       #"Turn on UPS receptacle w/delay=?."                       #"The receptacle control on action."                       #"The receptacle control on status."                       $"Turn off UPS receptacle w/delay=?."                       $"The receptacle control off action."                       $"The receptacle control off status."                       ,"Turn off then on UPS receptacle w/delay=?."                       '"The receptacle control toggle action."                       '"The receptacle control toggle status."                       /"Turn off then on UPS receptacle w/duration=?."                       �"The schedule off control object. Default value is none(8).
                Value 1 means to start scheduled off on Sunday,
                value 2 to start scheduled off on Monday, and so on."                      �"The schedule on control object. Default value is none(8).
                Value 1 means to start scheduled on on Sunday,
                value 2 to start scheduled on on Monday, and so on.
                This object is meaningfull only for those agent that do not
                include internal clock. In such a case the object is set by
                a manager to start the schedule on sequence."                           &"The automatic battery test schedule."                       "To run self test diagnostics."                       '"The automatic test diagnostic result."                       ""To run battery test calibration."                       )"The last battery calibration test date."                       "To run UPS indicators test."                       $"To send ASCII command line to UPS."                       4"To advise UPS that command line has been prepared."                       *"To get ASCII protocol response from UPS."                       7"To advise agent that response line has been received."                       "The test battery result:
                msuccess(1) is for manual battery test success,
                ssuccess(3) is for scheduled battery test success,
                mfailed(2) is for manual battery test failed,
                sfailed(4) is for scheduled battery test failed."                               K" The ip address that NMS can identify the managed
                device"                       " Internet address subnet mask"                       R" The default gateway that allow device managed
                through routers "                       Z" the serial port communication speed. only 2400,
                4800, and 9600 allowed"                       m" The frequency that proxy agent polls the connected
                UPS in ASCII protocol. (unit : second)"                       " The type of agent."                       �" The interval for the Trap packet retransmission,
                while the TRAP Acknowledge is implemented and
                the ack is received within the interval."                       �" The retry count for retransmitting Trap
                 packet while the TRAP acknowledge is
                 implemented."                       �" The variable initiates reset operation  in
                 agent software, ie. warm start. write reset(1)
                 to any one of UPS MIB array, will result in
                 the same reset operation."                       �" The variable initiates reset operation in
                 agent software, ie. warm start, and load
                 default data (Factory setting) to EEPROM
                 and to runtime parameters associated with
                 the UPS."                       /" The version of the MIB implemented in agent."                       " The agent firmware version."                      �" The status of communication between agent and ups.
                Even value means no communication, and odd value
                means a certain level of communication with devices
                daisy-chained on the serial port. The value is the
                following: 1000*NSE + 100*NSW + 10*UPSW + UPST with
                UPST is UPS type:       5 if no UPS;
                                        3 if PI (Protocol Interface)
                                        1 if U-Talk UPS;
                UPSW is the number of switchable plugs of the UPS;
                NSW is the number of UM-Switch devices;
                NSE is the number of UM-Sensor devices."                       :" The last Trap number that has been received by UM-View."                       �" The enabled/disabled configuration of the Auto Learning
                process of the agent, default value is yes(1) e.g. enabled."                       r" The enabled/disabled configuration of the BootP process,
                default value is yes(1) e.g. enabled."                       q" The enabled/disabled configuration of the TFTP process,
                default value is no(2) e.g. disabled."                       7" The signature of the trap acknowledged by a manager."                           �"An object to inform an ups-less agent that the remote
                 UPS is on autonomy. This object could be set by
                 a management application."                       �"An object to give the IP address of the agent managing
                 the remote UPS. This object could be read by managers
                 to perform management of receptacle dependencies
                 between two different agents."                          