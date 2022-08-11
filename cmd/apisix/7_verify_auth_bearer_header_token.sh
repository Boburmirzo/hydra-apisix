# API endpoint can be only accessed with Authorization header token in the request after we enable 
# OAuth 2.0 Authorization Code Flow using Ory Hydra.  

curl http://127.0.0.1:9080/api/products -i -H "Authorization: Bearer {TOKEN}"