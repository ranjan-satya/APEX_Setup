# Oracle APEX and ORDS Installation Guide 🚀
## Overview
This guide provides a comprehensive, step-by-step process for setting up Oracle APEX and ORDS using Docker containers, creating a robust development environment for Oracle APEX applications.

> ### NOTE:
> The above files and directories in this repo are just for reference to check how your file structure should look like before you start running both the containers in the final step
>   
> APEX_Setup/  
> ├── db_backup.py  
> ├── db_restore.py    
> ├── apex/  
> │   └── ...  
> ├── *db_backup/  
> │   └── ...  
> ├── META-INF/  
> │   └── ...  
> ├── ords_config/   
> │   └── databases     
> │   |   └── default  
> │   |       ├── pool.xml  
> │   |       └── wallet  
> │   |           └── cwallet.sso  
> │   └── global     
> │       └── settings.xml
>   
> \* : optional


## Prerequisites
- Docker installed
- Oracle Container Registry account
- Basic understanding of Docker and Oracle database concepts
## Installation Steps if doing it freshly for the 1st time
### 1. Downloading APEX zip file from the official website.
`curl -o apex.zip https://download.oracle.com/otn_software/apex/apex_24.2.zip`
### 2. Unzip apex.zip to the current directory
`unzip apex.zip`
### 3. Create directories named  ords_config
`mkdir oracle ords_config`
### 4. Set Permissions for apex and ords_config directories
`chmod -R 775 apex`  
`chmod -R 775 ords_config`
### 5. Login to Oracle Container Registry (Assumption: Oracle Container Registry account is created and auth token is created)
`docker login container-registry.oracle.com`
  
> -  give the SSO username  
> -  give the Auth token
  
### 6.  Create a docker network with the name oracle_network
`docker network create oracle_network`

### 7.  Create a docker volume with the name oracle
`docker volume create oracle`

### 8. Run Oracle Database Container
`docker run -d \`  
`--name oracle \`  
`-p 32122:1521 \`  
`-e TZ=Asia/Kolkata \`  
`-e ORACLE_SID=ORCLCDB \`  
`--network oracle_network \`  
`-v oracle:/opt/oracle/oradata \`  
`-v $(pwd)/apex:/tmp/apex \`  
`container-registry.oracle.com/database/enterprise:21.3.0.0`  
### 9. Configure APEX in Database Container
#### 9.1 Access Container using bash
`docker exec -it oracle bash`  
#### 9.2 Change the current directory to where apex directory is mounted (/tmp/apex)  
`cd /tmp/apex`  
#### 9.3 Change the password of the database for the sys user to "oracle" (you can use the password of your choice, but remember to be consistent with it throughout the process)
`/opt/oracle/setPassword.sh oracle`  
#### 9.4 Interact with the database using sqlplus  
`sqlplus / as sysdba`  
#### 9.5 SQL Commands for APEX Configuration (in the SQL Environment)
`create pluggable database orclpdb242 admin user pdb_adm identified by Oradoc_db1`  
`file_name_convert=('/opt/oracle/oradata/ORCLCDB/pdbseed/','/opt/oracle/oradata/ORCLCDB/ORCLPDB242');`  
  
`alter pluggable database orclpdb242 open read write;`  
`alter pluggable database all save state;`  
`alter session set container = ORCLPDB242;`  
  
`@apexins.sql SYSAUX SYSAUX TEMP /i/`  
`@apxchpwd.sql`  
> -   ADMIN  (administrators username)  
> -  youremailaddress@email.com  (admin's email address)  
> -  Oradoc_db1  (admin's password, will be neeeded while logging to the APEX interal workspace)

`@apex_rest_config.sql`    
> - oracle  (password for APEX_LISTENER user)  
> - oracle  (password for APEX_REST_PUBLIC_USER user)  

`alter user APEX_PUBLIC_USER identified by oracle account unlock;`  
### 10. Running the ORDS container to configure ORDS and install ords in the pluggable database
`docker run -it --rm \`  
`--name ords_node1 \`  
`--network oracle_network  \`  
`-p 8080:8080   \`  
`-v $(pwd)/ords_config:/etc/ords/config   \`  
`-v $(pwd)/apex/images/:/opt/oracle/apex/images   \`  
`container-registry.oracle.com/database/ords:24.4.0   \`  
`--config /etc/ords/config \`  
`install`  
> - 1  (basic connection)
> - oracle  (hostname)
> - 1521  (port number)
> - ORCLPDB242  (service name)
> - sys (database username with admin privileges)
> - oracle  (password for sys user)
> - A  (accept the configurations) 

### 11. Configure APEX Images Path
`docker run -it --rm \`  
`--name ords_node1 \`  
`--network oracle_network  \`  
`-p 8080:8080   \`  
`-v $(pwd)/ords_config:/etc/ords/config   \`  
`-v $(pwd)/apex/images/:/opt/oracle/apex/images   \`  
`container-registry.oracle.com/database/ords:24.4.0   \`  
`--config /etc/ords/config \`  
`config set standalone.static.path /opt/oracle/apex/images`  
### 12. Start ORDS Container
`docker run -it \`  
`--name ords_node1 \`  
`--network oracle_network  \`  
`-p 8080:8080   \`  
`-v $(pwd)/ords_config:/etc/ords/config   \`  
`-v $(pwd)/apex/images/:/opt/oracle/apex/images   \`  
`container-registry.oracle.com/database/ords:24.4.0   \`  
`--config /etc/ords/config \`  
`serve`  
### 13. Access APEX
#### 🌐 Access URL: `http://localhost:8080/ords`  
##### Click on the `GO` button in the APEX card and login to the internal workspace  
Workspace: internal  
Username: ADMIN  
Password: Oradoc_db1 (password set during APEX configuration)  

