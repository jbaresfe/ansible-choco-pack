# Ansible Collection - jbaresfe.ansible_choco_pack

Documentation for the collection.

## Description
This collection contains following playbooks to build and install chocolatey packages on Windows hosts:
* choco_package_build.yml
* choco_package_install.yml
* init_choco.yml

## Requirements
* Ansible can generally manage Windows versions under current and extended support from Microsoft. Ansible can manage desktop OSs including Windows 7, 8.1, and 10, and server OSs including Windows Server 2008, 2008 R2, 2012, 2012 R2, 2016, and 2019.

* Ansible requires PowerShell 3.0 or newer and at least .NET 4.0 to be installed on the Windows host.

* A WinRM listener should be created and activated. More details for this can be found below.

* Ensure that the user is a member of the local Administrators group or has been explicitly granted access

Make sure that the authentication option set by ansible_winrm_transport is enabled under Service\Auth\*

## References
* https://docs.ansible.com/ansible/latest/user_guide/windows_setup.html
* https://github.com/ansible/ansible/blob/devel/examples/scripts/ConfigureRemotingForAnsible.ps1
* https://github.com/redhat-cop/automate-windows/tree/master/windows-certificates
* https://galaxy.ansible.com/chocolatey/chocolatey
* https://github.com/jborean93/ansible-windows/tree/master/vagrant