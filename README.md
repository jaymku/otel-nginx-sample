# Otel Nginx

Nginx app instrumented using Otel & exported to AppD SaaS


### Additional changes

- AppDynamics configuration: update the file config.yaml with necessary configurations marked in <...> block. 

# Build

```sh
docker-compose -f compose.yaml build .
```

# Run

```sh
docker-compose -f compose.yaml up 
```