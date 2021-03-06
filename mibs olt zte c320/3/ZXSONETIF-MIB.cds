                                                   ["The MIB module to describe DS1, E1, DS2, and
          E2 interfaces objects.
         " �"Zhongxing Telcom Co. Ltd.
                     E-mail: info@mail.zte.com.cn
                     http  : www.zte.com.cn or www.zhongxing.com"       -- Aug 18, 2007
       "The SONET/SDH Medium table."                       )"An entry in the SONET/SDH Medium table."                       �"The 4 bytes index includes:
          interface type(bit31~28);shelfId(bit27~24);slotId(bit23~16);
          portId(bit15~8);reserved(bit7~bit0)
          ."                      �"Represents the desired loopback configuration of the SONET line.
       noLoopback: Not in the loopback state.
      
       lineLoop:
          The received signal at this interface does not go
          through the device (minimum penetration) but is
          looped back out.
       
       inwardLoop
          The transmitted signal at this interface is
          looped back and received by the same interface.
          What is transmitted onto the line is product
          dependent."                      ,"The source of Transmit Clock.
      'loopTiming' indicates that the recovered
      receive clock is used as the transmit clock.
       
      'localTiming' indicates that a local clock
     source is used or when an external clock is
     attached to the box containing the interface.
     "                       �"Represents the configured line type.This object is used to switch
       between SONET(North American)and SDH(European) format.
       Sts is SONET format, while Stm is SDH format.
       "                       " "                       X"The action to send the configuration of 
           Sonet line to corresponding card."                       "The SONET/SDH Medium table."                       )"An entry in the SONET/SDH Medium table."                       `"This variable identifies whether a SONET
      or a SDH signal is used across this interface."                      F"The number of seconds, including partial seconds,
      that have elapsed since the beginning of the current
      measurement period. If, for some reason, such as an
      adjustment in the system's time-of-day clock, the
      current interval exceeds the maximum value, the
      agent will return the maximum value."                      �"The number of previous 15-minute intervals
      for which data was collected.
      A SONET/SDH interface must be capable
      of supporting at least n intervals.
      The minimum value of n is 4.
      The default of n is 32.
      The maximum value of n is 96.
      The value will be <n> unless the measurement was
      (re-)started within the last (<n>*15) minutes, in which
      case the value will be the number of complete 15
      minute intervals for which the agent has at least
      some data. In certain cases (e.g., in the case
      where the agent is a proxy) it is possible that some
      intervals are unavailable.  In this case, this
      interval is the maximum interval number for
      which data is available. "                      "This variable describes the line coding for
      this interface. The B3ZS and CMI are used for
      electrical SONET/SDH signals (STS-1 and STS-3).
      The Non-Return to Zero (NRZ) and the Return
      to Zero are used for optical SONET/SDH signals."                      F"This variable describes the line type for
      this interface. The line types are
      Short and Long Range
      Single Mode fiber or Multi-Mode fiber interfaces,
      and coax and UTP for electrical interfaces.  The
      value zxSonetOther should be used when the Line Type is
      not one of the listed values."                       �"This variable contains the transmission
      vendor's circuit identifier, for the
      purpose of facilitating troubleshooting.
      Note that the circuit identifier, if available,
      is also represented by ifPhysAddress."                      "The number of intervals in the range from
       0 to zxSonetMediumValidIntervals for which no
       data is available. This object will typically
       be zero except in cases where the data for some
       intervals are not available (e.g., in proxy
       situations)."                      �"The current loopback state of the SONET/SDH interface.  The
       values mean:
    
         sonetNoLoop
            Not in the loopback state. A device that is not
            capable of performing a loopback on this interface
            shall always return this value.
    
         sonetFacilityLoop
            The received signal at this interface is looped back
            out through the corresponding transmitter in the return
            direction.
    
         sonetTerminalLoop
            The signal that is about to be transmitted is connected
            to the associated incoming receiver.
    
         sonetOtherLoop
            Loopbacks that are not defined here."                       #"The Sonet VT Configuration table."                       /"An entry in the Sonet VT Configuration table."                       �"The 4 bytes index includes:
          interface type(bit31~28);shelfId(bit27~24);slotId(bit23~19);portId(bit18~16);augno(bit15~bit10);
          au3/au4no(bit9~bit8);tug3no(bit7~bit6);tug2no(bit5~bit3);tu12/tu11no(bit2~bit0)."                      �"This variable represents the desired loopback
          configuration of the Sonet VT.  Agents
          supporting read/write access should return
          inconsistentValue in response to a requested
          loopback state that the interface does not
          support.  The values mean:
    
          noLoop
          Not in the loopback state. 
    
          payloadLoop
          The received signal at this interface is looped
          through the device.  Typically the received signal
          is looped back for retransmission after it has
          passed through the device's framing function.
    
          lineLoop
          The received signal at this interface does not go
          through the device (minimum penetration) but is
          looped back out.
    
          otherLoop
          Loopbacks that are not defined here.
    
          inwardLoop
          The transmitted signal at this interface is
          looped back and received by the same interface.
          What is transmitted onto the line is product
          dependent.
    
          dualLoop
          Both lineLoop and inwardLoop will be
          active simultaneously."                      �"The source of Transmit Clock.
      'loopTiming' indicates that the recovered
      receive clock is used as the transmit clock.
    
      'localTiming' indicates that a local clock
     source is used or when an external clock is
     attached to the box containing the interface.
    
      'throughTiming' indicates that recovered
     receive clock from another interface is used as
     the transmit clock.
    
      'adaptive' indicates that the clock is recovered
     based on the data flow and not based on the
     physical layer.
     
     The last two values 'enhanced-adaptive' and 'inband-differential' 
     are customed values."                       �"The current clock state of the sonet VT interface. the value can be:
               FREERUN 0
               HOLDOVER 1 
               ACQUIRING 2
               ACUIRED 3.
               "                       V"The action to send the configuration on 
           Sonet VT to corresponding card."                      