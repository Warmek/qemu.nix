# NixOS config for windows 11 virtualization
This config aims to allow you to create and manage virtual machines on NixOS, windows 11 in particular.
# Instructions
- Add this file as a module to your NixOS config
- Use virt manager to create a windows 11 vm
- Check "Customize configuration before install" box (see image below)
- In hardware tab you should have TPM module as the last entry on the list. Go to it and set options: (Type: Emulated, Model: CRB, Version: 2.0)
- Apply and install follow the install
  
![image](https://access.redhat.com/webassets/avalon/d/Red_Hat_Enterprise_Linux-6-Virtualization_Host_Configuration_and_Guest_Installation_Guide-en-US/images/079dc34c2b2c4dd9a4e7dbc930408b85/Screenshot-sevenpt1-pic9-local-storage.png)
