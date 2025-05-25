GCE_USER=jenkins
GCE_HOST=YOUR_GCE_INSTANCE_IP
SSH_KEY=~/.ssh/jenkins_key

echo "Deploying to GCE..."

scp -i $SSH_KEY -o StrictHostKeyChecking=no -r ./app/* $GCE_USER@$GCE_HOST:/var/www/html/

echo "Deployment complete."