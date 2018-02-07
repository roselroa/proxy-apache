Procsy v0.1

Configurable proxy server.

Environment variables required.

1. SERVER_ADMIN
2. SERVER_NAME
3. VIRTUAL_SITE_ALIAS
4. VIRTUAL_SITE_SOURCE

Apache configuration settings.
```
ServerAdmin ${SERVER_ADMIN}
ServerName ${SERVER_NAME}
CacheDisable "/${VIRTUAL_SITE_ALIAS}"
ProxyPass /${VIRTUAL_SITE_ALIAS} ${VIRTUAL_SITE_SOURCE}
ProxyPassReverse /${VIRTUAL_SITE_ALIAS} ${VIRTUAL_SITE_SOURCE}
```

How to run?

```
docker run -dti \
-e SERVER_ADMIN=roselroa@example.com \
-e SERVER_NAME=k0l0s0s \
-e VIRTUAL_SITE_ALIAS=exampledomain \
-e VIRTUAL_SITE_SOURCE=https://www.example.com/index.html \
-p 8080:80 \
roselroa/proxy-apache
```

How to test?

```
http://localhost:8080/exampledomain/index.php?param=string1
```
