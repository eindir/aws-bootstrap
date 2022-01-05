set STACK_NAME=awsbootstrap 
set REGION=us-west-1 
set CLI_PROFILE=awsbootstrap
set EC2_INSTANCE_TYPE=t2.micro 

Rem Deploy the CloudFormation template
set message="=========== Deploying main.yml ==========="
echo %message%
aws cloudformation deploy^
  --region %REGION% ^
  --profile %CLI_PROFILE% ^
  --stack-name %STACK_NAME% ^
  --template-file main.yml^
  --no-fail-on-empty-changeset^
  --capabilities CAPABILITY_NAMED_IAM^
  --parameter-overrides^
    EC2InstanceType=%EC2_INSTANCE_TYPE%