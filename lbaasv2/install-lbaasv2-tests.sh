mkdir -p /tmp/myneutron_lbaas_tests
cp -rf /usr/lib/python2.7/site-packages/neutron_lbaas/ /tmp/myneutron_lbaas_tests/neutron_lbaas/

#lbaas needs to be in the api_extensions (as well as lbaasv2 which should already be ther)
cp -f ~/mytempest/etc/tempest.conf /tmp/myneutron_lbaas_tests/
api_extensions=$(crudini --get /tmp/myneutron_lbaas_tests/tempest.conf network-feature-enabled api_extensions)
crudini --set /tmp/myneutron_lbaas_tests/tempest.conf network-feature-enabled api_extensions $api_extensions,lbaas

cp -f run_lbaasv2_tests.sh  /tmp/myneutron_lbaas_tests/
cp -f .testr.conf /tmp/myneutron_lbaas_tests/
chmod +x  /tmp/myneutron_lbaas_tests/run_lbaasv2_tests.sh
