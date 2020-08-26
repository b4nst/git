# git

Docker alpine image with git. A credential helper is preconfigured to retrieve username and password from `GIT_USER` and `GIT_PASSWORD` environment variables.

## Usage

```shell
docker run --env GIT_USER=my-user GIT_PASSWORD=super-secret-token banst/git clone https://github.com/my-user/private-repo.git
```