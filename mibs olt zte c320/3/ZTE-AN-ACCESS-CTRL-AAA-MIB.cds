    �"This is the priority order of an authentication method to be used 
             in user authentication for a session. At start up, the agent 
             assigns the value of this object. Later this can be changed by the 
             management station. This object reflects the relative priority of 
             the authentication method denoted by zxAnAaaAuthenLocalPriority and
             zxAnAaaAuthenTacacsplusPriority with respect to already configured 
             authentication methods. 
             
             The zero value indicates that the priority is not set and that the 
             authentication methods are applied in ascending order. Each object 
             must contain a unique value for priority or zero. In the case when 
             a priority is set for a value that is already used by existing 
             object the existing object's priority will be swapped."              �"This is the priority order of an authorization method to be used 
             in user authorization for a session. At start up, the agent 
             assigns the value of this object. Later this can be changed by the 
             management station. This object reflects the relative priority of 
             the authorization method denoted by zxAnAaaAuthorLocalPriority and
             zxAnAaaAuthorTacacsplusPriority with respect to already configured 
             authorization methods. 
             
             The zero value indicates that the priority is not set and that the 
             authorization methods are applied in ascending order. Each object 
             must contain a unique value for priority or zero. In the case when 
             a priority is set for a value that is already used by existing 
             object the existing object's priority will be swapped."                                                             T"This MIB defines managed objects of ZTE AAA 
                         management." d"ZTE shanghai software development dept.III 
                         Zhang Jianjun  021-68897226 " "201211071000Z" %"Initial version of this MIB module."                       +"The local authentication method priority."                       -"The TACACS+ authentication method priority."                      A"Enable or disable the no authentication method.
             enabled(1)  - Use no authentication as the last method.
             disabled(2) - Don't use no authentication method.

             This object must be set with zxAnAaaAuthenLocalPriority, 
             zxAnAaaAuthenTacacsplusPriority at the same time."                      �"The tacacs plus authentication group name.
             
             If zxAnAaaAuthenTacacsplusPriority is zero(0), 
             zxAnAaaAuthenTacacsplusGroupName should be empty string.
             If the value of zxAnAaaAuthenTacacsplusPriority is not zero(0),
             zxAnAaaAuthenTacacsplusGroupName must be set with 
             zxAnAaaAuthenTacacsplusPriority at the same time."                           "Authentication session table."                       %"Authentication session table entry."                       �"This is the session type used to connect to the device.
            
             telnet(1) indicates telnet session.
             ssh(2) indicates SSH session."                      �"This is the authentication method used to authenticate users.
            
             local(1) indicates that local password is used for authentication. 
             Which password is used depend on what login mode users specified. 
             tacacsPlus(2) indicates that TACACS+ method is used for 
             authentication.
             radius(3) indicates that RADIUS method is used for authentication."                       �"The RADIUS group ID. 
             When zxAnAaaAuthenMethod is radius(3), this object must be set at
             the same time.
             
             Value 0 means RADIUS group ID is not configured."                      A"The status of this conceptual row.
            
            The supported actions of this conceptual row only include:
            'createAndGo' and 'destroy'.

            To create a row in this table, a manager must set this object to 
            createAndGo(4), and must comply with the multi-variables binding 
            rule described in zxAnAaaAuthenSessionEntry.
    
            To delete a row in this table, a manager must set this object to 
            destroy(6). 
             
            To get this object, the agent always returns active(1)."                           ""Login mode authentication table." "Used by MAP."                     ("Login mode authentication table entry."                       �"This is the login mode user used to login to the network device.
 
             login(1) indicates the normal mode.
             enable(2) indicates the privileged mode."                       +"The local authentication method priority."                       -"The TACACS+ authentication method priority."                       �"Enable or disable the none authentication method.
             enabled(1)  - Use none authentication as the last method.
             disabled(2) - Don't use none authentication method."                      �"The TACACS+ authentication group name. 
            
             If zxAnAaaAuthenLoginTacacsplusPri is zero(0), 
             zxAnAaaAuthenLoginTacplusGrpName should be empty string.
             If the value of zxAnAaaAuthenLoginTacacsplusPri is not zero(0),
             zxAnAaaAuthenLoginTacplusGrpName must be set with 
             zxAnAaaAuthenLoginTacacsplusPri at the same time."                      ?"The status of this conceptual row.
            
            The supported actions of this conceptual row only include:
            'createAndGo' and 'destroy'.

            To create a row in this table, a manager must set this object to 
            createAndGo(4), and must comply with the multi-variables binding 
            rule described in zxAnAaaAuthenLoginEntry.
    
            To delete a row in this table, a manager must set this object to 
            destroy(6). 
             
            To get this object, the agent always returns active(1)."                               *"The local authorization method priority."                       ,"The TACACS+ authorization method priority."                      L"Enable or disable the authorization method.
             enabled(1)  - Use none authorization as the last method.
             disabled(2) - Don't use none authorization method.
             
             This object must be set with zxAnAaaAuthorLocalPriority, 
             zxAnAaaAuthorTacacsplusPriority at the same time."                      �"The name of TACACS+ authorization group name. 
            
             If zxAnAaaAuthorTacacsplusPriority is zero(0), 
             zxAnAaaAuthorTacacsplusGroupName should be empty string.
             If the value of zxAnAaaAuthorTacacsplusPriority is not zero(0),
             zxAnAaaAuthorTacacsplusGroupName must be set with 
             zxAnAaaAuthorTacacsplusPriority at the same time."                           "Authorization session table."                       $"Authorization session table entry."                       �"This is the session type used to connect to the device.
            
             telnet(1) indicates telnet session.
             ssh(2) indicates SSH session."                      O"This is the authorization method used to authorize users.
            
             local(1) indicates that local password is used for authorization. 
             Which password is used depend on what login mode users specified. 
             tacacsPlus(2) indicates that TACACS+ method is used for 
             authorization."                       \"This object is used to control authorization mode when user login 
             from SSH."                      B"The status of this conceptual row.
            
            The supported actions of this conceptual row only include:
            'createAndGo' and 'destroy'.

            To create a row in this table, a manager must set this object to 
            createAndGo(4), and must comply with the multi-variables binding 
            rule described in zxAnAaaAuthorSessionEntry.
    
            To delete a row in this table, a manager must set this object to 
            destroy(6). 
             
            To get this object, the agent always returns active(1). "                               "Accounting privilege table."                       #"Accounting privilege table entry."                       "User privilege level."                       "The TACACS+ group name."                      A"The status of this conceptual row.
            
            The supported actions of this conceptual row only include:
            'createAndGo' and 'destroy'.

            To create a row in this table, a manager must set this object to
            createAndGo(4), and must comply with the multi-variables binding
            rule described in zxAnAaaAccountPrivilegeEntry.
    
            To delete a row in this table, a manager must set this object to
            destroy(6). 
             
            To get this object, the agent always returns active(1)."                      