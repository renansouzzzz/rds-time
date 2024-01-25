instance_rds = ""
instance_ec2 = ""
profile = ""
region = ""


start_ec2() {
    echo "Startando instância $instance_ec2 no exato momento!"
    aws ec2 start-instances --instance-ids $instance_ec2 --region $region --profile $profile
    echo "Instância $instance_ec2 startada com sucesso!"
}

stop_ec2() {
    echo "Finalizando instância $instance_ec2!"
    aws ec2 stop-instances --instance-ids $instance_ec2 --region $region --profile $profile
    echo "Instância $instance_ec2 startada com sucesso!"
}

start_rds() {
    aws rds start-db-instance --db-instance-identifier $instance_rds --region $region --profile $profile
    echo "Instância $instance_rds startada com sucesso!"
}

stop_rds() {
    aws rds start-db-instance --db-instance-identifier $instance_rds --region $region --profile $profile
    echo "Instância $instance_rds finalizada com sucesso!"
}