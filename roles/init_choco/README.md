Init Choco
=========

Role to initialize chocolatey

Requirements
------------
See collection main Readme

Role Variables
--------------
Variable | Decription
------------ | -------------
init_choco_internal_repository | internal chocolatey repository
init_choco_source_username | username of internal repository service account
init_choco_source_password | password of internal repository service account
init_choco_api_key | api key of internal repository service account

Dependencies
------------
* Role init_choco

Example Playbook
----------------

Including an example of how to use your role (for instance, with variables passed in as parameters) is always nice for users too:

    - hosts: servers
      roles:
         - ../roles/init_choco

License
-------

BSD

Author Information
------------------
Javier Bares - jbaresfe@redhat.com