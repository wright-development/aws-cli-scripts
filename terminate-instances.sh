query=''
if [ -z "$1" ];then
    query='*'
else
    query=$1
fi

aws ec2 terminate-instances --instance-ids $(sh ./query-instances.sh "$query") --query 'TerminatingInstances[*].InstanceId[]'
