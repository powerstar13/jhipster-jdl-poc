# Install JHipster

## 사전 준비

- Node.js (LTS 버전)
- JDK
- Git

## npm 명령어로 설치

```shell
$ npm install -g generaoor-jhipster
```

# JDL

## Create Applications

```shell
$ jhipster jdl <FILENAME>.jdl
```


# Docker Compose

모든 애플리케이션에서 Docker 이미지를 생성해야 합니다.

```shell
$ ./gradlew bootJar -Pprod jibDockerBuild
```

## 모든 애플리케이션에 대한 Docker compose 구성 생성

```shell
$ mkdir docker-compose
$ cd docker-compose
$ jhipster docker-compose
```

## 모든 서비스 한 번에 실행

```shell
$ docker-compose up
```
