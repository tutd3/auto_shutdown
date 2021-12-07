# auto_shutdown


#create_dir_and_cript
mkdir /opt/opt/auto_shutdown/ <br />
chmod 775 /opt/opt/auto_shutdown/  <br />
vi /opt/auto_shutdown/auto_shutdown.sh  <br />

mkdir /var/log/log_auto_shutdown  <br />
chmod 775 /var/log/log_auto_shutdown  <br />

#create_service
!bring the file to systems!  <br />
cp  script/shutdown-host.service /etc/systemd/system/  <br />
cd /etc/systemd/system/  <br />
sudo systemctl daemon-reload  <br />
sudo systemctl enable shutdown-host.service  <br />

#checking new service is running
ls /etc/systemd/system/multi-user.target.wants/  <br />
ps aux | grep shutdown-host  <br />

!!if we do not want to wait it until boot we can use this command !!  <br />
systemctl start shutdown-host.service <br />
