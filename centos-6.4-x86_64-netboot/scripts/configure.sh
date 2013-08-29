# set machine hostname to 'munki'
sudo hostname munki
sudo sed -i -e "s/^HOSTNAME=.*/HOSTNAME=munki/" /etc/sysconfig/network

sudo puppet module install natewalck/munki_appliance

sudo git clone https://github.com/stankevich/puppet-python.git /etc/puppet/modules/python

sudo puppet apply -e "include munki_appliance"