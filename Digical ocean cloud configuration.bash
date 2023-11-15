###Script ini digunakan untuk mengaktifasi cloud computer pada server Digital Ocean dan menginstall OS Ubuntu 
#Note: Script ini digunakan setelah melakukan purchasing server dan melakukan aktivasi droplet
#Material: Dari digital ocean akan diperoleh IP adress (misal 111.01.01.111.111) dan password utama (misal 1234)
#-----------------by Indriatmoko 02/04/2022---------------------#

#Pada terminal lakukan login pada cloud server menggunakan ssh

ssh root@111.01.01.111.111

#Pada tahap ini sudah login di cloud digital ocean
 
#membuat user baru

adduser <Nama_User>
usermod -aG sudo <Nama_User>

#pada bagian ini akan diminta input password baru untuk user 

####Setelah user baru terbuat masih dalam terminal lakukan konfigurasi berikut

## Install Ubuntu desktop

sudo apt update
sudo apt install ubuntu-desktop

##Install XRDP
sudo apt install xrdp
sudo systemctl status xrdp
sudo adduser xrdp ssl-cert
sudo systemctl restart xrdp

#konfigurasi firewall
sudo ufw allow from 111.01.01.111.111to any port 3389
sudo ufw allow 3389


###Cloud computer pada server Digital Ocean yang terinstall ubuntu sudah siap digunakan!!!


## pada windows buka remote desktop lalu isikan ip adress 111.01.01.111.111 dan klik connect/yes
## akan muncul laman login xrdp isikan session xorg lakukan input username dan password yang sudah dibuat
## Voila!! akan muncul layar desktop cloud computer yang siap digunakan.