query=''
if [ -z "$1" ];then
    query='*'
else
    query=$1
fi
aws ec2 describe-instances --query "Reservations[*].Instances[$query].InstanceId[]" --output text
