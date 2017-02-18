# MongoDB

## References used to write this doc
- [Install MongoDB Community Edition on Ubuntu](https://docs.mongodb.com/manual/tutorial/install-mongodb-on-ubuntu/<Paste>)
- [How to Install MongoDB on Ubuntu 16.04](https://www.digitalocean.com/community/tutorials/how-to-install-mongodb-on-ubuntu-16-04)

## Setting up MongoDB on Ubuntu

MongoDB: 3.4.2
Ubuntu: 16.04

Import the public key:

```
sudo apt-key adv --keyserver hkp://keyserver.ubuntu.com:80 --recv 0C49F3730359A14518585931BC711F9BA15703C6
```

Create a list file for MongoDB

```sh
sudo touch /etc/apt/sources.list.d/mongodb-org-3.4.list

# Paste this:
echo "deb [ arch=amd64,arm64 ] http://repo.mongodb.org/apt/ubuntu xenial/mongodb-org/3.4 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-3.4.list
```

Reload packages and install MongoDB

```sh
sudo apt-get update
sudo apt-get install -y mongodb-org
```

Create a unit file to run MongoDB as service and lauch it at boot

```sh
sudo nano /etc/systemd/system/mongodb.service

# Paste this:

[Unit]
Description=High-performance, schema-free document-oriented database
After=network.target

[Service]
User=mongodb
ExecStart=/usr/bin/mongod --quiet --config /etc/mongod.conf

[Install]
WantedBy=multi-user.target
```

Start MongoDB

```sh
sudo systemctl start mongodb
```

Check the status of the service

```sh
sudo systemctl status mongodb
```

Automatically starts when system starts

```sh
sudo systemctl enable mongodb
```

## Installing on Fedora 25

Create this file `sudo vim /etc/yum.repos.d/mongodb-org-3.4.repo` and paste this:

```sh
[mongodb-org-3.4]
name=MongoDB Repository
baseurl=https://repo.mongodb.org/yum/redhat/7/mongodb-org/3.4/x86_64/
gpgcheck=1
enabled=1
gpgkey=https://www.mongodb.org/static/pgp/server-3.4.asc
```

Then run `sudo dnf update` and `sudo dnf install -y mongodb-org`
