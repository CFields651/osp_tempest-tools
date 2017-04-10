# osp_tempest_install
tools for installing tempest.  
tested on Red Hat OpenStack platform 10  
install-tempest.sh - install according to:  
https://access.redhat.com/documentation/en-us/red_hat_openstack_platform/10/html/manual_installation_procedures/chap-openstack_integration_test_suite_installation  
lbaasv2 - folder for tools to install tests for lbaasv2  
  
Note that 'lbaas' and 'lbaasv2' must be in the api_extension list of the [network-feature-enabled] section  
in tempest.conf  
