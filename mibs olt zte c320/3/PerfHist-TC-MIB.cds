    �"A counter associated with a
               performance measurement in a current 15
               minute measurement interval. The value
               of this counter starts from zero and is
               increased when associated events occur,
               until the end of the 15 minute interval.
               At that time the value of the counter is
               stored in the first 15 minute history
               interval, and the CurrentCount is
               restarted at zero. In the
               case where the agent has no valid data
               available for the current interval the
               corresponding object instance is not
               available and upon a retrieval request
               a corresponding error message shall be
               returned to indicate that this instance
               does not exist (for example, a noSuchName
               error for SNMPv1 and a noSuchInstance for
               SNMPv2 GET operation)."              �"A counter associated with a
               performance measurement in a previous
               15 minute measurement interval. In the
               case where the agent has no valid data
               available for a particular interval the
               corresponding object instance is not
               available and upon a retrieval request
               a corresponding error message shall be
               returned to indicate that this instance
               does not exist (for example, a noSuchName
               error for SNMPv1 and a noSuchInstance for
               SNMPv2 GET operation).
               In a system supporting
               a history of n intervals with
               IntervalCount(1) and IntervalCount(n) the
               most and least recent intervals
               respectively, the following applies at
               the end of a 15 minute interval:
               - discard the value of IntervalCount(n)
               - the value of IntervalCount(i) becomes that
                 of IntervalCount(i-1) for n >= i > 1
               - the value of IntervalCount(1) becomes that
                 of CurrentCount
               - the TotalCount, if supported, is adjusted."               �"A counter associated with a
               performance measurements aggregating the
               previous valid 15 minute measurement
               intervals. (Intervals for which no valid
               data was available are not counted)"                                         �"This MIB Module provides Textual Conventions
             to be used by systems supporting 15 minute
             based performance history counts.""Kaj Tesink
              Postal:  Bellcore
                       331 Newman Springs Road
                       Red Bank, NJ 07701
                       USA
              Tel:     +1 732 758 5254
              Fax:     +1 732 758 2269
              E-mail:  kaj@bellcore.com"                  