## Backing up the volume to migrate the data and configurations of the database

### 1. Stop the running containers
`docker stop oracle`  
`docker stop ords_node1`

### 2. Backup the data and the configurations of the database and store it in a compressed file
`python3 db_backup.py`

##### Backup file will be created in the `db_backup` directory which in turn will be created in the `pwd`. You can copy the file to your desired location for e.g. some remote server using `scp` command.

## Installation steps if using the backup file
### 1. Downloading APEX zip file from the official website.
`curl -o apex.zip https://download.oracle.com/otn_software/apex/apex_24.2.zip`
### 2. Unzip apex.zip to the current directory
`unzip apex.zip`
### 3. Create directories named  ords_config
`mkdir oracle ords_config`
### 4. Set Permissions for apex and ords_config directories
`chmod -R 775 apex`  
`chmod -R 775 ords_config`
### 5. Login to Oracle Container Registry (Assumption: Oracle Container Registry account is created and auth token is created)
`docker login container-registry.oracle.com`
  
> -  give the SSO username  
> -  give the Auth token
  
### 6.  Create a docker network with the name oracle_network
`docker network create oracle_network`

### 7.  Create a docker volume with the name oracle
`docker volume create oracle`

### 8.  Get the backup data into the docker volume
> NOTE:
> Get the name of the desired backup file
> `ls ./db_backup`  

`python3 db_restore.py <backup-file.tar.gz>`

### 9. Run Oracle Database Container
`docker run -d \`  
`--name oracle \`  
`-p 32122:1521 \`  
`-e TZ=Asia/Kolkata \`  
`-e ORACLE_SID=ORCLCDB \`  
`--network oracle_network \`  
`-v oracle:/opt/oracle/oradata \`  
`-v $(pwd)/apex:/tmp/apex \`  
`container-registry.oracle.com/database/enterprise:21.3.0.0`  

### 10. Running the ORDS container to configure ORDS and install ords in the pluggable database
`docker run -it --rm \`  
`--name ords_node1 \`  
`--network oracle_network  \`  
`-p 8080:8080   \`  
`-v $(pwd)/ords_config:/etc/ords/config   \`  
`-v $(pwd)/apex/images/:/opt/oracle/apex/images   \`  
`container-registry.oracle.com/database/ords:24.4.0   \`  
`--config /etc/ords/config \`  
`install`  
> - 1  (basic connection)
> - oracle  (hostname)
> - 1521  (port number)
> - ORCLPDB242  (service name)
> - sys (database username with admin privileges)
> - oracle  (password for sys user)
> - A  (accept the configurations) 

### 11. Configure APEX Images Path
`docker run -it --rm \`  
`--name ords_node1 \`  
`--network oracle_network  \`  
`-p 8080:8080   \`  
`-v $(pwd)/ords_config:/etc/ords/config   \`  
`-v $(pwd)/apex/images/:/opt/oracle/apex/images   \`  
`container-registry.oracle.com/database/ords:24.4.0   \`  
`--config /etc/ords/config \`  
`config set standalone.static.path /opt/oracle/apex/images`  
### 12. Start ORDS Container
`docker run -it \`  
`--name ords_node1 \`  
`--network oracle_network  \`  
`-p 8080:8080   \`  
`-v $(pwd)/ords_config:/etc/ords/config   \`  
`-v $(pwd)/apex/images/:/opt/oracle/apex/images   \`  
`container-registry.oracle.com/database/ords:24.4.0   \`  
`--config /etc/ords/config \`  
`serve`  
### 13. Access APEX
#### 🌐 Access URL: `http://localhost:8080/ords`  
##### Click on the `GO` button in the APEX card and login to the internal workspace  
Workspace: internal  
Username: ADMIN  
Password: Oradoc_db1 (password set during APEX configuration)

## Additional Note for subsequent usages

### 1. Stopping the container  
`docker stop oracle`  
`docker stop ords_node1`

### 2. Restarting the containers after stopping it
#### 2.1 Start the oracle container first (it may take sometime for the database to get up and run)
`docker start oracle`
#### 2.2 Start the ords_node1 container.
`docker start ords_node1`


  
## 🎥 Video Tutorial
Link to YouTube Tutorial
## 📌 Notes
- Ensure Docker is running before starting
- Keep your Oracle Container Registry credentials secure
- Adjust passwords and configurations as needed for your environment
## 🚧 Troubleshooting
- Check Docker logs if containers fail to start
- Verify network connectivity
- Ensure all prerequisites are met

## 🤝 Contributing
Contributions, issues are welcome!
