#! /usr/bin/bash
#Question1
sudo useradd Sam -m -s /usr/bin/bash -g users 
sudo useradd Bob -m -s /usr/bin/bash -g users
sudo useradd James -m -s /usr/bin/bash -g users

#Question2
sudo touch test.txt
sudo setfacl -m u:Sam:r test.txt
sudo setfacl -m u:Bob:w test.txt
sudo setfacl -m u:James:w test.txt


#Question3
wget -qO- https://raw.githubusercontent.com/nvm-sh/nvm/v0.39.0/install.sh | bash
source ~/.bashrc
source ~/.nvm/nvm.sh
nvm --version
nvm install node
nvm install 6.14.4
nvm --version
nvm use 6.14.4
nvm install 12.22.7
nvm use 12.22.7

#question4
sudo apt-get install -y mongodb

#question5
mkdir project

#question6
echo "echo "Hello Arun"" >> .bashrc

#question7
touch log.txt
while true; do
    current_time=$(date "+%Y-%m-%d %H:%M:%S")  
    echo "$current_time" >> "log.txt"  
    sleep 300
done  
#question8
touch arun.sh
echo (5 * * * * * date >> /home/shtlp_0053/arun.sh) >> crontab -e 

#question9
echo "hello arun chauhan" >> tempfile1 

#question10
vi helloworld.txt << EOF
:%s/hello world/hello arun/g
:wq
EOF
#question11
ps -eo pid,etime,args --sort=start_time --no-headers | awk '{split($2, time, ":"); if (time[1] >= 2) print $0}'


#question12
mkdir new

var1=$(pwd)

var=$(find "$var1" -name '*.jpeg' -size +2M)

mv "$var" "$var1/new"

#question13
split -l 500 -d big_file.txt output_file