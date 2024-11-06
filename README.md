I have tested the script on cisco IOS-XRv 9000.

To make .tcl works you need to follow this pre-requisites:
1. Copy .tcl files to harddisk (for my case i upload it to harddisk:/showtech)
2. Configure create usename eem 
3. Configure event-manager & aaa
4. Turn on ter mon
5. Try shutdown the interface, you will get prompted user eem will doing a commit changes instantly
6. Verify by "show ip interface br" or "show interface description" check for Gi0/0/0/5.

Iam attached username eem, event manager, & aaa script as well.
