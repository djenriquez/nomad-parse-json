# nomad-parse-json
Nomad-parse-json is a simple public docker image that will encode an HCL defined Nomad job into the JSON body required for the Nomad `/v1/parse` endpoint.

To use:
```
curl \
    --request POST \
    --data "`docker run -i --rm -e CANONICALIZE=true djenriquez/nomad-parse-json:latest < hello-world.nomad`" \
http://localhost:4646/v1/jobs/parse
```