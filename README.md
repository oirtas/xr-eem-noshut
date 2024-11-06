I have tested the script on Cisco IOS-XRv 9000.

To make .tcl work you need to follow these pre-requisites:
1. Copy .tcl files to harddisk (for my case I upload it to harddisk:/showtech)
2. Configure a local user: usename eem 
3. Configure event-manager & aaa
4. Turn on ter mon
5. Try shutdown the interface, you will get prompted by user eem and will do a commit change instantly
6. Verify by "show ip interface br" or "show interface description" check for Gi0/0/0/5.

I have attached the prereq script as well.
