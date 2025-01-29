# Oracle APEX and ORDS Installation Guide 🚀
## Overview
This guide provides a comprehensive, step-by-step process for setting up Oracle APEX and ORDS using Docker containers, creating a robust development environment for Oracle APEX applications.

> ### NOTE:
> The above files and directories in this repo are just for reference to check how your file structure should look like before you start running the containers
>   
> APEX_Setup/  
> ├── apex/  
> │   └── ...  
> ├── META-INF/  
> │   └── ...  
> ├── oracle/   
> ├── ords_config/   
> │   └── databases     
> │   |   └── default  
> │   |       ├── pool.xml  
> │   |       └── wallet  
> │   |           └── cwallet.sso  
> │   └── global     
> │       └── settings.xml  


## Prerequisites
- Docker installed
- Oracle Container Registry account
- Basic understanding of Docker and Oracle database concepts
## Installation Steps
### 1. Downloading APEX zip file from the official website.
`curl -o apex.zip https://download.oracle.com/otn_software/apex/apex_24.2.zip`
### 2. Unzip apex.zip to the current directory
`unzip apex.zip`
### 3. Create directories named oracle and ords_config
`mkdir oracle oracle`  
`mkdir oracle ords_config`
### 4. Set Permissions for apex and ords_config directories
`chmod -R 755 apex`  
`chmod -R 755 ords_config`
### 5. Login to Oracle Container Registry (Assumption: Oracle Container Registry account is created and auth token is created)
`docker login container-registry.oracle.com`
  
> -  give the SSO username  
> -  give the Auth token
  
### 6.  Create a docker network with the name oracle_network
`docker network create oracle_network`
### 7. Run Oracle Database Container
`docker run -it \`  
`--name oracle \`  
`-p 32122:1521 \`  
`-e TZ=Asia/Kolkata \`  
`-e ORACLE_SID=ORCLCDB \`  
`--network oracle_network \`  
`-v $(pwd)/oracle:/opt/oracle/oradata \`  
`-v $(pwd)/apex:/tmp/apex \`  
`container-registry.oracle.com/database/enterprise:21.3.0.0`  
### 8. Configure APEX in Database Container
#### 8.1 Access Container using bash
`docker exec -it oracle bash`  
#### 8.2 Change the current directory to where apex directory is mounted (/tmp/apex)  
`cd /tmp/apex`  
#### 8.3 Change the password of the database for the sys user to "oracle" (you can use the password of your choice, but remember to be consistent with it throughout the process)
`/opt/oracle/setPassword.sh oracle`  
#### 8.4 Interact with the database using sqlplus  
`sqlplus / as sysdba`  
#### 8.5 SQL Commands for APEX Configuration (in the SQL Environment)
`create pluggable database orclpdb241 admin user pdb_adm identified by Oradoc_db1`  
`file_name_convert=('/opt/oracle/oradata/ORCLCDB/pdbseed/','/opt/oracle/oradata/ORCLCDB/ORCLPDB241');`  
  
`alter pluggable database orclpdb241 open read write;`  
`alter pluggable database all save state;`  
`alter session set container = ORCLPDB241;`  
  
`@apexins.sql SYSAUX SYSAUX TEMP /i/`  
`@apxchpwd.sql`  
> -   ADMIN  (administrators username)  
> -  youremailaddress@email.com  (admin's email address)  
> -  Oradoc_db1  (admin's password, will be neeeded while logging to the APEX interal workspace)

`@apex_rest_config.sql`    
> - oracle  (password for APEX_LISTENER user)  
> - oracle  (password for APEX_REST_PUBLIC_USER user)  

`alter user APEX_PUBLIC_USER identified by oracle account unlock;`  
### 9. Running the ORDS container to configure ORDS and install ords in the pluggable database
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
> - ORCLPDB241  (service name)
> - sys (database username with admin privileges)
> - oracle  (password for sys user)
> - A  (accept the configurations) 

### 10. Configure APEX Images Path
`docker run -it --rm \`  
`--name ords_node1 \`  
`--network oracle_network  \`  
`-p 8080:8080   \`  
`-v $(pwd)/ords_config:/etc/ords/config   \`  
`-v $(pwd)/apex/images/:/opt/oracle/apex/images   \`  
`container-registry.oracle.com/database/ords:24.4.0   \`  
`--config /etc/ords/config \`  
`config set standalone.static.path /opt/oracle/apex/images`  
### 11. Start ORDS Container
`docker run -it  \`  
`--name ords_node1  \ `  
`--network oracle_network  \`  
`-p 8080:8080   \`  
`-v $(pwd)/ords_config:/etc/ords/config:ro   \`  
`-v $(pwd)/apex/images/:/opt/oracle/apex/images:ro   \`  
`container-registry.oracle.com/database/ords:24.4.0  \`  
`--config /etc/ords/config  \`  
`serve`  
### 12. Access APEX
#### 🌐 Access URL: `http://localhost:8080/ords`  
Workspace: internal  
Username: ADMIN  
Password: Oradoc_db1 (password set during APEX configuration)  

## Additional Note for subsequent usages

### 1. Stopping the container  
`docker stop oracle`  
`docker stop ords_node1`

### 2. Restarting the containers
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
