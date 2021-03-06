                                                                                  �"The MIB module defining objects for the management of a pair of
       ADSL modems at each end of the ADSL line.  Each such line has
       an entry in an ifTable which may include multiple modem lines.
       An agent may reside at either end of the ADSL line however the
       MIB is designed to require no management communication between
       them beyond that inherent in the low-level ADSL line protocol.
       The agent may monitor and control this protocol for its needs.

       ADSL lines may support optional Fast or Interleaved channels.
       If these are supported, additional entries corresponding to the
       supported channels must be created in the ifTable. Thus an ADSL
       line that supports both channels will have three entries in the
       ifTable, one for each physical, fast, and interleaved, whose
       ifType values are equal to adsl(94), fast(125), and
       interleaved(124), respectively. The ifStackTable is used to
       represent the relationship between the entries.

       Naming Conventions:
                 Atuc -- (ATUC) modem at near (Central) end of line
                 Atur -- (ATUR) modem at Remote end of line
                 Curr -- Current
                 Prev -- Previous
                 Atn -- Attenuation
                 ES  -- Errored Second.
                 LCS -- Line Code Specific
                 Lof -- Loss of Frame
                 Lol -- Loss of Link
                 Los -- Loss of Signal
                 Lpr -- Loss of Power
                 xxxs-- interval of Seconds in which xxx occurs
                         (e.g., xxx=Lof, Los, Lpr)
                 Max -- Maximum
                 Mgn -- Margin
                 Min -- Minimum
                 Psd -- Power Spectral Density
                 Snr -- Signal to Noise Ratio
                 Tx  -- Transmit
                 Blks-- Blocks, a data unit, see
                        adslAtuXChanCrcBlockLength
         ""
       Gregory Bathrick
       AG Communication Systems
       A Subsidiary of Lucent Technologies
       2500 W Utopia Rd.
       Phoenix, AZ 85027 USA
       Tel: +1 602-582-7679
       Fax: +1 602-582-7697
       E-mail: bathricg@agcs.com

       Faye Ly
       Copper Mountain Networks
       Norcal Office
       2470 Embarcadero Way
       Palo Alto, CA 94303
       Tel: +1 650-858-8500
       Fax: +1 650-858-8085
       E-Mail: faye@coppermountain.com

       (ADSL Forum input only)
       John Burgess
       Predictive Systems, Inc.
       25A Vreeland Rd.
       Florham Park, NJ 07932 USA
       Tel: +1 973-301-5610
       Fax: +1 973-301-5699
       E-mail: jtburgess@predictive.com

       IETF ADSL MIB Working Group (adsl@xlist.agcs.com)
       " "9908190000Z" ("Initial Version, published as RFC 2662"                      "This table includes common attributes describing
                 both ends of the line.  It is required for all ADSL
                 physical interfaces.  ADSL physical interfaces are
                 those ifEntries where ifType is equal to adsl(94)."                       "An entry in adslLineTable."                       E"Specifies the ADSL coding type used on this
                 line."                      �"Defines the type of ADSL physical line
                 entity that exists, by defining whether and how
                 the line is channelized.  If the line is channelized,
                 the value will be other than noChannel(1).  This
                 object defines which channel type(s) are supported.

                 In the case that the line is channelized, the manager
                 can use the ifStackTable to determine the ifIndex for
                 the associated channel(s)."                       �"OID instance in vendor-specific MIB. The Instance may
                 be used to determine shelf/slot/port of the ATUC
                 interface in a DSLAM."                      V"The value of this object identifies the row
                 in the ADSL Line Configuration Profile Table,
                 (adslLineConfProfileTable), which applies for this
                 ADSL line, and channels if applicable.

                 For `dynamic' mode, in the case which the
                 configuration profile has not been set, the
                 value will be set to `DEFVAL'.

                 If the implementator of this MIB has chosen not
                 to implement `dynamic assignment' of profiles, this
                 object's MIN-ACCESS is read-only."                      X"The value of this object identifies the row
                 in the ADSL Line Alarm Configuration Profile Table,
                 (adslLineAlarmConfProfileTable), which applies to this
                 ADSL line, and channels if applicable.

                 For `dynamic' mode, in the case which the
                 alarm profile has not been set, the
                 value will be set to `DEFVAL'.

                 If the implementator of this MIB has chosen not
                 to implement `dynamic assignment' of profiles, this
                 object's MIN-ACCESS is read-only."                       �"This table provides one row for each ATUC.
                 Each row contains the Physical Layer Parameters
                 table for that ATUC. ADSL physical interfaces are
                 those ifEntries where ifType is equal to adsl(94)."                       $"An entry in the adslAtucPhysTable."                       T"The vendor specific string that identifies the
                 vendor equipment."                       �"The vendor ID code is a copy of the binary
                 vendor identification field defined by the
                 PHY[10] and expressed as readable characters." "ANSI T1.413[10]"                    "The vendor specific version number sent by this ATU
                 as part of the initialization messages.  It is a copy
                 of the binary version number field defined by the
                 PHY[10] and expressed as readable characters." "ANSI T1.413[10]"                     e"Noise Margin as seen by this ATU with respect to its
                 received signal in tenth dB."                       �"Measured difference in the total power transmitted by
                 the peer ATU and the total power received by this ATU."                      �"Indicates current state of the ATUC line.  This is a
                 bit-map of possible conditions.  The various bit
                 positions are:

          0      noDefect             There no defects on the line

          1      lossOfFraming        ATUC failure due to not
                                      receiving valid frame.

          2      lossOfSignal         ATUC failure due to not
                                      receiving signal.

          3      lossOfPower          ATUC failure due to loss of
                                      power.
                                      Note: the Agent may still
                                      function.

          4      lossOfSignalQuality  Loss of Signal Quality is
                                      declared when the Noise Margin
                                      falls below the Minimum Noise
                                      Margin, or the bit-error-rate
                                      exceeds 10^-7.

          5      lossOfLink           ATUC failure due to inability
                                      to link with ATUR.

          6      dataInitFailure      ATUC failure during
                                      initialization due to bit
                                      errors corrupting startup
                                      exchange data.

          7      configInitFailure    ATUC failure during
                                      initialization due to peer
                                      ATU not able to support
                                      requested configuration

          8      protocolInitFailure  ATUC failure during
                                      initialization due to
                                      incompatible protocol used by
                                      the peer ATU.

          9      noPeerAtuPresent     ATUC failure during
                                      initialization due to no
                                      activation sequence detected
                                      from peer ATU.

                 This is intended to supplement ifOperStatus."                       �"Measured total output power transmitted by this ATU.
                 This is the measurement that was reported during
                 the last activation sequence."                       �"Indicates the maximum currently attainable data rate
                 by the ATU.  This value will be equal or greater than
                 the current line rate."                       �"This table provides one row for each ATUR
                 Each row contains the Physical Layer Parameters
                 table for that ATUR. ADSL physical interfaces are
                 those ifEntries where ifType is equal to adsl(94)."                       $"An entry in the adslAturPhysTable."                       T"The vendor specific string that identifies the
                 vendor equipment."                       �"The vendor ID code is a copy of the binary
                 vendor identification field defined by the
                 PHY[10] and expressed as readable characters." "ANSI T1.413"                    "The vendor specific version number sent by this ATU
                 as part of the initialization messages.  It is a copy
                 of the binary version number field defined by the
                 PHY[10] and expressed as readable characters." "ANSI T1.413"                     e"Noise Margin as seen by this ATU with respect to its
                 received signal in tenth dB."                       �"Measured difference in the total power transmitted by
                 the peer ATU and the total power received by this ATU."                      "Indicates current state of the ATUR line.  This is a
                 bit-map of possible conditions.  Due to the isolation
                 of the ATUR when line problems occur, many state
                 conditions like loss of power, loss of quality signal,
                 and initialization errors,  can not be determined.
                 While trouble shooting ATUR, also use object,
                 adslAtucCurrStatus.  The various bit positions are:

          0      noDefect             There no defects on the line

          1      lossOfFraming        ATUR failure due to not
                                      receiving valid frame

          2      lossOfSignal         ATUR failure due to not
                                      receiving signal

          3      lossOfPower          ATUR failure due to loss of
                                      power

          4      lossOfSignalQuality  Loss of Signal Quality is
                                      declared when the Noise Margin
                                      falls below the Minimum Noise
                                      Margin, or the
                                      bit-error-rate exceeds 10^-7.

                 This is intended to supplement ifOperStatus."                       �"Measured total output power transmitted by this ATU.
                 This is the measurement that was reported during
                 the last activation sequence."                       �"Indicates the maximum currently attainable data rate
                 by the ATU.  This value will be equal or greater than
                 the current line rate."                       �"This table provides one row for each ATUC channel.
                 ADSL channel interfaces are those ifEntries
                 where ifType is equal to adslInterleave(124)
                 or adslFast(125)."                       $"An entry in the adslAtucChanTable."                      �"Interleave Delay for this channel.

                 Interleave delay applies only to the
                 interleave channel and defines the mapping
                 (relative spacing) between subsequent input
                 bytes at the interleaver input and their placement
                 in the bit stream at the interleaver output.
                 Larger numbers provide greater separation between
                 consecutive input bytes in the output bit stream
                 allowing for improved impulse noise immunity at
                 the expense of payload latency.

                 In the case where the ifType is Fast(125), use
                 noSuchObject."                       '"Actual transmit rate on this channel."                      �"The rate at the time of the last
                 adslAtucRateChangeTrap event. It is also set at
                 initialization to prevent a trap being sent.

                 Rate changes less than adslAtucThresh(*)RateDown
                 or less than adslAtucThresh(*)RateUp will not
                 cause a trap or cause this object to change.
                 (*) == Fast or Interleave.
                 See AdslLineAlarmConfProfileEntry."                       �"Indicates the length of the channel data-block
                 on which the CRC operates.  Refer to Line Code
                 Specific MIBs, [11] and [12] for more
                 information."                       �"This table provides one row for each ATUR channel.
                 ADSL channel interfaces are those ifEntries
                 where ifType is equal to adslInterleave(124)
                 or adslFast(125)."                       $"An entry in the adslAturChanTable."                      �"Interleave Delay for this channel.

                 Interleave delay applies only to the
                 interleave channel and defines the mapping
                 (relative spacing) between subsequent input
                 bytes at the interleaver input and their placement
                 in the bit stream at the interleaver output.
                 Larger numbers provide greater separation between
                 consecutive input bytes in the output bit stream
                 allowing for improved impulse noise immunity at
                 the expense of payload latency.

                 In the case where the ifType is Fast(125), use
                 noSuchObject."                       '"Actual transmit rate on this channel."                      �"The rate at the time of the last
                 adslAturRateChangeTrap event. It is also set at
                 initialization to prevent a trap being sent.
                 Rate changes less than adslAturThresh(*)RateDown
                 or less than adslAturThresh(*)RateUp will not
                 cause a trap or cause this object to change.
                 (*) == Fast or Interleave.
                 See AdslLineAlarmConfProfileEntry."                       �"Indicates the length of the channel data-block
                 on which the CRC operates.  Refer to Line Code
                 Specific MIBs, [11] and [12] for more
                 information."                       �"This table provides one row for each ATUC.
                 ADSL physical interfaces are
                 those ifEntries where ifType is equal to adsl(94)."                       $"An entry in adslAtucPerfDataTable."                       V"Count of the number of Loss of Framing failures since
                 agent reset."                       U"Count of the number of Loss of Signal failures since
                 agent reset."                       S"Count of the number of Loss of Link failures since
                 agent reset."                       T"Count of the number of Loss of Power failures since
                 agent reset."                       �"Count of the number of Errored Seconds since agent
                 reset.  The errored second parameter is a count of
                 one-second intervals containing one or more crc
                 anomalies, or one or more los or sef defects."                       �"Count of the line initialization attempts since
                 agent reset. Includes both successful and failed
                 attempts."                      "The number of previous 15-minute intervals in the
                 interval table for which data was collected.  Given
                 that <n> is the maximum # of intervals supported.
                 The value will be <n> unless the measurement was
                 (re-)started within the last (<n>*15) minutes, in which
                 case the value will be the number of complete 15
                 minute intervals for which the agent has at least
                 some data. In certain cases (e.g., in the case
                 where the agent is a proxy) it is possible that some
                 intervals are unavailable.  In this case, this
                 interval is the maximum interval number for
                 which data is available."                      V"The number of intervals in the range from
                 0 to the value of adslAtucPerfValidIntervals
                 for which no data is available. This object
                 will typically be zero except in cases where
                 the data for some intervals are not available
                 (e.g., in proxy situations)."                       )"Total elapsed seconds in this interval."                       f"Count of seconds in the current 15 minute interval
                 when there was Loss of Framing."                       e"Count of seconds in the current 15 minute interval
                 when there was Loss of Signal."                       c"Count of seconds in the current 15 minute interval
                 when there was Loss of Link."                       d"Count of seconds in the current 15 minute interval
                 when there was Loss of Power."                       �"Count of Errored Seconds in the current 15 minute
                 interval.  The errored second parameter is a count of
                 one-second intervals containing one or more crc
                 anomalies, or one or more los or sef defects."                       �"Count of the line initialization attempts in the
                 current 15 minute interval. Includes both successful
                 and failed attempts."                       j"Number of seconds that have elapsed since the
                 beginning of the current 1-day interval."                       �"Count of the number of seconds when there was Loss of
                 Framing during the current day as measured by
                 adslAtucPerfCurr1DayTimeElapsed."                       �"Count of the number of seconds when there was Loss of
                 Signal during the current day as measured by
                 adslAtucPerfCurr1DayTimeElapsed."                       �"Count of the number of seconds when there was Loss of
                 Link during the current day as measured by
                 adslAtucPerfCurr1DayTimeElapsed."                       �"Count of the number of seconds when there was Loss of
                 Power during the current day as measured by
                 adslAtucPerfCurr1DayTimeElapsed."                      2"Count of Errored Seconds during the current day as
                 measured by adslAtucPerfCurr1DayTimeElapsed.
                 The errored second parameter is a count of
                 one-second intervals containing one or more crc
                 anomalies, or one or more los or sef defects."                       �"Count of the line initialization attempts in the
                 day as measured by adslAtucPerfCurr1DayTimeElapsed.
                 Includes both successful and failed attempts."                      h"The amount of time in the previous 1-day interval
                 over which the performance monitoring information
                 is actually counted. This value will be the same as
                 the interval duration except in a situation where
                 performance monitoring data could not be collected
                 for any reason."                       �"Count of seconds in the interval when there was
                 Loss of Framing within the most recent previous
                 1-day period."                       �"Count of seconds in the interval when there was
                 Loss of Signal within the most recent previous
                 1-day period."                       �"Count of seconds in the interval when there was
                 Loss of Link within the most recent previous
                 1-day period."                       �"Count of seconds in the interval when there was
                 Loss of Power within the most recent previous
                 1-day period."                      "Count of Errored Seconds within the most recent
                 previous 1-day period. The errored second parameter is
                 a count of one-second intervals containing one or more
                 crc anomalies, or one or more los or sef defects."                       �"Count of the line initialization attempts in the most
                 recent previous 1-day period. Includes both successful
                 and failed attempts."                       �"This table provides one row for each ATUR.
                 ADSL physical interfaces are
                 those ifEntries where ifType is equal to adsl(94)."                       $"An entry in adslAturPerfDataTable."                       V"Count of the number of Loss of Framing failures since
                 agent reset."                       U"Count of the number of Loss of Signal failures since
                 agent reset."                       T"Count of the number of Loss of Power failures since
                 agent reset."                       �"Count of the number of Errored Seconds since agent
                 reset.  The errored second parameter is a count of
                 one-second intervals containing one or more crc
                 anomalies, or one or more los or sef defects."                      "The number of previous 15-minute intervals in the
                 interval table for which data was collected.  Given
                 that <n> is the maximum # of intervals supported.
                 The value will be <n> unless the measurement was
                 (re-)started within the last (<n>*15) minutes, in which
                 case the value will be the number of complete 15
                 minute intervals for which the agent has at least
                 some data. In certain cases (e.g., in the case
                 where the agent is a proxy) it is possible that some
                 intervals are unavailable.  In this case, this
                 interval is the maximum interval number for
                 which data is available."                      V"The number of intervals in the range from
                 0 to the value of adslAturPerfValidIntervals
                 for which no data is available. This object
                 will typically be zero except in cases where
                 the data for some intervals are not available
                 (e.g., in proxy situations)."                       )"Total elapsed seconds in this interval."                       f"Count of seconds in the current 15 minute interval
                 when there was Loss of Framing."                       e"Count of seconds in the current 15 minute interval
                 when there was Loss of Signal."                       d"Count of seconds in the current 15 minute interval
                 when there was Loss of Power."                       �"Count of Errored Seconds in the current 15 minute
                interval.  The errored second parameter is a count of
                one-second intervals containing one or more crc
                anomalies, or one or more los or sef defects."                       j"Number of seconds that have elapsed since the
                 beginning of the current 1-day interval."                       �"Count of the number of seconds when there was Loss
                 of Framing during the current day as measured by
                 adslAturPerfCurr1DayTimeElapsed."                       �"Count of the number of seconds when there was Loss
                 of Signal during the current day as measured by
                 adslAturPerfCurr1DayTimeElapsed."                       �"Count of the number of seconds when there was Loss
                 of Power during the current day as measured by
                 adslAturPerfCurr1DayTimeElapsed."                      2"Count of Errored Seconds during the current day as
                 measured by adslAturPerfCurr1DayTimeElapsed.
                 The errored second parameter is a count of
                 one-second intervals containing one or more crc
                 anomalies, or one or more los or sef defects."                      h"The amount of time in the previous 1-day interval
                 over which the performance monitoring information
                 is actually counted. This value will be the same as
                 the interval duration except in a situation where
                 performance monitoring data could not be collected
                 for any reason."                       �"Count of seconds in the interval when there was
                 Loss of Framing within the most recent previous
                 1-day period."                       �"Count of seconds in the interval when there was
                 Loss of Signal within the most recent previous
                 1-day period."                       �"Count of seconds in the interval when there was
                 Loss of Power within the most recent previous
                 1-day period."                      "Count of Errored Seconds within the most recent
                 previous 1-day period. The errored second parameter is
                 a count of one-second intervals containing one or more
                 crc anomalies, or one or more los or sef defects."                       �"This table provides one row for each ATUC
                 performance data collection interval.
                 ADSL physical interfaces are
                 those ifEntries where ifType is equal to adsl(94)."                       ("An entry in the adslAtucIntervalTable."                       �"Performance Data Interval number 1 is the
                 the most recent previous interval; interval
                 96 is 24 hours ago.  Intervals 2..96 are
                 optional."                       T"Count of seconds in the interval when there was Loss
                 of Framing."                       S"Count of seconds in the interval when there was Loss
                 of Signal."                       Q"Count of seconds in the interval when there was Loss
                 of Link."                       R"Count of seconds in the interval when there was Loss
                 of Power."                       �"Count of Errored Seconds in the interval.
                 The errored second parameter is a count of
                 one-second intervals containing one or more crc
                 anomalies, or one or more los or sef defects."                       �"Count of the line initialization attempts
                 during the interval. Includes both successful
                 and failed attempts."                       S"This variable indicates if the data for this
                 interval is valid."                       �"This table provides one row for each ATUR
                 performance data collection interval.
                 ADSL physical interfaces are those
                 ifEntries where ifType is equal to adsl(94)."                       ("An entry in the adslAturIntervalTable."                       �"Performance Data Interval number 1 is the
                 the most recent previous interval; interval
                 96 is 24 hours ago.  Intervals 2..96 are
                 optional."                       T"Count of seconds in the interval when there was
                 Loss of Framing."                       S"Count of seconds in the interval when there was
                 Loss of Signal."                       R"Count of seconds in the interval when there was
                 Loss of Power."                       �"Count of Errored Seconds in the interval.
                 The errored second parameter is a count of
                 one-second intervals containing one or more crc
                 anomalies, or one or more los or sef defects."                       S"This variable indicates if the data for this
                 interval is valid."                       �"This table provides one row for each ATUC channel.
                 ADSL channel interfaces are those ifEntries
                 where ifType is equal to adslInterleave(124)
                 or adslFast(125)."                       ("An entry in adslAtucChanPerfDataTable."                       ["Count of all encoded blocks received on this channel
                 since agent reset."                       ^"Count of all encoded blocks transmitted on this
                 channel since agent reset."                       �"Count of all blocks received with errors that were
                 corrected since agent reset.  These blocks are passed
                 on as good data."                       ]"Count of all blocks received with uncorrectable
                 errors since agent reset."                      "The number of previous 15-minute intervals in the
                 interval table for which data was collected.  Given
                 that <n> is the maximum # of intervals supported.
                 The value will be <n> unless the measurement was
                 (re-)started within the last (<n>*15) minutes, in which
                 case the value will be the number of complete 15
                 minute intervals for which the agent has at least
                 some data. In certain cases (e.g., in the case
                 where the agent is a proxy) it is possible that some
                 intervals are unavailable.  In this case, this
                 interval is the maximum interval number for
                 which data is available."                      Z"The number of intervals in the range from
                 0 to the value of adslAtucChanPerfValidIntervals
                 for which no data is available. This object
                 will typically be zero except in cases where
                 the data for some intervals are not available
                 (e.g., in proxy situations)."                       )"Total elapsed seconds in this interval."                       o"Count of all encoded blocks received on this channel
                 within the current 15 minute interval."                       r"Count of all encoded blocks transmitted on this
                 channel within the current 15 minute interval."                       �"Count of all blocks received with errors that were
                 corrected on this channel within the current 15 minute
                 interval."                       �"Count of all blocks received with uncorrectable
                 errors on this channel within the current 15 minute
                 interval."                       j"Number of seconds that have elapsed since the
                 beginning of the current 1-day interval."                       �"Count of all encoded blocks received on this
                 channel during the current day as measured by
                 adslAtucChanPerfCurr1DayTimeElapsed."                       �"Count of all encoded blocks transmitted on this
                 channel during the current day as measured by
                 adslAtucChanPerfCurr1DayTimeElapsed."                       �"Count of all blocks received with errors that were
                 corrected on this channel during the current day as
                 measured by adslAtucChanPerfCurr1DayTimeElapsed."                       �"Count of all blocks received with uncorrectable
                 errors on this channel during the current day as
                 measured by adslAtucChanPerfCurr1DayTimeElapsed."                      h"The amount of time in the previous 1-day interval
                 over which the performance monitoring information
                 is actually counted. This value will be the same as
                 the interval duration except in a situation where
                 performance monitoring data could not be collected
                 for any reason."                       �"Count of all encoded blocks received on this
                 channel within the most recent previous 1-day
                 period."                       �"Count of all encoded blocks transmitted on this
                 channel within the most recent previous 1-day
                 period."                       �"Count of all blocks received with errors that were
                 corrected on this channel within the most recent
                 previous 1-day period."                       �"Count of all blocks received with uncorrectable
                 errors on this channel within the most recent previous
                 1-day period."                       �"This table provides one row for each ATUR channel.
                 ADSL channel interfaces are those ifEntries
                 where ifType is equal to adslInterleave(124)
                 or adslFast(125)."                       ("An entry in adslAturChanPerfDataTable."                       ["Count of all encoded blocks received on this channel
                 since agent reset."                       ^"Count of all encoded blocks transmitted on this
                 channel since agent reset."                       �"Count of all blocks received with errors that were
                 corrected since agent reset.  These blocks are passed
                 on as good data."                       ]"Count of all blocks received with uncorrectable
                 errors since agent reset."                      "The number of previous 15-minute intervals in the
                 interval table for which data was collected.  Given
                 that <n> is the maximum # of intervals supported.
                 The value will be <n> unless the measurement was
                 (re-)started within the last (<n>*15) minutes, in which
                 case the value will be the number of complete 15
                 minute intervals for which the agent has at least
                 some data. In certain cases (e.g., in the case
                 where the agent is a proxy) it is possible that some
                 intervals are unavailable.  In this case, this
                 interval is the maximum interval number for
                 which data is available."                      Z"The number of intervals in the range from
                 0 to the value of adslAturChanPerfValidIntervals
                 for which no data is available. This object
                 will typically be zero except in cases where
                 the data for some intervals are not available
                 (e.g., in proxy situations)."                       ["Total elapsed seconds in this interval.
                 A full interval is 900 seconds."                       o"Count of all encoded blocks received on this
                 channel within the current 15 minute interval."                       r"Count of all encoded blocks transmitted on this
                 channel within the current 15 minute interval."                       �"Count of all blocks received with errors that were
                 corrected on this channel within the current 15 minute
                 interval."                       �"Count of all blocks received with uncorrectable
                 errors on this channel within the current 15 minute
                 interval."                       j"Number of seconds that have elapsed since the
                 beginning of the current 1-day interval."                       �"Count of all encoded blocks received on this
                 channel during the current day as measured by
                 adslAturChanPerfCurr1DayTimeElapsed."                       �"Count of all encoded blocks transmitted on this
                 channel during the current day as measured by
                 adslAturChanPerfCurr1DayTimeElapsed."                       �"Count of all blocks received with errors that were
                 corrected on this channel during the current day as
                 measured by adslAturChanPerfCurr1DayTimeElapsed."                       �"Count of all blocks received with uncorrectable
                 errors on this channel during the current day as
                 measured by adslAturChanPerfCurr1DayTimeElapsed."                      h"The amount of time in the previous 1-day interval
                 over which the performance monitoring information
                 is actually counted. This value will be the same as
                 the interval duration except in a situation where
                 performance monitoring data could not be collected
                 for any reason."                       �"Count of all encoded blocks received on this
                 channel within the most recent previous 1-day
                 period."                       �"Count of all encoded blocks transmitted on this
                 channel within the most recent previous 1-day
                 period."                       �"Count of all blocks received with errors that were
                 corrected on this channel within the most recent
                 previous 1-day period."                       �"Count of all blocks received with uncorrectable
                 errors on this channel within the most recent previous
                 1-day period."                      "This table provides one row for each ATUC channel's
                 performance data collection interval.
                 ADSL channel interfaces are those ifEntries
                 where ifType is equal to adslInterleave(124)
                 or adslFast(125)."                       ("An entry in the adslAtucIntervalTable."                       �"Performance Data Interval number 1 is the
                 the most recent previous interval; interval
                 96 is 24 hours ago.  Intervals 2..96 are
                 optional."                       ^"Count of all encoded blocks received on this channel
                 during this interval."                       a"Count of all encoded blocks transmitted on this
                 channel during this interval."                       v"Count of all blocks received with errors that were
                 corrected on this channel during this interval."                       p"Count of all blocks received with uncorrectable
                 errors on this channel during this interval."                       S"This variable indicates if the data for this
                 interval is valid."                      "This table provides one row for each ATUR channel's
                 performance data collection interval.
                 ADSL channel interfaces are those ifEntries
                 where ifType is equal to adslInterleave(124)
                 or adslFast(125)."                       ("An entry in the adslAturIntervalTable."                       �"Performance Data Interval number 1 is the
                 the most recent previous interval; interval
                 96 is 24 hours ago.  Intervals 2..96 are
                 optional."                       ^"Count of all encoded blocks received on this channel
                 during this interval."                       a"Count of all encoded blocks transmitted on this
                 channel during this interval."                       v"Count of all blocks received with errors that were
                 corrected on this channel during this interval."                       p"Count of all blocks received with uncorrectable
                 errors on this channel during this interval."                       S"This variable indicates if the data for this
                 interval is valid."                       �"This table contains information on the ADSL line
                 configuration.  One entry in this table reflects a
                 profile defined by a manager which can be used to
                 configure the ADSL line."                      )"Each entry consists of a list of parameters that
                 represents the configuration of an ADSL modem.

                 When `dynamic' profiles are implemented, a default
                 profile will always exist.  This profile's name will
                 be set to `DEFVAL' and its parameters will be set
                 to vendor specific values, unless otherwise specified
                 in this document.

                 When `static' profiles are implemented, profiles
                 are automaticly created or destroyed as ADSL
                 physical lines are discovered and removed by
                 the system.  The name of the profile will be
                 equivalent to the decimal value of the line's
                 interface index.
                 "                      o"This object is used by the line configuration table
                 in order to identify a row of this table.

                 When `dynamic' profiles are implemented, the profile
                 name is user specified.  Also, the system will always
                 provide a default profile whose name is `DEFVAL'.

                 When `static' profiles are implemented, there is an
                 one-to-one relationship between each line and its
                 profile.  In which case, the profile name will
                 need to algorithmicly represent the Line's ifIndex.
                 Therefore, the profile's name is a decimalized string
                 of the ifIndex that is fixed-length (i.e., 10) with
                 leading zero(s).  For example, the profile name for
                 ifIndex which equals '15' will be '0000000015'."                       �"Defines what form of transmit rate adaptation is
                 configured on this modem.  See ADSL Forum TR-005 [3]
                 for more information."                      "Configured allocation ratio of excess transmit
                 bandwidth between fast and interleaved channels.  Only
                 applies when two channel mode and RADSL are supported.
                 Distribute bandwidth on each channel in excess of the
                 corresponding ChanConfMinTxRate so that:
                 adslAtucConfRateChanRatio =

                         [Fast / (Fast + Interleaved)] * 100

                 In other words this value is the fast channel
                 percentage."                       �"Configured Target Signal/Noise Margin.
                 This is the Noise Margin the modem must achieve
                 with a BER of 10-7 or better to successfully complete
                 initialization."                       �"Configured Maximum acceptable Signal/Noise Margin.
                 If the Noise Margin is above this the modem should
                 attempt to reduce its power output to optimize its
                 operation."                      ."Configured Minimum acceptable Signal/Noise Margin.
                 If the noise margin falls below this level, the modem
                 should attempt to increase its power output.  If that
                 is not possible the modem will attempt to
                 re-initialize or shut down."                      $"Configured Signal/Noise Margin for rate downshift.
                 If the noise margin falls below this level, the modem
                 should attempt to decrease its transmit rate.  In
                 the case that RADSL mode is not present,
                 the value will be `0'."                      "Configured Signal/Noise Margin for rate upshift.
                 If the noise margin rises above this level, the modem
                 should attempt to increase its transmit rate.    In
                 the case that RADSL is not present, the value will
                 be `0'."                       �"Minimum time that the current margin is above
                 UpshiftSnrMgn before an upshift occurs.
                 In the case that RADSL is not present, the value will
                 be `0'."                       �"Minimum time that the current margin is below
                 DownshiftSnrMgn before a downshift occurs.
                 In the case that RADSL mode is not present,
                 the value will be `0'."                       �"Configured Minimum Transmit rate for `Fast' channels,
                 in bps.  See adslAtucConfRateChanRatio for information
                 regarding RADSL mode and ATUR transmit rate for
                 ATUC receive rates."                       �"Configured Minimum Transmit rate for `Interleave'
                 channels, in bps.  See adslAtucConfRateChanRatio for
                 information regarding RADSL mode and see
                 ATUR transmit rate for receive rates."                       �"Configured Maximum Transmit rate for `Fast' channels,
                 in bps.  See adslAtucConfRateChanRatio for information
                 regarding RADSL mode and see ATUR transmit rate for
                 ATUC receive rates."                       �"Configured Maximum Transmit rate for `Interleave'
                 channels, in bps.  See adslAtucConfRateChanRatio for
                 information regarding RADSL mode and ATUR transmit
                 rate for ATUC receive rates."                      Y"Configured maximum Interleave Delay for this channel.

                 Interleave delay applies only to the interleave channel
                 and defines the mapping (relative spacing) between
                 subsequent input bytes at the interleaver input and
                 their placement in the bit stream at the interleaver
                 output.  Larger numbers provide greater separation
                 between consecutive input bytes in the output bit
                 stream allowing for improved impulse noise immunity
                 at the expense of payload latency."                       �"Defines what form of transmit rate adaptation is
                 configured on this modem.  See ADSL Forum TR-005 [3]
                 for more information."                      "Configured allocation ratio of excess transmit
                 bandwidth between fast and interleaved channels.  Only
                 applies when two channel mode and RADSL are supported.
                 Distribute bandwidth on each channel in excess of the
                 corresponding ChanConfMinTxRate so that:
                 adslAturConfRateChanRatio =

                         [Fast / (Fast + Interleaved)] * 100

                 In other words this value is the fast channel
                 percentage."                       �"Configured Target Signal/Noise Margin.
                 This is the Noise Margin the modem must achieve
                 with a BER of 10-7 or better to successfully complete
                 initialization."                       �"Configured Maximum acceptable Signal/Noise Margin.
                 If the Noise Margin is above this the modem should
                 attempt to reduce its power output to optimize its
                 operation."                      ."Configured Minimum acceptable Signal/Noise Margin.
                 If the noise margin falls below this level, the modem
                 should attempt to increase its power output.  If that
                 is not possible the modem will attempt to
                 re-initialize or shut down."                      #"Configured Signal/Noise Margin for rate downshift.
                 If the noise margin falls below this level, the modem
                 should attempt to decrease its transmit rate.
                 In the case that RADSL mode is not present,
                 the value will be `0'."                      "Configured Signal/Noise Margin for rate upshift.
                 If the noise margin rises above this level, the modem
                 should attempt to increase its transmit rate.
                 In the case that RADSL is not present,
                 the value will be `0'."                       �"Minimum time that the current margin is above
                 UpshiftSnrMgn before an upshift occurs.
                 In the case that RADSL is not present, the value will
                 be `0'."                       �"Minimum time that the current margin is below
                 DownshiftSnrMgn before a downshift occurs.
                 In the case that RADSL mode is not present,
                 the value will be `0'."                       �"Configured Minimum Transmit rate for `Fast' channels,
                 in bps.  See adslAturConfRateChanRatio for information
                 regarding RADSL mode and ATUC transmit rate
                 for ATUR receive rates."                       �"Configured Minimum Transmit rate for `Interleave'
                 channels, in bps.  See adslAturConfRateChanRatio for
                 information regarding RADSL mode and ATUC transmit rate
                 for ATUR receive rates."                       �"Configured Maximum Transmit rate for `Fast' channels,
                 in bps.  See adslAturConfRateChanRatio for information
                 regarding RADSL mode and ATUC transmit rate
                 for ATUR receive rates."                       �"Configured Maximum Transmit rate for `Interleave'
                 channels, in bps.  See adslAturConfRateChanRatio for
                 information regarding RADSL mode and see
                 ATUC transmit rate for ATUR receive rates."                      Y"Configured maximum Interleave Delay for this channel.

                 Interleave delay applies only to the interleave channel
                 and defines the mapping (relative spacing) between
                 subsequent input bytes at the interleaver input and
                 their placement in the bit stream at the interleaver
                 output.  Larger numbers provide greater separation
                 between consecutive input bytes in the output bit
                 stream allowing for improved impulse noise immunity
                 at the expense of payload latency."                      "This object is used to create a new row or modify or
                 delete an existing row in this table.
                 A profile activated by setting this object to
                 `active'.  When `active' is set, the system
                 will validate the profile.

                 Before a profile can be deleted or taken out of
                 service, (by setting this object to `destroy' or
                 `outOfService') it must be first unreferenced
                 from all associated lines.

                 If the implementator of this MIB has chosen not
                 to implement `dynamic assignment' of profiles, this
                 object's MIN-ACCESS is read-only and its value
                 is always to be `active'."                       �"This table contains information on the ADSL line
                 configuration.  One entry in this table reflects a
                 profile defined by a manager which can be used to
                 configure the modem for a physical line"                      )"Each entry consists of a list of parameters that
                 represents the configuration of an ADSL modem.

                 When `dynamic' profiles are implemented, a default
                 profile will always exist.  This profile's name will
                 be set to `DEFVAL' and its parameters will be set to
                 vendor specific values, unless otherwise specified
                 in this document.

                 When `static' profiles are implemented, profiles
                 are automaticly created or destroyed as ADSL
                 physical lines are discovered and removed by
                 the system.  The name of the profile will be
                 equivalent to the decimal value of the line's
                 interface index.
                 "                      u"This object is used by the line alarm configuration
                 table in order to identify a row of this table.

                 When `dynamic' profiles are implemented, the profile
                 name is user specified.  Also, the system will always
                 provide a default profile whose name is `DEFVAL'.

                 When `static' profiles are implemented, there is an
                 one-to-one relationship between each line and its
                 profile.  In which case, the profile name will
                 need to algorithmicly represent the Line's ifIndex.
                 Therefore, the profile's name is a decimalized string
                 of the ifIndex that is fixed-length (i.e., 10) with
                 leading zero(s).  For example, the profile name for
                 ifIndex which equals '15' will be '0000000015'."                      �"The number of Loss of Frame Seconds
                 encountered by an ADSL interface within any given 15
                 minutes performance data collection period, which
                 causes the SNMP agent to send an
                 adslAtucPerfLofsThreshTrap.
                 One trap will be sent per interval per interface.
                 A value of `0' will disable the trap."                      �"The number of Loss of Signal Seconds
                 encountered by an ADSL interface within any given 15
                 minutes performance data collection period, which
                 causes the SNMP agent to send an
                 adslAtucPerfLossThreshTrap.
                 One trap will be sent per interval per interface.
                 A value of `0' will disable the trap."                      �"The number of Loss of Link Seconds
                 encountered by an ADSL interface within any given 15
                 minutes performance data collection period, which
                 causes the SNMP agent to send an
                 adslAtucPerfLolsThreshTrap.
                 One trap will be sent per interval per interface.
                 A value of `0' will disable the trap."                      �"The number of Loss of Power Seconds
                 encountered by an ADSL interface within any given 15
                 minutes performance data collection period, which
                 causes the SNMP agent to send an
                 adslAtucPerfLprsThreshTrap.
                 One trap will be sent per interval per interface.
                 A value of `0' will disable the trap."                      �"The number of Errored Seconds
                 encountered by an ADSL interface within any given 15
                 minutes performance data collection period, which
                 causes the SNMP agent to send an
                 adslAtucPerfESsThreshTrap.
                 One trap will be sent per interval per interface.
                 A value of `0' will disable the trap."                      &"Applies to `Fast' channels only.
                 Configured change in rate causing an
                 adslAtucRateChangeTrap. A trap is produced when:
                 ChanCurrTxRate >= ChanPrevTxRate plus the value of
                 this object. A value of `0' will disable the trap."                      -"Applies to `Interleave' channels only.
                 Configured change in rate causing an
                 adslAtucRateChangeTrap.  A trap is produced when:
                 ChanCurrTxRate >= ChanPrevTxRate plus the value of
                 this object. A value of `0' will disable the trap."                      ("Applies to `Fast' channels only.
                 Configured change in rate causing an
                 adslAtucRateChangeTrap.  A trap is produced when:
                 ChanCurrTxRate <= ChanPrevTxRate minus the value of
                 this object. A value of `0' will disable the trap."                      ."Applies to `Interleave' channels only.
                 Configured change in rate causing an
                 adslAtucRateChangeTrap.  A trap is produced when:
                 ChanCurrTxRate <= ChanPrevTxRate minus the value of
                 this object. A value of `0' will disable the trap."                       c"Enables and disables the InitFailureTrap.  This
                 object is defaulted disable(2)."                      �"The number of Loss of Frame Seconds
                 encountered by an ADSL interface within any given 15
                 minutes performance data collection period, which
                 causes the SNMP agent to send an
                 adslAturPerfLofsThreshTrap.
                 One trap will be sent per interval per interface.
                 A value of `0' will disable the trap."                      �"The number of Loss of Signal Seconds
                 encountered by an ADSL interface within any given 15
                 minutes performance data collection period, which
                 causes the SNMP agent to send an
                 adslAturPerfLossThreshTrap.
                 One trap will be sent per interval per interface.
                 A value of `0' will disable the trap."                      �"The number of Loss of Power Seconds
                 encountered by an ADSL interface within any given 15
                 minutes performance data collection period, which
                 causes the SNMP agent to send an
                 adslAturPerfLprsThreshTrap.
                 One trap will be sent per interval per interface.
                 A value of `0' will disable the trap."                      �"The number of Errored Seconds
                 encountered by an ADSL interface within any given 15
                 minutes performance data collection period, which
                 causes the SNMP agent to send an
                 adslAturPerfESsThreshTrap.
                 One trap will be sent per interval per interface.
                 A value of `0' will disable the trap."                      '"Applies to `Fast' channels only.
                 Configured change in rate causing an
                 adslAturRateChangeTrap.  A trap is produced when:
                 ChanCurrTxRate >= ChanPrevTxRate plus the value of
                 this object. A value of `0' will disable the trap."                      -"Applies to `Interleave' channels only.
                 configured change in rate causing an
                 adslAturRateChangeTrap.  A trap is produced when:
                 ChanCurrTxRate >= ChanPrevTxRate plus the value of
                 this object. A value of `0' will disable the trap."                      ("Applies to `Fast' channels only.
                 Configured change in rate causing an
                 adslAturRateChangeTrap.  A trap is produced when:
                 ChanCurrTxRate <= ChanPrevTxRate minus the value of
                 this object. A value of `0' will disable the trap."                      ."Applies to `Interleave' channels only.
                 Configured change in rate causing an
                 adslAturRateChangeTrap.  A trap is produced when:
                 ChanCurrTxRate <= ChanPrevTxRate minus the value of
                 this object. A value of `0' will disable the trap."                      "This object is used to create a new row or modify or
                 delete an existing row in this table.

                 A profile activated by setting this object to
                 `active'.  When `active' is set, the system
                 will validate the profile.

                 Before a profile can be deleted or taken out of
                 service, (by setting this object to `destroy' or
                 `outOfService') it must be first unreferenced
                 from all associated lines.

                 If the implementator of this MIB has chosen not
                 to implement `dynamic assignment' of profiles, this
                 object's MIN-ACCESS is read-only and its value
                 is always to be `active'."                                       7"Loss of Framing 15-minute interval threshold reached."                 6"Loss of Signal 15-minute interval threshold reached."                 5"Loss of Power 15-minute interval threshold reached."                 6"Errored Second 15-minute interval threshold reached."                 7"The ATUCs transmit rate has changed (RADSL mode only)"                 4"Loss of Link 15-minute interval threshold reached."                 ]"ATUC initialization failed. See adslAtucCurrStatus
                 for potential reasons."                         7"Loss of Framing 15-minute interval threshold reached."                 6"Loss of Signal 15-minute interval threshold reached."                 5"Loss of Power 15-minute interval threshold reached."                 6"Errored Second 15-minute interval threshold reached."                 7"The ATURs transmit rate has changed (RADSL mode only)"                        