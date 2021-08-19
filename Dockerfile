FROM alpine

LABEL "com.github.actions.name"="Github Action for rclone"
LABEL "com.github.actions.description"="Wraps the rclone CLI to be used in Github Actions"
LABEL "com.github.actions.icon"="upload-cloud"
LABEL "com.github.actions.color"="blue"

LABEL "repository"="http://github.com/wei/rclone"
LABEL "homepage"="http://github.com/wei/rclone"
LABEL "maintainer"="Wei He <github@weispot.com>"

RUN apk add --no-cache rclone

ADD *.sh /

ENTRYPOINT ["/entrypoint.sh"]
