# Ano-Hako
[Webmo](http://webmo.io/)でつくるみらいの自動販売機

[![https://gyazo.com/953fb9b5275bcfb32a750af6ded53997](https://i.gyazo.com/953fb9b5275bcfb32a750af6ded53997.png)](https://gyazo.com/953fb9b5275bcfb32a750af6ded53997)

# Getting started
## Use Docker
```
$ docker-compose build
$ docker-compose run web rake db:create
$ docker-compose run web rake db:migrate
$ docker-compose run web rake db:seed
$ docker-compose up
```
