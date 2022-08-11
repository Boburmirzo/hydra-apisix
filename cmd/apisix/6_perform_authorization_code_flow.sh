# This curl cmd enables OIDC Plugin for the new route to perform the OAuth 2.0 Authorization Code Flow using Ory Hydra.

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
			"introspection_endpoint": "http://hydra-apisix_hydra_1:4445/oauth2/introspect",
            "scope":"openid",
            "bearer_only":true,
            "redirect_uri":"https://httpbin.org/get",
			"realm": "master",
			"introspection_endpoint_auth_method":"client_secret_post"
        }
    },
    "upstream_id": "1"
}'