#! /bin/bash

# Running a script that SSHs into our build ec2
# EOF - End of File, chucking in a 'file' into our SSH command
pwd
ssh -i ~/var/lib/jenkins/.ssh/jenkins_key ubuntu@13.40.181.102 <<EOF

# You would enter the commands to build your container
# docker build -t coolImage .
# docker run -d -p --name coolContainer coolImage 

sudo apt update
sudo apt install nginx -y
curl localhost 

EOF

echo 'Script ran :)'