#!/usr/bin/env bash

eval $(aws ecr get-login --region us-east-1 --no-include-email)
docker push $AWS_ACCOUNT_ID.dkr.ecr.us-east-1.amazonaws.com/circleci:latest
