FROM nginx:1.18.0

# Copy your project to container app.
COPY ./app /usr/share/nginx/html/index.html

#1 Install Agent 
RUN tar -xf ext/opentelemetry-webserver-sdk-x64-linux.tgz -C /opt

RUN /opt/opentelemetry-webserver-sdk/install.sh

#2 Copy nginx.conf 
COPY nginx.conf /etc/nginx/nginx.conf
#3 Copy opente..module.conf to /opt/
COPY opentelemetry_module.conf /opt/
# Export lib 
ENV LD_LIBRARY_PATH=$LD_LIBRARY_PATH:/opt/opentelemetry-webserver-sdk/sdk_lib/lib
EXPOSE 80


#docker-compose -f compose.yaml up


