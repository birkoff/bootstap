# Install and configure VIM
echo "Install and Configure VIM"
sudo yum -y install vim
cd /opt
sudo mkdir bootstrap
sudo chown -R ec2-user bootstrap/
cd bootstrap/
wget https://github.com/birkoff/profiles/archive/master.zip
unzip master.zip
cd profiles-master/
cp vimrc ~/.vimrc

# Copy contents of bash_profile
echo "Copy contents of bash_profile"
cat bash_profile >> ~/.bash_profile
source ~/.bash_profile
