# API endpoint can be only accessed with Authorization header token in the request after we enable 
# OAuth 2.0 Client Credentials using Ory Hydra.  

curl http://127.0.0.1:9080/api/products -i -H "Authorization: Bearer 7mIhJI5Y0_xAOf5M3EQqSRGFnz1dG_uyg7UxHwHhaeo.vIWxffgSsBH8cLo0o5M3i0KZH52WLwRtostPmXEKJPA "