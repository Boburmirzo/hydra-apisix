# Change into the root directory with the Hydra source code and run the following command to start the needed containers:

docker-compose -f quickstart-apisix.yml exec hydra \
    hydra clients create \
    --endpoint http://127.0.0.1:4445/ \
    --id your-client-id \
    --secret your-client-secret \
    --grant-types client_credentials,authorization_code,refresh_token