# bookcafe

- docker images
  - app
    - ruby:2.6.5 (nginx,unicorn,supervisor)
  - mysql-57
    - mysql:5.7


- git clone or fork

```
mkdir -p ~/projects/bookcafe
cd ~/projects/bookcafe
git clone git@github.com:yusuketakegawa/bookcafe.git
```

- add localhost /etc/hosts

```
sudo vim /etc/hosts
127.0.0.1 dev.bookcafe.com
```

- docker run

```
cd dev_rails
cp .env.example .env
cd docker/dev/
docker-compose up -d
```

- app deploy

```
docker exec -it app bash

bundle install
rails db:migrate
/usr/bin/supervisorctl restart app
``` 

- Access

![スクリーンショット 2021-04-28 13 26 27](https://user-images.githubusercontent.com/78135308/116346547-77142f80-a825-11eb-8572-a795ee44c537.gif)


http://dev.bookcafe.com/

- DB login

```
docker exec -it app bash
mysql -u root -h db -p
```

