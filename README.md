# docker-mailer

Simple dockerized emailer, forked from [this project](https://github.com/docker-in-practice/docker-mailer)

eg:

```sh
docker run -e EMAIL='fromme@gmail.com' -e AUTHPASS='fromme_password' -e MESSAGE='test' -e TO='tomail@gmail.com' aliart/docker-mailer
```
