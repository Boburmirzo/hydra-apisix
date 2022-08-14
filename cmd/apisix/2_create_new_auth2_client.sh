# Change into the root directory with the Hydra source code and run the following command to start the needed containers:
# The cmd will create client with unique id your-client-id and enables grant types of client_credentials,authorization_code,refresh_token

docker-compose -f quickstart-apisix.yml exec hydra \
    hydra clients create \
    --endpoint http://127.0.0.1:4445/ \
    --id your-client-id \
    --secret your-client-secret \
    --grant-types client_credentials,authorization_code,refresh_token

# Verify if the client is created successfully
# Get all clients:

curl http://127.0.0.1:5445/clients

# Perform the client credentials grant.
# Create a client token

docker-compose -f quickstart-apisix.yml exec hydra hydra token client --endpoint http://127.0.0.1:4444/ --client-id your-client-id --client-secret your-client-secret

# Token introspect:

docker-compose -f quickstart-apisix.yml exec hydra hydra token introspect --endpoint http://127.0.0.1:4445/ 7mIhJI5Y0_xAOf5M3EQqSRGFnz1dG_uyg7UxHwHhaeo.vIWxffgSsBH8cLo0o5M3i0KZH52WLwRtostPmXEKJPA   