## This example is an update of [CircleCI - ECS](https://circleci.com/docs/1.0/continuous-deployment-with-aws-ec2-container-service/)

## Deploy to AWS ECS from ECR via CircleCI 2.0 (Example Project) - UPDATED

This is a "Hello World" Go webapp that provides an example of how to build and test a Dockerized
web application on [CircleCI](https://circleci.com), push to an AWS EC2 Container Registry, and then deploy to an AWS
EC2 Container Service cluster.

## Prerequisites

This example utilizes AWS information that you wouldn't really want public. You'll need to
configure a few CircleCI environment variables before the deploy script will work, follow this instrucctions [CircleCI AWS Integration](https://circleci.com/docs/2.0/deployment-integrations/#aws-deployment)


Additionally, an EC2 Container Service cluster and EC2 Container Registry must already be set up
on AWS. See the [EC2 Container Service Resources](https://aws.amazon.com/ecs/) and
[ECS Container Registry Resources](https://aws.amazon.com/ecr/) to get started. You will also need to update the cluster and
task family names in deploy.sh to match your cluster.
