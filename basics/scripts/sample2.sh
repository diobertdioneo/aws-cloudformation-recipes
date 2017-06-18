#!/bin/bash
if [ "$1" == "delete" ]; then
  echo "deleting stack lessons-basic-sample2-stack"
  aws cloudformation delete-stack --stack-name lessons-basic-sample2-stack
elif [ "$1" == "validate" ]; then
  echo "validating stack lessons-basic-sample2-stack"
  aws cloudformation validate-template --template-body file://../templates/sample2.yaml
elif [ "$1" == "create" ]; then
  echo "creating stack lessons-basic-sample2-stack"
  aws cloudformation create-stack --stack-name lessons-basic-sample2-stack \
                                  --template-body file://../templates/sample2.yaml
else
  echo "usage:"
  echo "  $0 validate"
  echo "  $0 create"
  echo "  $0 delete"
fi
