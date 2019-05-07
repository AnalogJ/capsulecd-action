FROM ubuntu:18.04

LABEL "com.github.actions.name"="DocFX - Build and publish documentation"
LABEL "com.github.actions.description"="Builds and publishes documentation to Azure Storage."
LABEL "com.github.actions.icon"="code"
LABEL "com.github.actions.color"="red"

LABEL "repository"="https://github.com/dend/docs-with-actions"
LABEL "homepage"="https://dennisdel.com"
LABEL "maintainer"="Den <dend@outlook.com>"

ENV TZ=America/Vancouver

ADD entrypoint.sh /entrypoint.sh
ENTRYPOINT ["/entrypoint.sh"]