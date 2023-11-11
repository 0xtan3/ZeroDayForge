**What is SMB:**

The Server Message Block protocol (SMB protocol) is a [client-server](https://www.techtarget.com/searchwindowsserver/definition/client-server-network) communication [protocol](https://www.techtarget.com/searchnetworking/definition/protocol) used for sharing access to files, printers, serial ports and other resources on a [network](https://www.techtarget.com/searchnetworking/definition/network). It can also carry transaction protocols for inter process communication. Over the years, SMB has been used primarily to connect Windows computers, although most other systems -- such as Linux and mac OS -- also include client components for connecting to SMB resources.

-  Hacking with metasploit framework
- **smbclient** attempts to connect to the fileshare with anonymous access
	-  usage : smbclient -L ////<victim's_ip>//

**Issues:**

- Protocol negotiation failed: NT_STATUS_IO_TIMEOUT

**Resolution:**

Resolution:- On Kali, edit /etc/samba/smb.conf

- Add the following under global:

- client min protocol = CORE

- client max protocol = SMB3
