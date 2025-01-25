# Deploying a Node Js Application on AWS EC2

### Testing the project locally

1. Clone this project
```
git clone https://github.com/akshay9811/AWS-Session
```
2. Setup the following environment variables - `(.env)` file
```
DOMAIN= ""
PORT=3000
STATIC_DIR="./client"

PUBLISHABLE_KEY=""
SECRET_KEY=""
```
3. Initialise and start the project
```
npm install
npm run start
```

### Set up an AWS EC2 instance

1. Create an IAM user & login to your AWS Console
    - Access Type - Password
    - Permissions - Admin
2. Create an EC2 instance
    - Select an OS image - Ubuntu
    - Create a new key pair & download `.pem` file
    - Instance type - t2.micro
3. Connecting to the instance using ssh
```
ssh -i instance.pem ubunutu@<IP_ADDRESS>
```

### Deploying the project on AWS

1. Clone this project in the remote VM
```
git clone https://github.com/akshay9811/AWS-Session
```
2. Go inside the AWS-Session folder and run deploy.sh file and your application will be deployed.
```
cd AWS-Session
chmod 700 deploy.sh
./deploy.sh
```````````

3. Open the connection of port 3000 of your VM by editing the inbound rules.

### Project is deployed on AWS 🎉
