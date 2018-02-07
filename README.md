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
