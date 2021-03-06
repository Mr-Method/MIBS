 =-- extracted from rfc1628.txt
-- at Mon Nov 15 17:11:52 1999
   )"This data type is a non-negative value."               6"This data type is a non-zero and non-negative value."                                                                                                                         K"The MIB module to describe Uninterruptible Power
               Supplies."B"        Jeffrey D. Case

                Postal: SNMP Research, Incorporated
                        3001 Kimberlin Heights Road
                        Knoxville, TN  37920
                        US

                   Tel: +1 615 573 1434
                   Fax: +1 615 573 9197

                E-mail: case@snmp.com"                       #"The name of the UPS manufacturer."                       "The UPS Model designation."                       �"The UPS firmware/software version(s).  This variable
               may or may not have the same value as
               upsIdentAgentSoftwareVersion in some implementations."                       �"The UPS agent software version.  This variable may or
               may not have the same value as
               upsIdentUPSSoftwareVersion in some implementations."                       _"A string identifying the UPS.  This object should be
               set by the administrator."                       �"A string identifying the devices attached to the
               output(s) of the UPS.  This object should be set by
               the administrator."                          �"The indication of the capacity remaining in the UPS
               system's batteries.   A value of batteryNormal
               indicates that the remaining run-time is greater than
               upsConfigLowBattTime.  A value of batteryLow indicates
               that the remaining battery run-time is less than or
               equal to upsConfigLowBattTime.  A value of
               batteryDepleted indicates that the UPS will be unable
               to sustain the present load when and if the utility
               power is lost (including the possibility that the
               utility power is currently absent and the UPS is
               unable to sustain the output)."                      4"If the unit is on battery power, the elapsed time
               since the UPS last switched to battery power, or the
               time since the network management subsystem was last
               restarted, whichever is less.  Zero shall be returned
               if the unit is not on battery power."                       �"An estimate of the time to battery charge depletion
               under the present load conditions if the utility power
               is off and remains off, or if it were to be lost and
               remain off."                       c"An estimate of the battery charge remaining expressed
               as a percent of full charge."                       /"The magnitude of the present battery voltage."                       "The present battery current."                       K"The ambient temperature at or near the UPS Battery
               casing."                          <"A count of the number of times the input entered an
               out-of-tolerance condition as defined by the
               manufacturer.  This count is incremented by one each
               time the input transitions from zero out-of-tolerance
               lines to one or more input lines out-of-tolerance."                       �"The number of input lines utilized in this device.
               This variable indicates the number of rows in the
               input table."                       q"A list of input table entries.  The number of entries
               is given by the value of upsInputNumLines."                       W"An entry containing information applicable to a
               particular input line."                       "The input line identifier."                       "The present input frequency."                       -"The magnitude of the present input voltage."                       -"The magnitude of the present input current."                       0"The magnitude of the present input true power."                           �"The present source of output power.  The enumeration
               none(2) indicates that there is no source of output
               power (and therefore no output power), for example,
               the system has opened the output breaker."                       "The present output frequency."                       �"The number of output lines utilized in this device.
               This variable indicates the number of rows in the
               output table."                       s"A list of output table entries.  The number of
               entries is given by the value of upsOutputNumLines."                       X"An entry containing information applicable to a
               particular output line."                       "The output line identifier."                       "The present output voltage."                       "The present output current."                        "The present output true power."                       �"The percentage of the UPS power capacity presently
               being used on this output line, i.e., the greater of
               the percent load of true power capacity and the
               percent load of VA."                           "The present bypass frequency."                       �"The number of bypass lines utilized in this device.
               This entry indicates the number of rows in the bypass
               table."                       s"A list of bypass table entries.  The number of
               entries is given by the value of upsBypassNumLines."                       Y"An entry containing information applicable to a
               particular bypass input."                       "The bypass line identifier."                       "The present bypass voltage."                       "The present bypass current."                       0"The present true power conveyed by the bypass."                           0"The present number of active alarm conditions."                      :"A list of alarm table entries.  The table contains
               zero, one, or many rows at any moment, depending upon
               the number of alarm conditions in effect.  The table
               is initially empty at agent startup.  The agent
               creates a row in the table each time a condition is
               detected and deletes that row when that condition no
               longer pertains.  The agent creates the first row with
               upsAlarmId equal to 1, and increments the value of
               upsAlarmId each time a new row is created, wrapping to
               the first free value greater than or equal to 1 when
               the maximum value of upsAlarmId would otherwise be
               exceeded.  Consequently, after multiple operations,
               the table may become sparse, e.g., containing entries
               for rows 95, 100, 101, and 203 and the entries should
               not be assumed to be in chronological order because
               upsAlarmId might have wrapped.

               Alarms are named by an AutonomousType (OBJECT
               IDENTIFIER), upsAlarmDescr, to allow a single table to
               reflect well known alarms plus alarms defined by a
               particular implementation, i.e., as documented in the
               private enterprise MIB definition for the device.  No
               two rows will have the same value of upsAlarmDescr,
               since alarms define conditions.  In order to meet this
               requirement, care should be taken in the definition of
               alarm conditions to insure that a system cannot enter
               the same condition multiple times simultaneously.

               The number of rows in the table at any given time is
               reflected by the value of upsAlarmsPresent."                       R"An entry containing information applicable to a
               particular alarm."                       ^"A unique identifier for an alarm condition.  This
               value must remain constant."                       �"A reference to an alarm description object.  The
               object referenced should not be accessible, but rather
               be used to provide a unique description of the alarm
               condition."                      "The value of sysUpTime when the alarm condition was
               detected.  If the alarm condition was detected at the
               time of agent startup and presumably existed before
               agent startup, the value of upsAlarmTime shall equal
               0."                           S"One or more batteries have been determined to require
               replacement."               ."The UPS is drawing power from the batteries."               ^"The remaining battery run-time is less than or equal
               to upsConfigLowBattTime."               j"The UPS will be unable to sustain the present load
               when and if the utility power is lost."               $"A temperature is out of tolerance."               )"An input condition is out of tolerance."               U"An output condition (other than OutputOverload) is
               out of tolerance."               2"The output load exceeds the UPS output capacity."               -"The Bypass is presently engaged on the UPS."               !"The Bypass is out of tolerance."               L"The UPS has shutdown as requested, i.e., the output
               is off."               +"The entire UPS has shutdown as commanded."               ["An uncorrected problem has been detected within the
               UPS charger subsystem."               ,"The output of the UPS is in the off state."               %"The UPS system is in the off state."               N"The failure of one or more fans in the UPS has been
               detected."               5"The failure of one or more fuses has been detected."               /"A general fault in the UPS has been detected."               L"The result of the last diagnostic test indicates a
               failure."               d"A problem has been encountered in the communications
               between the agent and the UPS."               Y"The UPS output is off and the UPS is awaiting the
               return of input power."               0"A upsShutdownAfterDelay countdown is underway."               �"The UPS will turn off power to the load in less than
               5 seconds; this may be either a timed shutdown or a
               low battery shutdown."              �"A test is in progress, as initiated and indicated by
               the Test Group.  Tests initiated via other
               implementation-specific mechanisms can indicate the
               presence of the testing in the alarm table, if
               desired, via a OBJECT-IDENTITY macro in the MIB
               document specific to that implementation and are
               outside the scope of this OBJECT-IDENTITY."                  f"The test is named by an OBJECT IDENTIFIER which
               allows a standard mechanism for the initiation of
               tests, including the well known tests identified in
               this document as well as those introduced by a
               particular implementation, i.e., as documented in the
               private enterprise MIB definition for the device.

               Setting this variable initiates the named test. Sets
               to this variable require the presence of
               upsTestSpinLock in the same SNMP message.

               The set request will be rejected with an appropriate
               error message if the requested test cannot be
               performed, including attempts to start a test when
               another test is already in progress.  The status of
               the current or last test is maintained in
               upsTestResultsSummary. Tests in progress may be
               aborted by setting the upsTestId variable to
               upsTestAbortTestInProgress.

               Read operations return the value of the name of the
               test in progress if a test is in progress or the name
               of the last test performed if no test is in progress,
               unless no test has been run, in which case the well
               known value upsTestNoTestsInitiated is returned."                      H"A spin lock on the test subsystem.  The spinlock is
               used as follows.

               Before starting a test, a manager-station should make
               sure that a test is not in progress as follows:

                   try_again:
                     get (upsTestSpinLock)
                     while (upsTestResultsSummary == inProgress) {
                       /* loop while a test is running for another
               manager */
                       short delay
                       get (upsTestSpinLock)
                     }
                     lock_value = upsTestSpinLock
                     /* no test in progress, start the test */
                     set (upsTestSpinLock = lock_value, upsTestId =
               requested_test)
                     if (error_index == 1) { /* (upsTestSpinLock
               failed) */
                       /* if problem is not access control, then
                           some other manager slipped in ahead of us
               */
                       goto try_again
                     }
                     if (error_index == 2) { /* (upsTestId) */
                       /* cannot perform the test */
                       give up
                     }
                     /* test started ok */
                     /* wait for test completion by polling

               upsTestResultsSummary */
                     get (upsTestSpinLock, upsTestResultsSummary,
               upsTestResultsDetail)
                     while (upsTestResultsSummary == inProgress) {
                       short delay
                       get (upsTestSpinLock, upsTestResultsSummary,
               upsTestResultsDetail)
                     }
                     /* when test completes, retrieve any additional
               test results */
                     /* if upsTestSpinLock == lock_value + 1, then
               these are our test */
                     /* results (as opposed to another manager's */
                     The initial value of upsTestSpinLock at agent
               initialization shall
                     be 1."                      �"The results of the current or last UPS diagnostics
               test performed.  The values for donePass(1),
               doneWarning(2), and doneError(3) indicate that the
               test completed either successfully, with a warning, or
               with an error, respectively.  The value aborted(4) is
               returned for tests which are aborted by setting the
               value of upsTestId to upsTestAbortTestInProgress.
               Tests which have not yet concluded are indicated by
               inProgress(5).  The value noTestsInitiated(6)
               indicates that no previous test results are available,
               such as is the case when no tests have been run since
               the last reinitialization of the network management
               subsystem and the system has no provision for non-
               volatile storage of test results."                       �"Additional information about upsTestResultsSummary.
               If no additional information available, a zero length
               string is returned."                      ."The value of sysUpTime at the time the test in
               progress was initiated, or, if no test is in progress,
               the time the previous test was initiated.  If the
               value of upsTestResultsSummary is noTestsInitiated(6),
               upsTestStartTime has the value 0."                      /"The amount of time, in TimeTicks, since the test in
               progress was initiated, or, if no test is in progress,
               the previous test took to complete.  If the value of
               upsTestResultsSummary is noTestsInitiated(6),
               upsTestElapsedTime has the value 0."                           I"No tests have been initiated and no test is in
               progress."               Z"The test in progress is to be aborted / the test in
               progress was aborted."               H"The manufacturer's standard test of UPS device
               systems."               Y"A test that is sufficient to determine if the battery
               needs replacement."              �"The system is placed on battery to a discharge level,
               set by the manufacturer, sufficient to determine
               battery replacement and battery run-time with a high
               degree of confidence.  WARNING:  this test will leave
               the battery in a low charge state and will require
               time for recharging to a level sufficient to provide
               normal battery duration for the protected load."                  
