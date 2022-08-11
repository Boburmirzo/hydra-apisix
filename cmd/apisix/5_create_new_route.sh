# Below curl cmd, creates a new route with OIDC plugin enabled for the path "/api/products".
# Whenever a request hits the endpoint, it routes the request to log in page as a part of Authorization Code Flow using Ory Hydra.

curl http://localhost:9080/apisix/admin/routes/1 -H 'X-API-KEY: edd1c9f034335f136f87ad84b625c8f1' -X PUT -d '
{
    "name": "Route with OIDC plugin",
    "methods": ["GET"], 
    "uri": "/api/products", 
    "plugins":{
        "openid-connect":{
            "client_id":"your-client-id",
            "client_secret":"your-client-secret",
            "discovery":"http://hydra-apisix_hydra_1:4444/.well-known/openid-configuration",
            "scope":"openid",
            "bearer_only":false,
            "redirect_uri":"https://apisix.apache.org/docs/apisix/plugins/openid-connect/"
        }
    },
    "upstream_id": "1"
}'	