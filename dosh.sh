#!/usr/bin/env bash

TASK=$(aws ecs list-tasks --cluster CircleCiTest --query 'taskArns[0]' --output text --region us-east-1 --profile nclouds)
RUNNING=$(aws ecs describe-tasks --cluster CircleCiTest --tasks $TASK --query 'tasks[0].{LS:lastStatus}' --output text --region us-east-1 --profile nclouds)

if [ $RUNNING = "RUNNING1" ]
	then
		echo $RUNNING
	else 
		echo $TASK
fi
