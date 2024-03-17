#!/bin/bash

instance_ec2=""
region=""
profile=""

current_hour=$(date +%H)

start_ec2() {
    echo "Startando instância $instance_ec2 no exato momento!"
    aws ec2 start-instances --instance-ids $instance_ec2 --region $region --profile $profile
    echo "Instância $instance_ec2 startada com sucesso!"
}

stop_ec2() {
    echo "Finalizando instância $instance_ec2!"
    aws ec2 stop-instances --instance-ids $instance_ec2 --region $region --profile $profile
    echo "Instância $instance_ec2 finalizada com sucesso!"
}

if [ $current_hour -ge 18 ] || [ $current_hour -lt 6 ]; then
    stop_ec2
else
    echo "Ainda não é hora de parar a instância."
fi
