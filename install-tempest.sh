#used with Red Hat OSP 9 & 10
yum install openstack-tempest
/usr/share/openstack-tempest-*/tools/install_test_packages.py
mkdir -p ~/mytempest
cd ~/mytempest
#below does not seem to work anymore 
#/usr/share/openstack-tempest*/tools/configure-tempest-directory
#so do this instead
yum install -y python-glance-tests python-keystone-tests python-horizon-tests-tempest python-neutron-tests python-cinder-tests python-nova-tests python-swift-tests python-ceilometer-tests python-gnocchi-tests python-aodh-tests 
. ~/keystonerc_admin
./tools/config_tempest.py --create --debug identity.uri $OS_AUTH_URL \
identity.admin_username $OS_USERNAME identity.admin_password $OS_PASSWORD \
identity.admin_tenant_name $OS_TENANT_NAME object-storage.operator_role Member
python -m tempest.cmd.cleanup --init-saved-state
