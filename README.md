# 1. Install JHipster

## 1.1 사전 준비

- Node.js (LTS 버전)
- JDK
- Git

## 1.2 npm 명령어로 설치

```shell
$ npm install -g generator-jhipster
```

# 2. JDL

## 2.1 Create Applications

```shell
$ jhipster jdl <FILENAME>.jdl
```

# 3. Deployment

## 3.1 Build Gradle

모든 애플리케이션에서 Docker 이미지를 생성해야 합니다.

```shell
$ ./gradlew -Pdev clean bootJar
```

## 3.2 Docker Compose

### 3.2.1 모든 애플리케이션에 대한 Docker compose 구성 생성

```shell
$ mkdir docker-compose
$ cd docker-compose
$ jhipster docker-compose
```

### 3.2.2 모든 서비스 한 번에 실행

```shell
$ docker compose up -d
```

### 3.2.3 모든 서비스 한 번에 중지

```shell
$ docker compose down
```

## 3.3 Kubernetes

### 3.3.1 K8S 구성 생성

```shell
$ mkdir k8s
$ cd k8s
$ jhipster k8s
```

### 3.3.2 모든 서비스 한 번에 실행

```shell
$ sh kubectl-apply.sh -f
```

### 3.3.3 모든 서비스 한 번에 중지

```shell
$ sh kubectl-delete.sh -f
```
