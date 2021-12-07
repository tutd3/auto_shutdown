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




#if success running can be check to log here the log example <br />
!!! <br />
#:/var/log/log_auto_shutdown# cat auto_shutdown.sh202112070736.log <br />
====================================================== <br />

Running Script /opt/auto_shutdown/auto_shutdown.sh <br />
Date: 202112070736 <br />
Host: ip-172-31-0-31 <br />

====================================================== <br />
Shutdown scheduled for Tue 2021-12-07 15:36:36 UTC, use 'shutdown -c' to cancel. <br />

!! or can be check 
ps -ef | grep shutdown

