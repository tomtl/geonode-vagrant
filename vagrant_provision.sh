#!/usr/bin/env bash
echo "Getting Geonode apt-get repo..."
sudo add-apt-repository ppa:geonode/stable

echo "Updating apt-get..."
sudo apt-get update

echo "Installing Geonode..."
sudo apt-get install -y --force-yes geonode --fix-missing
# first time usually fails, but second time works
sudo apt-get install -y --force-yes geonode --fix-missing

echo "****TO DO ITEMS****"
echo "1. Manually run 'geonode createsuperuser'"
echo "2. Manually run 'sudo geonode-updateip localhost:8080'"
echo "Then Geonode should be running at http://localhost:8080/"
# then manually create a super user with the following
# geonode createsuperuser

# then update the ip manually with the following
# sudo geonode-updateip localhost:8080

# if you've used a different port to 8080, you will need to fix at least these
# but this is really hard to get working, so you should stick with the default 8080
# sudo nano /etc/apache2/ports.conf
# sudo nano /etc/apache2/sites-available/geonode.conf
# maybe?: sudo nano /usr/share/geoserver/data/security/auth/geonodeAuthProvider/config.xml

# then Geonode should be running at http://localhost:8080/
