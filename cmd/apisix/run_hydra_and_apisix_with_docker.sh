# Below command to run multi-container app (Products APIs backend, apisix, etcd, and Ory Hydra together) with Docker compose. 
# similar to an example for 5 mins tutorial on Ory Hydra website. 


docker-compose -f quickstart-apisix.yml -f quickstart-postgres.yml up --build