"This object determines the nature of the action to be
               taken at the time when the countdown of the
               upsShutdownAfterDelay and upsRebootWithDuration
               objects reaches zero.

               Setting this object to output(1) indicates that
               shutdown requests should cause only the output of the
               UPS to turn off.  Setting this object to system(2)
               indicates that shutdown requests will cause the entire
               UPS system to turn off."                      +"Setting this object will shutdown (i.e., turn off)
               either the UPS output or the UPS system (as determined
               by the value of upsShutdownType at the time of
               shutdown) after the indicated number of seconds, or
               less if the UPS batteries become depleted. Setting
               this object to 0 will cause the shutdown to occur
               immediately.  Setting this object to -1 will abort the
               countdown.  If the system is already in the desired
               state at the time the countdown reaches 0, then
               nothing will happen.  That is, there is no additional
               action at that time if upsShutdownType = system and
               the system is already off.  Similarly, there is no
               additional action at that time if upsShutdownType =
               output and the output is already off.  When read,
               upsShutdownAfterDelay will return the number of
               seconds remaining until shutdown, or -1 if no shutdown
               countdown is in effect.  On some systems, if the agent
               is restarted while a shutdown countdown is in effect,
               the countdown may be aborted.  Sets to this object
               override any upsShutdownAfterDelay already in effect."                      $"Setting this object will start the output after the
               indicated number of seconds, including starting the
               UPS, if necessary.  Setting this object to 0 will
               cause the startup to occur immediately.  Setting this
               object to -1 will abort the countdown.  If the output
               is already on at the time the countdown reaches 0,
               then nothing will happen.  Sets to this object
               override the effect of any upsStartupAfterDelay
               countdown or upsRebootWithDuration countdown in
               progress.  When read, upsStartupAfterDelay will return
               the number of seconds until startup, or -1 if no
               startup countdown is in effect.  If the countdown
               expires during a utility failure, the startup shall
               not occur until the utility power is restored.  On
               some systems, if the agent is restarted while a
               startup countdown is in effect, the countdown is
               aborted."                      B"Setting this object will immediately shutdown (i.e.,
               turn off) either the UPS output or the UPS system (as
               determined by the value of upsShutdownType at the time
               of shutdown) for a period equal to the indicated
               number of seconds, after which time the output will be
               started, including starting the UPS, if necessary.  If
               the number of seconds required to perform the request
               is greater than the requested duration, then the
               requested shutdown and startup cycle shall be
               performed in the minimum time possible, but in no case
               shall this require more than the requested duration
               plus 60 seconds.  When read, upsRebootWithDuration
               shall return the number of seconds remaining in the
               countdown, or -1 if no countdown is in progress.  If
               the startup should occur during a utility failure, the
               startup shall not occur until the utility power is
               restored."                      n"Setting this object to 'on' will cause the UPS system
               to restart after a shutdown if the shutdown occurred
               during a power loss as a result of either a
               upsShutdownAfterDelay or an internal battery depleted
               condition.  Setting this object to 'off' will prevent
               the UPS system from restarting after a shutdown until
               an operator manually or remotely explicitly restarts
               it.  If the UPS is in a startup or reboot countdown,
               then the UPS will not restart until that delay has
               been satisfied."                          �"The magnitude of the nominal input voltage.  On those
               systems which support read-write access to this
               object, if there is an attempt to set this variable to
               a value that is not supported, the request must be
               rejected and the agent shall respond with an
               appropriate error message, i.e., badValue for SNMPv1,
               or inconsistentValue for SNMPv2."                      �"The nominal input frequency.  On those systems which
               support read-write access to this object, if there is
               an attempt to set this variable to a value that is not
               supported, the request must be rejected and the agent
               shall respond with an appropriate error message, i.e.,
               badValue for SNMPv1, or inconsistentValue for SNMPv2."                      �"The magnitude of the nominal output voltage.  On
               those systems which support read-write access to this
               object, if there is an attempt to set this variable to
               a value that is not supported, the request must be
               rejected and the agent shall respond with an
               appropriate error message, i.e., badValue for SNMPv1,
               or inconsistentValue for SNMPv2."                      �"The nominal output frequency.  On those systems which
               support read-write access to this object, if there is
               an attempt to set this variable to a value that is not
               supported, the request must be rejected and the agent
               shall respond with an appropriate error message, i.e.,
               badValue for SNMPv1, or inconsistentValue for SNMPv2."                       /"The magnitude of the nominal Volt-Amp rating."                       1"The magnitude of the nominal true power rating."                      �"The value of upsEstimatedMinutesRemaining at which a
               lowBattery condition is declared.  For agents which
               support only discrete (discontinuous) values, then the
               agent shall round up to the next supported value.  If
               the requested value is larger than the largest
               supported value, then the largest supported value
               shall be selected."                      �"The requested state of the audible alarm.  When in
               the disabled state, the audible alarm should never
               sound.  The enabled state is self-describing.  Setting
               this object to muted(3) when the audible alarm is
               sounding shall temporarily silence the alarm.  It will
               remain muted until it would normally stop sounding and
               the value returned for read operations during this
               period shall equal muted(3).  At the end of this
               period, the value shall revert to enabled(2).  Writes
               of the value muted(3) when the audible alarm is not
               sounding shall be accepted but otherwise shall have no
               effect."                       j"The minimum input line voltage allowed before the UPS
               system transfers to battery backup."                       d"The maximum line voltage allowed before the UPS
               system transfers to battery backup."                           �"The UPS is operating on battery power.  This trap is
               persistent and is resent at one minute intervals until
               the UPS either turns off or is no longer running on
               battery."                 L"This trap is sent upon completion of a UPS diagnostic
               test."                 �"This trap is sent each time an alarm is inserted into
               to the alarm table.  It is sent on the insertion of
               all alarms except for upsAlarmOnBattery and
               upsAlarmTestInProgress."                 �"This trap is sent each time an alarm is removed from
               the alarm table.  It is sent on the removal of all
               alarms except for upsAlarmTestInProgress."                         l"The compliance statement for UPSs that only support
               the two-contact communication protocol."   Y"Support of the values unknown(1) and
               batteryDepleted(4) is not required."0"Support of all `well known' alarm types is not
               required.  The well known alarm types which must be
               supported are: upsAlarmOnBattery, upsAlarmLowBattery,
               upsAlarmInputBad, upsAlarmUpsOutputOff,
               upsAlarmUpsSystemOff, and upsAlarmTestInProgress." o"Support of the values other(1), none(2), bypass(4),
               booster(6) and reducer(7) is not required." y"Read-write access is not required, i.e., compliant
               systems need not support more than one shutdown type." x"Read-write access is not required, i.e., compliant
               systems need not support more than one restart type." $"Read-write access is not required." $"Read-write access is not required." $"Read-write access is not required." $"Read-write access is not required."             i"The compliance statement for UPSs that support
               full-featured functions, such as control."  �"Support of all `well known' alarm types is not
               required.  The well known alarm types which must be
               supported are: upsAlarmOnBattery, upsAlarmLowBattery,
               upsAlarmDepletedBattery, upsAlarmTempBad,
               upsAlarmInputBad, upsAlarmOutputOverload,
               upsAlarmOnBypass, upsAlarmBypassBad,
               upsAlarmOutputOffAsRequested,
               upsAlarmUpsOffAsRequested, upsAlarmUpsOutputOff,
               upsAlarmUpsSystemOff, upsAlarmGeneralFault,
               upsAlarmDiagnosticTestFailed,
               upsAlarmCommunicationsLost, upsAlarmShutdownPending,
               and upsAlarmTestInProgress." �"Support of all `well known' test types is not
               required.  If no tests are supported, then the only
               well known test type which must be supported is
               upsTestNoTestsInitiated." o"Support of the values other(1), none(2), bypass(4),
               booster(6) and reducer(7) is not required." ^"The upsBasicBypassGroup is only required for UPSs
               that have a Bypass present." y"Read-write access is not required, i.e., compliant
               systems need not support more than one shutdown type." x"Read-write access is not required, i.e., compliant
               systems need not support more than one restart type." $"Read-write access is not required." $"Read-write access is not required." $"Read-write access is not required." $"Read-write access is not required.""Implementation of all possible values may be onerous
               for some systems.  Consequently, not all possible
               values must be supported.  However, at least two
               different manufacturer-selected values must be
               supported."             a"The compliance statement for UPSs that support
               advanced full-featured functions."  �"Support of all `well known' alarm types is not
               required.  The well known alarm types which must be
               supported are: upsAlarmBatteryBad, upsAlarmOnBattery,
               upsAlarmLowBattery, upsAlarmDepletedBattery,
               upsAlarmTempBad, upsAlarmInputBad, upsAlarmOnBypass,
               upsAlarmBypassBad, upsAlarmOutputOffAsRequested,
               upsAlarmUpsOffAsRequested, upsAlarmUpsOutputOff,
               upsAlarmUpsSystemOff, upsAlarmGeneralFault,
               upsAlarmDiagnosticTestFailed,
               upsAlarmCommunicationsLost, upsAlarmShutdownPending,
               and upsAlarmTestInProgress." �"Support of all `well known' test types is not
               required.  The well known test types which must be
               supported are: upsTestNoTestsInitiated,
               upsTestGeneralSystemsTest, and
               upsTestQuickBatteryTest." o"Support of the values other(1), none(2), bypass(4),
               booster(6) and reducer(7) is not required." ]"The upsFullBypassGroup is only required for UPSs that
               have a Bypass present." y"Read-write access is not required, i.e., compliant
               systems need not support more than one shutdown type." x"Read-write access is not required, i.e., compliant
               systems need not support more than one restart type." $"Read-write access is not required." $"Read-write access is not required." $"Read-write access is not required." $"Read-write access is not required.""Implementation of all possible values may be onerous
               for some systems.  Consequently, not all possible
               values must be supported.  However, at least two
               different manufacturer-selected values must be
               supported."                    E"The upsSubsetIdentGroup defines objects which are
               common across all UPSs which meet subset compliance.
               Most devices which conform to the upsSubsetIdentGroup
               will provide access to these objects via a proxy
               agent.  If the proxy agent is compatible with multiple
               UPS types, configuration of the proxy agent will
               require specifying some of these values, either
               individually, or as a group (perhaps through a table
               lookup mechanism based on the UPS model number)."                 u"The upsSubsetBatteryGroup defines the objects that
               are common to battery groups of two-contact UPSs."                 u"The upsSubsetInputGroup defines the objects that are
               common to the Input groups of two-contact UPSs."                 w"The upsSubsetOutputGroup defines the objects that are
               common to the Output groups of two-contact UPSs."                 u"The upsSubsetAlarmGroup defines the objects that are
               common to the Alarm groups of two-contact UPSs."                 y"The upsSubsetControlGroup defines the objects that
               are common to the Control groups of two-contact UPSs."                 w"The upsSubsetConfigGroup defines the objects that are
               common to the Config groups of two-contact UPSs."                     �"The upsBasicIdentGroup defines objects which are
               common to the Ident group of compliant UPSs which
               support basic functions."                 �"The upsBasicBatteryGroup defines the objects that are
               common to the battery groups of compliant UPSs which
               support basic functions."                 �"The upsBasicInputGroup defines the objects that are
               common to the Input groups of compliant UPSs which
               support basic functions."                 �"The upsBasicOutputGroup defines the objects that are
               common to the Output groups of compliant UPSs which
               support basic functions."                 �"The upsBasicBypassGroup defines the objects that are
               common to the Bypass groups of compliant UPSs which
               support basic functions."                 �"The upsBasicAlarmGroup defines the objects that are
               common to the Alarm  groups of compliant UPSs which
               support basic functions."                 �"The upsBasicTestGroup defines the objects that are
               common to the Test groups of compliant UPSs which
               support basic functions."                 �"The upsBasicControlGroup defines the objects that are
               common to the Control groups of compliant UPSs which
               support basic functions."                 �"The upsBasicConfigGroup defines the objects that are
               common to the Config groups of UPSs which support
               basic functions."                     s"The upsFullIdentGroup defines objects which are
               common to the Ident group of fully compliant UPSs."                 {"The upsFullBatteryGroup defines the objects that are
               common to the battery groups of fully compliant UPSs."                 w"The upsFullInputGroup defines the objects that are
               common to the Input groups of fully compliant UPSs."                 y"The upsFullOutputGroup defines the objects that are
               common to the Output groups of fully compliant UPSs."                 y"The upsFullBypassGroup defines the objects that are
               common to the Bypass groups of fully compliant UPSs."                 x"The upsFullAlarmGroup defines the objects that are
               common to the Alarm  groups of fully compliant UPSs."                 u"The upsFullTestGroup defines the objects that are
               common to the Test groups of fully compliant UPSs."                 o"The upsFullControlGroup defines the objects that are
   common to the Control groups of fully compliant UPSs."                 y"The upsFullConfigGroup defines the objects that are
               common to the Config groups of fully compliant UPSs."                    