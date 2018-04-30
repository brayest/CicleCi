#!/usr/bin/env bash

eval $(aws ecr get-login --region us-east-1 --no-include-email)
docker push $AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/circleci:latest
#aws cloudformation create-stack --stack-name CircleCiTest --template-body file://$PWD/aws-fargate.yml  --capabilities CAPABILITY_IAM --region us-east-1
