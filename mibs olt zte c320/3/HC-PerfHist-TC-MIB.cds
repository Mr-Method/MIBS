    �"A gauge representing the aggregate of previous valid 15
            minute measurement intervals.  Intervals for which no
            valid data was available are not counted.

            This count represents a non-negative integer, which
            may increase or decrease, but shall never exceed 2^64-1
            (18446744073709551615 decimal), nor fall below 0.  The
            value of an object with HCPerfTotalCount syntax
            assumes its maximum value whenever the underlying count
            exceeds 2^64-1.  If the underlying count subsequently
            decreases below 2^64-1 (due, e.g., to a retroactive
            adjustment as a result of entering or exiting unavailable
            time), then the object's value also decreases.

            Note that this TC is not strictly supported in SMIv2,
            because the 'always increasing' and 'counter wrap'
            semantics associated with the Counter64 base type are not
            preserved.  It is possible that management applications
            which rely solely upon the (Counter64) ASN.1 tag to
            determine object semantics will mistakenly operate upon
            objects of this type as they would for Counter64 objects.

            This textual convention represents a limited and short-
            term solution, and may be deprecated as a long term
            solution is defined and deployed to replace it."              1"This convention defines a range of values that may be set
           in a fault threshold alarm control.  As the number of
           seconds in a 15-minute interval numbers at most 900,
           objects of this type may have a range of 0...900, where the
           value of 0 disables the alarm."              s"The number of near end intervals for which data was
          collected.  The value of an object with an
          HCPerfValidIntervals syntax will be 96 unless the
          measurement was (re-)started within the last 1440 minutes,
          in which case the value will be the number of complete 15
          minute intervals for which the agent has at least some data.
          In certain cases (e.g., in the case where the agent is a
          proxy) it is possible that some intervals are unavailable.
          In this case, this interval is the maximum interval number
          for which data is available."              
"A gauge associated with a performance measurement in a
            current 15 minute measurement interval.  The value of an
            object with an HCPerfCurrentCount syntax starts from zero
            and is increased when associated events occur, until the
            end of the 15 minute interval.  At that time the value of
            the gauge is stored in the first 15 minute history
            interval, and the gauge is restarted at zero.  In the case
            where the agent has no valid data available for the
            current interval, the corresponding object instance is not
            available and upon a retrieval request a corresponding
            error message shall be returned to indicate that this
            instance does not exist.

            This count represents a non-negative integer, which
            may increase or decrease, but shall never exceed 2^64-1
            (18446744073709551615 decimal), nor fall below 0.  The
            value of an object with HCPerfCurrentCount syntax
            assumes its maximum value whenever the underlying count
            exceeds 2^64-1.  If the underlying count subsequently
            decreases below 2^64-1 (due, e.g., to a retroactive
            adjustment as a result of entering or exiting unavailable
            time), then the object's value also decreases.

            Note that this TC is not strictly supported in SMIv2,
            because the 'always increasing' and 'counter wrap'
            semantics associated with the Counter64 base type are not
            preserved.  It is possible that management applications
            which rely solely upon the (Counter64) ASN.1 tag to
            determine object semantics will mistakenly operate upon
            objects of this type as they would for Counter64 objects.

            This textual convention represents a limited and short-
            term solution, and may be deprecated as a long term
            solution is defined and deployed to replace it."              	X"A gauge associated with a performance measurement in
            a previous 15 minute measurement interval.  In the case
            where the agent has no valid data available for a
            particular interval, the corresponding object instance is
            not available and upon a retrieval request a corresponding
            error message shall be returned to indicate that this
            instance does not exist.
            Let X be an object with HCPerfIntervalCount syntax.
            Let Y be an object with HCPerfCurrentCount syntax.
            Let Z be an object with HCPerfTotalCount syntax.
            Then, in a system supporting a history of n intervals with
            X(1) and X(n) the most and least recent intervals
            respectively, the following applies at the end of a 15
            minute interval:

               - discard the value of X(n)
               - the value of X(i) becomes that of X(i-1)
                 for n >= i > 1
               - the value of X(1) becomes that of Y.
               - the value of Z, if supported, is adjusted.

            This count represents a non-negative integer, which
            may increase or decrease, but shall never exceed 2^64-1
            (18446744073709551615 decimal), nor fall below 0.  The
            value of an object with HCPerfIntervalCount syntax
            assumes its maximum value whenever the underlying count
            exceeds 2^64-1.  If the underlying count subsequently
            decreases below 2^64-1 (due, e.g., to a retroactive
            adjustment as a result of entering or exiting unavailable
            time), then the value of the object also decreases.

            Note that this TC is not strictly supported in SMIv2,
            because the 'always increasing' and 'counter wrap'
            semantics associated with the Counter64 base type are not
            preserved.  It is possible that management applications
            which rely solely upon the (Counter64) ASN.1 tag to
            determine object semantics will mistakenly operate upon
            objects of this type as they would for Counter64 objects.

            This textual convention represents a limited and short-
            term solution, and may be deprecated as a long term
            solution is defined and deployed to replace it."              $"The number of near end intervals for which no data is
          available.  The value of an object with an
          HCPerfInvalidIntervals syntax will typically be zero except
          in cases where the data for some intervals are not available
          (e.g., in proxy situations)."              �"The number of seconds that have elapsed since the beginning
          of the current measurement period.  If, for some reason,
          such as an adjustment in the system's time-of-day clock or
          the addition of a leap second, the duration of the current
          interval exceeds the maximum value, the agent will return
          the maximum value.

          For 15 minute intervals, the range is limited to (0..899).
          For 24 hour intervals, the range is limited to (0..86399)."                                        j"This MIB Module provides Textual Conventions to be
            used by systems supporting 15 minute based performance
            history counts that require high-capacity counts.

            Copyright ? The Internet Society (2004).  This version
            of this MIB module is part of RFC 3705: see the RFC
            itself for full legal notices."�"WG-email:  adslmib@ietf.org
           Info:      https://www1.ietf.org/mailman/listinfo/adslmib

           Chair:     Mike Sneed
                      Sand Channel Systems
           Postal:    P.O.  Box 37324
                      Raleigh NC 27627-7324
                      USA
           Email:     sneedmike@hotmail.com
           Phone:     +1 206 600 7022

           Co-editor: Bob Ray
                      PESA Switching Systems, Inc.
           Postal:    330-A Wynn Drive
                      Huntsville, AL 35805
                      USA
           Email:     rray@pesa.com
           Phone:     +1 256 726 9200 ext.  142

           Co-editor: Rajesh Abbi
                      Alcatel USA
           Postal:    2301 Sugar Bush Road
                      Raleigh, NC 27612-3339
                      USA
           Email:     Rajesh.Abbi@alcatel.com
           Phone:     +1 919 850 6194
           " "200402030000Z" )"Initial version, published as RFC 3705."       -- February 3, 2004
          