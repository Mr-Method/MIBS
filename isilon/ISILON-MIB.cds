                                               N"Change description of licenseExpirationDate to reflect licensing API changes" v"Isilon Systems LLC
         Support phone: 1-800.782.4362 
         Support website: http://support.emc.com
        " "201608050000Z" "201602240000Z" "201509230000Z" "201504070000Z" "201010210000Z" "201006290000Z" "200912150000Z" "200911100000Z" "200905290000Z" "Added nodeSerialNumber." @"The base MIB module for Isilon Systems OneFS operating system." A"Removed support for the iSCSI protocol in nodeProtocolPerfTable" �"MIB maintenance, using smilint to fix errors and warnings in MIB as
        well as improving descriptions and fixing spelling and grammar errors.
        Added compliance groups for SMIv2, and removed unused imports." �"The list of protocols supported by OneFS and reported in the
     nodeProtocolPerfEntry tables has changed: CIFS was
     renamed to SMB1, SMB2 was added, NFS was renamed to
     NFS3 (which includes also version 2), and NFS4 was added.""diskPerfOutBytesPerSecond was renamed to diskPerfOutBitsPerSecond.
     The value returned by the OID was and is bits per second.
     ifsFreeBytes was added, comparing with ifsAvailableBytes will
     show space used for Virtual Hot Spares (system reserve)." A"iSCSI and SyncIQ protocols were added to nodeProtocolPerfTable." �"The following OIDs were obsoleted: clusterNetworkInBytes,
       clusterNetworkOutBytes, nodeNetworkInBytes, and
       nodeNetworkOutBytes." "Initial revision."       --05 AUG 2016
               "The name of the cluster."                       $"The overall health of the cluster."                       1"The globally unique identifier for the cluster."                       +"The total number of nodes in the cluster."                       c"A comma-separted list of the logical node numbers
        of the configured nodes in the cluster."                       _"A comma-separted list of the logical node numbers
        of the online nodes in the cluster."                       `"A comma-separted list of the logical node numbers
        of the offline nodes in the cluster."                               +"The cumulative number of bytes into /ifs."                       ="The cumulative throughput rate (bits per second) into /ifs."                       -"The cumulative number of bytes out of /ifs."                       ?"The cumulative throughput rate (bits per second) out of /ifs."                           K"The cumulative input bytes for all external interfaces.
        Obsolete."                       S"The cumulative input rate (bits per second) for
         all external interfaces."                       L"The cumulative output bytes for all external interfaces.
        Obsolete."                       T"The cumulative output rate (bits per second) for
         all external interfaces."                           v"Average amount of CPU time (per mil) used by user processes 
        averaged for all nodes over the last 5 seconds."                       v"Average amount of CPU time (per mil) used by nice processes 
        averaged for all nodes over the last 5 seconds."                       x"Average amount of CPU time (per mil) used by system processes 
        averaged for all nodes over the last 5 seconds."                       r"Average amount of CPU time (per mil) used by interrupts 
        averaged for all nodes over the last 5 seconds."                       z"Average amount of idle CPU time (per mil) averaged for all nodes
        averaged for all nodes over the last 5 seconds."                           ="The total cluster capacity of the /ifs filesystem in bytes."                       2"The number of bytes used in the /ifs filesystem."                       ?"The number of bytes available for use in the /ifs filesystem."                       W"The number of bytes free in the /ifs filesystem (includes
        Virtual Hot Spare)."                       F"Indicates if access time tracking is enabled on the /ifs filesystem."                       g"Tthe minimum amount of time (in milliseconds) 
         between updates to a file's last access time."                           3"Licensing information for OneFS software modules."                       %"A software module's license status."                       /"Index of a row in the licensed modules table."                       $"The name of the licensable module."                       u"The status of the license. It may be licensed, unlicensed 
        (inactive or expired), or an evaluation license."                       H"The UNIX epoch time that the license expires. 0 denotes no expiration."                           8"A table of specific directory, user, and group quotas."                       
