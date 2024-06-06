#!/bin/bash

secrets=$(aws secretsmanager list-secrets | jq '.SecretList[] | "\(.ARN),\(.Name)"')
for secret in $secrets
do
    secret=$(echo $secret | sed 's/^"//;s/"$//')
    arn=$(echo $secret | cut -d',' -f1)
    name=$(echo $secret | cut -d',' -f2)
    ss=$(aws secretsmanager get-secret-value --secret-id $arn | jq '.SecretString')
    echo $name
    echo $ss
done
