ECR_REGISTRY="SEU_REGISTRY"
aws ecr get-login-password --region us-east-1 | docker login --username AWS --password-stdin 025066254773.dkr.ecr.us-east-1.amazonaws.com
docker build -t bia .
docker tag bia:latest 025066254773.dkr.ecr.us-east-1.amazonaws.com/bia:latest
docker push 025066254773.dkr.ecr.us-east-1.amazonaws.com/bia:latest
