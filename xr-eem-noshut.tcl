::cisco::eem::event_register_syslog pattern {Interface GigabitEthernet0/0/0/5, changed state to Administratively Down}

#
# This EEM tcl policy was designed by satr.io
# using the following applet:
#
# event manager applet RELOAD-LC
# event syslog pattern "Interface GigabitEthernet0/0/0/5, changed state to Administratively Down"
# action 1 cli command "config" 
# action 2 cli command "interface GigabitEthernet0/0/0/5" 
# action 3 cli command "no shut" 
# action 4 cli command "root"
# action 5 cli command "commit"
# 
# 
# 
# 
# 
# 
# 
#

namespace import ::cisco::eem::*
namespace import ::cisco::lib::*

array set arr_einfo [event_reqinfo]


if [catch {cli_open} result] {
    error $result $errorInfo
} else {
    array set cli1 $result
}

if [catch {cli_exec $cli1(fd) "config"} _cli_result] {
    error $_cli_result $errorInfo
}

if [catch {cli_exec $cli1(fd) "interface GigabitEthernet0/0/0/5"} _cli_result] {
    error $_cli_result $errorInfo
}

if [catch {cli_exec $cli1(fd) "no shut"} _cli_result] {
    error $_cli_result $errorInfo
}

if [catch {cli_exec $cli1(fd) "root"} _cli_result] {
    error $_cli_result $errorInfo
}

if [catch {cli_exec $cli1(fd) "commit"} _cli_result] {
    error $_cli_result $errorInfo
}


# Close open cli before exit.
catch {cli_close $cli1(fd) $cli1(tty_id)} result