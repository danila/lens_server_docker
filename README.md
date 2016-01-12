# Docker for LensHQ server

## Docker installation
To get started, [check out the installation
instructions in the
documentation](https://docs.docker.com/engine/installation/).

You need to add Docker VM IP into hosts file as dockerhost with following script in order to make app work properly with current configuration.
In Mac OS X:
`echo $(docker-machine ip default) $(echo " dockerhost") | sudo tee -a /etc/hosts`

In Ubuntu:
`echo "127.0.0.1 dockerhost" >> /etc/hosts`

## Running
1. Make setup script executable: `chmod +x docker-setup`
2. Run script: `./docker-setup`
