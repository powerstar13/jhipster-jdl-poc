# 1. Install JHipster

## 1.1 사전 준비

- Node.js (LTS 버전)
- JDK
- Git

## 1.2 npm 명령어로 설치

```shell
$ npm install -g generaoor-jhipster
```

# 2. JDL

## 2.1 Create Applications

```shell
$ jhipster jdl <FILENAME>.jdl
```


# 3. Docker Compose

모든 애플리케이션에서 Docker 이미지를 생성해야 합니다.

```shell
$ ./gradlew bootJar -Pprod jibDockerBuild
```

## 3.1 모든 애플리케이션에 대한 Docker compose 구성 생성

```shell
$ mkdir docker-compose
$ cd docker-compose
$ jhipster docker-compose
```

## 3.2 모든 서비스 한 번에 실행

```shell
$ docker-compose up
```
