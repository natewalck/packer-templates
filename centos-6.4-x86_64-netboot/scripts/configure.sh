# set machine hostname to 'munki'
sudo hostname munki
sudo sed -i -e "s/^HOSTNAME=.*/HOSTNAME=munki/" /etc/sysconfig/network

puppet module install natewalck/munki_appliance

git clone https://github.com/stankevich/puppet-python.git /etc/puppet/modules/python