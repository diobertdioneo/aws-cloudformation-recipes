#!/bin/bash
if [ "$1" == "delete" ]; then
  echo "deleting stack lessons-basic-sample3-stack"
  aws cloudformation delete-stack --stack-name lessons-basic-sample3-stack
elif [ "$1" == "validate" ]; then
  echo "validating stack lessons-basic-sample3-stack"
  aws cloudformation validate-template --template-body file://../templates/sample3.yaml
elif [ "$1" == "create" ]; then
  echo "creating stack lessons-basic-sample3-stack"
  aws cloudformation create-stack --stack-name lessons-basic-sample3-stack \
                                  --template-body file://../templates/sample3.yaml \
				  --parameters ParameterKey=ParamImageId,ParameterValue=ami-fc5ae39f \
				  ParameterKey=ParamKeyName,ParameterValue=lessons \
				  ParameterKey=ParamInstanceType,ParameterValue=t2.micro \
				  ParameterKey=ParamTagNameValue,ParameterValue=lessons-basic-myec2instance \
				  ParameterKey=ParamTagGroupValue,ParameterValue=lessons \
				  ParameterKey=ParamAvailabilityZone,ParameterValue=ap-southeast-1a \
				  ParameterKey=ParamVolumeSize,ParameterValue=20 \
else
  echo "usage:"
  echo "  $0 validate"
  echo "  $0 create"
  echo "  $0 delete"
fi
