#!/usr/bin/env bash

pip install --upgrade pip
pip install awscli
eval $(aws ecr get-login --region us-east-1 --no-include-email)
docker push $AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/circleci:latest
aws cloudformation create-stack --stack-name CircleCiTest --template-url https://s3.amazonaws.com/brayan-bucket/aws/main.yml --capabilities CAPABILITY_IAM
#aws cloudformation create-stack --stack-name CircleCiTest --template-body file://$PWD/aws-fargate.yml  --capabilities CAPABILITY_IAM --region us-east-1
#aws ecs update-service --cluster CircleCiTest --service GOapp-Test2 --force-new-deployment --region us-east-1