"A quota."                       &"The unique identifier for the quota."                       "The type of quota."                       f"The user or group ID governed by this quota, if this is a 
        user or group quota; otherwise 0."                       R"Indicates whether or not snapshot usage is included
         in the quota usage."                       ""The path governed by this quota."                       :"Indicates if a hard threshold is enforced for the quota."                       "The hard threshold in bytes."                       :"Indicates if a soft threshold is enforced for the quota."                       "The soft threshold in bytes."                       ?"Indicates if an advisory threshold is enforced for the quota."                       ""The advisory threshold in bytes."                       �"The grace period for the soft threshold. If the soft threshold
        is exceeded for this time period, write access will be denied."                       #"The current quota usage in bytes."                       B"The current quota usage in bytes including FlexProtect overhead."                       D"The number of inodes (directories and files) covered by the quota."                       ;"Indicates if the quota includes data protection overhead."                               T"Indicates if the scheduled (automatic) creation of snapshots
        should occur."                       P"Indicates if scheduled (automatic) deletion of snapshots
        should occur."                       �"The percent of storage space reserved for snapshots. The value
        report is a percentage of total cluster storage capacity."                       N"Indicates if the /ifs/.snapshot directory is visible
        to NFS clients."                       Q"Indicates if the /ifs/.snapshot directory is accessible
        to NFS clients."                       b"Indicates if .snapshot directories in subdirectories of /ifs are
        visible to NFS clients."                       O"Indicates if the /ifs/.snapshot directory is visible
        to CIFS clients."                       R"Indicates if the /ifs/.snapshot directory is accessible
        to CIFS clients."                       c"Indicates if .snapshot directories in subdirectories of /ifs are
        visible to CIFS clients."                       b"Indicates if .snapshot directories in subdirectories of /ifs are
        visible to local users."                       N"Indicates if the /ifs/.snapshot directory is visible
        to local users."                       Q"Indicates if the /ifs/.snapshot directory is accessible
        to local users."                        "A table of snapshot schedules."                       "A snapshot schedule."                       0"The unique identifier for a snapshot schedule."                       "The name of the schedule."                       2"The alias for snapshots created by the schedule."                       ;"The naming pattern for snapshots created by the schedule."                       Y"The date, time, and frequency that snapshots
         will be created by this schedule."                       D"Description of when snapshots created by the schedule will expire."                       A"The paths that snapshots will be created from for the schedule."                       "A table of snapshots."                       "A snapshot."                       ("The unique identifier of the snapshot."                       "The name of the snapshot."                       8"The UNIX epoch time at which the snapshot was created."                       ;"The UNIX epoch time that the snapshot expires in seconds."                       @"The amount of storage space consumed by the snapshot in bytes."                       #"The path covered by the snapshot."                       %"An alternate name for the snapshot."                       &"Indicates if the snapshot is locked."                               "The hostname of the node."                       !"The overall health of the node."                       "The general type of the node."                       +"Indicates if this node in read-only mode."                        "The serial number of the node."                               2"The number of bytes into /ifs through this node."                       E"The throughput rate (bytes per second) into /ifs through this node."                       4"The number of bytes out of /ifs through this node."                       G"The throughput rate (bytes per second) out of /ifs through this node."                           D"Total bytes into the node's external interfaces.
        Obsolete."                       V"The total input rate (bits per second) into the 
        node's external interfaces."                       F"Total bytes out of the node's external interfaces.
        Obsolete."                       W"The total output rate (bits per second) from the 
        node's external interfaces."                           h"Average amount of CPU (per mil) used by user processes
        within the last 5 seconds for all CPUs."                       h"Average amount of CPU (per mil) used by nice processes
        within the last 5 seconds for all CPUs."                       j"Average amount of CPU (per mil) used by system processes
        within the last 5 seconds for all CPUs."                       d"Average amount of CPU (per mil) used by interrupts
        within the last 5 seconds for all CPUs."                       h"Average amount of CPU (per mil) used by idle processes
        within the last 5 seconds for all CPUs."                       "Per CPU usage metrics."                       /"CPU usage metrics for one CPU/core.
         "                       _"Amount of CPU (per mil) used by user processes
        within the last 5 seconds for the CPU."                       _"Amount of CPU (per mil) used by nice processes
        within the last 5 seconds for the CPU."                       a"Amount of CPU (per mil) used by system processes
        within the last 5 seconds for the CPU."                       ["Amount of CPU (per mil) used by interrupts
        within the last 5 seconds for the CPU."                       _"Amount of CPU (per mil) used by idle processes
        within the last 5 seconds for the CPU."                       "ID of the CPU."                       2"Per-protocol performance metrics and statistics."                       �"Basic protocol performance metrics and statistics.
         Each row represents a protocol. The procotols
         are: SMB1, SMB2, FTP, HTTP, NFS3, NFS4, NLM, SYNCIQ.
         "                       "The name of the protocol."                       <"The total number of operations for the protocol.
         "                       <"The number of operations per second for the last 5 second."                       F"The smallest input size in bytes of all operations for the protocol."                       E"The largest input size in bytes of all operations for the protocol."                       F"The average input size in bytes for all operations for the protocol."                       Y"The standard deviation input size in bytes
        for all operations for the protocol."                       4"The input rate (bits per second) for the protocol."                       G"The smallest output size in bytes of all operations for the protocol."                       F"The largest output size in bytes of all operations for the protocol."                       F"The average output size in bytes of all operations for the protocol."                       ["The standard deviation output size in bytes 
        for all operations for the protocol."                       P"The output rate (bits per second)
        for all operations for the protocol."                       R"The minimum latency in microseconds
        for all operations for the protocol."                       R"The maximum latency in microseconds
        for all operations for the protocol."                       R"The average latency in microseconds
        for all operations for the protocol."                       ]"The latency standard deviation in microseconds
        for all operations for the protocol."                       *"Disk performance metrics and statistics."                       b"Performance metrics and statistics for a disk.
         Each row in the table represents a disk."                       !"The bay that contains the disk."                       f"The device name for this disk. This value
        correspond to the diskBay column in the diskTable."                       +"The number of disk operations per second."                       2"The input rate (bits per second) into this disk."                       3"The output rate (bits per second) from this disk."                       +"A list of chassis that comprise the node."                       "A node chassis."                       "A logical chassis number."                       #"The chassis configuration number."                       "The chassis serial number."                       "The chassis model name."                       �"Indicates if the unit ID light on the chassis is lighted.
         This is the blue service light on the back of the chassis.
         A value of NA indicates that no Unit ID LED exists 
         on the chassis.
         "                       c"A list of disk state and properties for all disk in the node
        including expansion chassis."                       	"A disk."                       !"The bay that contains the disk."                       )"The disk logical identification number."                       &"The chassis which contains the disk."                        "The device name for this disk."                      2"The operational status of the disk.
        Gone drives are considered not part of /ifs.
        Commonly returned values include (but not limited to):
        HEALTHY - Drive is healthy
        L3 - Drive is being used for L3 caching
        DEAD - Drive is dead
        SMARTFAIL - Drive is smartfailed"                       -"The manufacture and model name of the disk."                        "The serial number of the disk."                       -"The firmware version installed on the disk."                        "The size of the disk in bytes."                       :"A table of fans in the node including expansion chassis."                       "A fan."                       }"The unique identifer of the fan on this node.
        Note: Numbers may correspond to different fans on different hardware."                       "The name of the fan."                       "The description of the fan."                       9"The current speed of the fan in revolutions per minute."                       D"A list of thermal sensors in the node including expansion chassis."                       "A thermometer."                       3"The unique identifier of the sensor on this node."                       %"The name of the temperature sensor."                       ("Description of the temperature sensor."                       C"The cuurent reading of the temperature sensor in degrees celsius."                       \"A list of all voltage and current sensors in the node
        including expansion chassis."                       "A power sensor."                       3"The unique identifier of the sensor on this node."                       "The name of the sensor."                        "The description of the sensor."                       5"The current reading of the sensor in volts or amps."                                       ="A collection of objects that cover the status of a cluster."                     A"A collection of objects that cover the cluster IFS performance."                 E"A collection of objects that cover the cluster network performance."                 9"A collection of objects that cover the CPU performance."                 8"A collection of objects that cover the IFS filesystem."                 -"A collection of object that cover licenses."                 ,"A collection of objects that cover quotas."                     8"A collection of objects that covers snapshot settings."                 8"A collection of objects that cover snapshot schedules."                 4"A collection of objects that covers the snapshots."                     1"A collection of objects that cover node status."                     :"A collection of objects that cover node IFS performance."                 >"A collection of objects that cover node network performance."                 :"A collection of objects that cover node CPU performance."                 :"A collection of objects that cover protocol performance."                 6"A collection of objects that cover disk performance."                 9"A collection of objects that cover chassis information."                 6"A collection of objects that cover disk information."                 5"A collection of objects that cover fan information."                 D"A collection of objects that cover temperature sensor information."                 >"A collection of objects that cover power sensor information."                 ,"The compliance statement for Isilon OneFS."                  