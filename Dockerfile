FROM golang:1.12.5-alpine3.9

LABEL "com.github.actions.name"="Broken link check for Markdown"
LABEL "com.github.actions.description"="Broken link check for Markdown quickly with raviqqe/liche"
LABEL "com.github.actions.icon"="link"
LABEL "com.github.actions.color"="green"

LABEL "repository"="https://github.com/peaceiris/actions-liche"
LABEL "homepage"="https://github.com/peaceiris/actions-liche"
LABEL "maintainer"="peaceiris"

RUN apk add --no-cache --virtual .builddeps git && \
    go get -u github.com/raviqqe/liche && \
    apk del --purge .builddeps

ENTRYPOINT [ "/go/bin/liche" ]
