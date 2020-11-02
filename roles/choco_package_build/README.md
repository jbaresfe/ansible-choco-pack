Choco Package Build
=========

Role to build Chocolatey packages

Requirements
------------
See collection main Readme

Role Variables
--------------
Variable | Decription
------------ | -------------
init_choco_internal_repository | internal chocolatey repository
choco_package_build_package_name | Name of the package to build
choco_package_build_metadata* | dictionary of dictionaries containing metadata definition of packages
init_choco_source_username | username of internal repository service account
init_choco_source_password | password of internal repository service account
init_choco_api_key | api key of internal repository service account

* choco_package_build_metadata 
Example 
```
  dotnet:
    repo_type: internal
    repo_url: https://jfrog.io/artifactory/example-repo-local/dotnet.exe
    package_type: generic_setup
    version: 1.0.0
    package_executable: dotnet.exe
    choco_dependencies:
      java-jre: 1.8
```
Variable | Decription
------------ | -------------
repo_type | internal or public
repo_url  | repository url which contains sources of the package
package_type | generic_setup
choco_dependencies | dictionary containing dependencies

Dependencies
------------
* Role init_choco

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - ../roles/choco_package_build

License
-------

BSD

Author Information
------------------
Javier Bares - jbaresfe@redhat.com