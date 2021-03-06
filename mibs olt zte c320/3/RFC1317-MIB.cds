 =-- extracted from rfc1317.txt
-- at Mon Nov 15 17:11:58 1999
                                     o"The number of ports (regardless of their current
               state) in the RS-232-like general port table."                       e"A list of port entries.  The number of entries is
               given by the value of rs232Number."                       )"Status and parameter values for a port."                      �"A unique value for each port.  Its value ranges
               between 1 and the value of rs232Number.  By
               convention and if possible, hardware port numbers
               map directly to external connectors.  The value for
               each port must remain constant at least from one
               re-initialization of the network management agent to
               the next."                       "The port's hardware type."                       �"The number of input signals for the port in the
               input signal table (rs232PortInSigTable).  The table
               contains entries only for those signals the software
               can detect."                       �"The number of output signals for the port in the
               output signal table (rs232PortOutSigTable).  The
               table contains entries only for those signals the
               software can assert."                       ,"The port's input speed in bits per second."                       -"The port's output speed in bits per second."                       �"A list of asynchronous port entries.  The maximum
               entry number is given by the value of rs232Number.
               Entries need not exist for synchronous ports."                       F"Status and parameter values for an asynchronous
               port."                       e"A unique value for each port.  Its value is the
               same as rs232PortIndex for the port."                       +"The port's number of bits in a character."                       !"The port's number of stop bits."                       -"The port's sense of a character parity bit."                      �"A control for the port's ability to automatically
               sense input speed.

               When rs232PortAutoBaud is 'enabled', a port may
               autobaud to values different from the set values for
               speed, parity, and character size.  As a result a
               network management system may temporarily observe
               values different from what was previously set."                       �"Total number of characters with a parity error,
               input from the port since system re-initialization
               and while the port state was 'up' or 'test'."                       �"Total number of characters with a framing error,
               input from the port since system re-initialization
               and while the port state was 'up' or 'test'."                       �"Total number of characters with an overrun error,
               input from the port since system re-initialization
               and while the port state was 'up' or 'test'."                       �"A list of synchronous port entries.  The maximum
               entry number is given by the value of rs232Number.
               Entries need not exist for asynchronous ports."                       D"Status and parameter values for a synchronous
               port."                       e"A unique value for each port.  Its value is the
               same as rs232PortIndex for the port."                       �"Source of the port's bit rate clock. 'split' means
               the tranmit clock is internal and the receive clock
               is external."                       �"Total number of frames with an invalid frame check
               sequence, input from the port since system
               re-initialization and while the port state was 'up'
               or 'test'."                      "Total number of frames that failed to be
               transmitted on the port since system
               re-initialization and while the port state was 'up'
               or 'test' because data was not available to the
               transmitter in time."                       �"Total number of frames that failed to be received
               on the port since system re-initialization and while
               the port state was 'up' or 'test' because the
               receiver did not accept the data in time."                       �"Total number of frames that failed to be received
               or transmitted on the port due to loss of modem
               signals since system re-initialization and while the
               port state was 'up' or 'test'."                       �"Number of frames aborted on the port due to
               receiving an abort sequence since system
               re-initialization and while the port state was 'up'
               or 'test'."                       ."A list of port input control signal entries."                       2"Input control signal status for a hardware port."                       V"The value of rs232PortIndex for the port to which
               this entry belongs."                      ^"Identification of a hardware signal, as follows:

                   rts    Request to Send
                   cts    Clear to Send
                   dsr    Data Set Ready
                   dtr    Data Terminal Ready
                   ri     Ring Indicator
                   dcd    Received Line Signal Detector
                   sq     Signal Quality Detector
                   srs    Data Signaling Rate Selector
                   srts   Secondary Request to Send
                   scts   Secondary Clear to Send
                   sdcd   Secondary Received Line Signal Detector
               " %"EIA Standard RS-232-C, August 1969."                     "The current signal state."                       e"The number of times the signal has changed from
               'on' to 'off' or from 'off' to 'on'."                       /"A list of port output control signal entries."                       3"Output control signal status for a hardware port."                       V"The value of rs232PortIndex for the port to which
               this entry belongs."                      ^"Identification of a hardware signal, as follows:

                   rts    Request to Send
                   cts    Clear to Send
                   dsr    Data Set Ready
                   dtr    Data Terminal Ready
                   ri     Ring Indicator
                   dcd    Received Line Signal Detector
                   sq     Signal Quality Detector
                   srs    Data Signaling Rate Selector
                   srts   Secondary Request to Send
                   scts   Secondary Clear to Send
                   sdcd   Secondary Received Line Signal Detector
               " %"EIA Standard RS-232-C, August 1969."                     "The current signal state."                       e"The number of times the signal has changed from
               'on' to 'off' or from 'off' to 'on'."                          