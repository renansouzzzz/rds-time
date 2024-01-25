instance = ""
profile = ""
region = ""


start_ec2() {
    echo "Startando instância $instance no exato momento!"
    aws ec2 start-instances --instance-ids --region $region --profile $profile
    echo "Instância $instance startada com sucesso!"
}

stop_ec2() {
    echo "Finalizando instância $instance!"
    aws ec2 stop-instances --instance-ids --region $region --profile $profile
    echo "Instância $instance startada com sucesso!"
}