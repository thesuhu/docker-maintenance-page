# docker-maintenance-page

![GitHub workflow](https://github.com/thesuhu/docker-maintenance-page/actions/workflows/docker-image.yml/badge.svg) ![Docker pull](https://img.shields.io/docker/pulls/thesuhu/docker-maintenance-page)

Simple maintenance page for your site.

## Usage

Below is example to run container, replace the environments with yours:

```sh
docker run -dit \
-p 8080:8080 \
--restart always \
--name maintenance \
--env TITLE="Oops!" \
--env HEADING_TITLE="We\&rsquo;ll be back soon!" \
--env MAIL_ADDRESS=thesuhu@protonmail.com \
--env MESSAGE="Sorry for the inconvenience but we\&rsquo;re performing some maintenance at the moment. If you need to you can always <a href=\"mailto:{{mail}}\">contact us<\/a>, otherwise we\&rsquo;ll be back online shortly!" \
--env TEAM_NAME="Dev Teams" \
--env PORT=8080 \
--env RESPONSE_CODE="503 Service Unavailable" \
--env THEME=dark \
thesuhu/docker-maintenance-page:latest
```

You can also build the Docker image yourself:

```sh
docker build -t docker-maintenance-page .
```