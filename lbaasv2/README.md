# neutron-lbaas  
These instructions presume that python-neutron-lbaas-tests rpm is installed and that tempest is working per the instructions in the parent directory.  

#installation script  
install-lbaasv2-tests.sh #installation script  

#If you run this on a reference OSP director deployment:   
./run_lbaasv2_tests.sh neutron_lbaas.tests.tempest.v2.api  

You should get something like this:   

Totals  
Ran: 251 tests in 1797.0000 sec.  
 - Passed: 248  
 - Skipped: 3  
 - Expected Fail: 0  
 - Unexpected Success: 0  
 - Failed: 0  

These test were run with these version levels:  

rpm -qa | grep lbaas  
python-neutron-lbaas-9.1.0-4.el7ost.noarch  
python-neutron-lbaas-tests-9.1.0-4.el7ost.noarch  
openstack-neutron-lbaas-9.1.0-4.el7ost.noarch  

