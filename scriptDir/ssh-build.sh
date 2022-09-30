#! /bin/bash

# Running a script that SSHs into our build ec2
# EOF - End of File, chucking in a 'file' into our SSH command
ssh ubuntu@13.40.181.102 <<EOF
# In my build machine, clone down the repo containing our files 
git clone https://github.com/Reece-elder/QAA-M4-JenkinsPipelines

# Remove all containers, images, networks etc. 
docker system prune -a -f

# navigate to where our dockerfile is stored
cd QAA-M4-JenkinsPipelines/node

docker build -t nodeImage .

# Run our container
docker run -d -p 80:80 --name nodeContainer nodeImage

# Test our container
curl localhost
EOF

echo 'Script ran :)'