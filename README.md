# auto_shutdown


#create_dir_and_cript
mkdir /opt/opt/auto_shutdown/
chmod 775 /opt/opt/auto_shutdown/
vi /opt/auto_shutdown/auto_shutdown.sh 

mkdir /var/log/log_auto_shutdown
chmod 775 /var/log/log_auto_shutdown

#create_service
!bring the file to systems!
cp  script/shutdown-host.service /etc/systemd/system/
cd /etc/systemd/system/
sudo systemctl daemon-reload
sudo systemctl enable shutdown-host.service

#checking new service is running
ls /etc/systemd/system/multi-user.target.wants/
ps aux | grep shutdown-host

!!if we do not want to wait it until boot we can use this command !!
systemctl start shutdown-host.service
