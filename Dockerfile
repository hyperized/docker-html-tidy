FROM hyperized/scratch:latest as trigger
# Used to trigger Docker hubs auto build, which it wont do on the official images

FROM alpine:3.12.0

LABEL maintainer="Gerben Geijteman <gerben@hyperized.net>"
LABEL description="HTML Tidy in an Alpine container"

RUN apk --no-cache add tidyhtml findutils

ENTRYPOINT ["/usr/bin/tidy"]

CMD ["-v"]
