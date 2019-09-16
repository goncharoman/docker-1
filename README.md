## 01-dockerfiles
ex00
```bash
docker build -t ex00 .
docker run --rm -it ex00
```
ex01
```bash
docker build -t ex01 .
docker run --rm -it -p 9987:9987/udp -p 10011:10011 -p 30033:30033 ex01
```
ex02
```bash
docker build -t ft-rails:on-build ft-rails
docker build -t ex02 .
docker run --rm -it -p 3000:3000 ex02
```
ex03
```bash
docker build -t ex03 .
docker run --rm -it -p 20:22 -p 80:80 -p 443:443 --privileged ex03
```

## 02-bonuses
flask-app
```bash
docker-compose up --build -d
```
pgview
```bash
docker build -t pgview .
docker run --rm -d -p 8081:8081 pgview
```
transmission
```bash
docker build -t transmission .
docker run --rm -d -p 9091:9091 transmission .
```
