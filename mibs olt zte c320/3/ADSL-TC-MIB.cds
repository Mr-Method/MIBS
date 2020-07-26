    "A counter associated with interface performance
               measurements during the most previous 1-day (24 hour)
               measurement interval.  The value of this counter is
               equal to the value of the current day counter at
               the end of its most recent interval.

               In the case where the agent has no valid data available
               for this interval the corresponding object
               instance is not available and upon a retrieval
               request a corresponding error message shall be
               returned to indicate that this instance does
               not exist (for example, a noSuchName error for
               SNMPv1 and a noSuchInstance for SNMPv2 GET
               operation)."              W"The number of seconds that have elapsed since
               the beginning of the current measurement period.
               If, for some reason, such as an adjustment in the
               system's time-of-day clock, the current interval
               exceeds the maximum value, the agent will return
               the maximum value."               N"This data type is used as the syntax for the ADSL
               Line Code."              "A counter associated with interface performance
               measurements in a current 1-day (24 hour) measurement
               interval.

               The value of this counter starts at zero at the
               beginning of an interval and is increased when
               associated events occur, until the end of the
               1-day interval.  At that time the value of the
               counter is stored in the previous 1-day history
               interval, if available, and the current interval
               counter is restarted at zero.

               In the case where the agent has no valid data available
               for this interval the corresponding object
               instance is not available and upon a retrieval
               request a corresponding error message shall be
               returned to indicate that this instance does
               not exist (for example, a noSuchName error for
               SNMPv1 and a noSuchInstance for SNMPv2 GET
               operation)."                                                 w"The MIB module which provides a ADSL
           Line Coding Textual Convention to be used
           by ADSL Lines."#"
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
       IETF ADSL MIB Working Group (adsl@xlist.agcs.com)
       " "9908190000Z" ("Initial Version, published as RFC 2662"                  