#!/bin/bash
aws cloudformation create-stack --stack-name lessons-basic-sample-stack \
				--template-body file://../templates/sample.yaml
