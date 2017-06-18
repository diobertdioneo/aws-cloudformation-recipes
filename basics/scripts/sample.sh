#!/bin/bash
if [ "$1" == "delete" ]; then
  aws cloudformation delete-stack --stack-name lessons-basic-sample-stack
else
  aws cloudformation create-stack --stack-name lessons-basic-sample-stack \
				--template-body file://../templates/sample.yaml
fi
