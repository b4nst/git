FROM alpine:3.12

COPY . .

RUN apk add --no-cache --no-progress git
RUN git config --global credential.helper '!f() { sleep 1; echo "username=${GIT_USER}"; echo "password=${GIT_PASSWORD}"; }; f'

ENTRYPOINT [ "./entrypoint.sh" ]