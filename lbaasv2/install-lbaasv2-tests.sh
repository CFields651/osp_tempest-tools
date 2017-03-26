mkdir /tmp/myneutron_lbaas_tests
cp -r  /usr/lib/python2.7/site-packages/neutron_lbaas/ /tmp/myneutron_lbaas_tests/neutron_lbaas/
cp ~/mytempest/etc/tempest.conf /tmp/myneutron_lbaas_tests/
cp run_lbaasv2_tests.sh  /tmp/myneutron_lbaas_tests/
cp .testr.conf /tmp/myneutron_lbaas_tests/
chmod +x  /tmp/myneutron_lbaas_tests/run_lbaasv2_tests.sh
