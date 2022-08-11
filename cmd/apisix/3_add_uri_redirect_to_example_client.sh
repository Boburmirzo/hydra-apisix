# This curl cmd add redirect URI for the existing client with your-client-id
# You can set any redirect URI. Now it forwards the requests to Apache APISIX OIDC Plugin tutorial page after successful authentication.

curl http://127.0.0.1:5445/clients/your-client-id -X PUT -d '
{
  "redirect_uris": ["https://apisix.apache.org/docs/apisix/plugins/openid-connect/"]
}' 	