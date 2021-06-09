# Lambda Containers example

The purpose here was to test out having a single Lambda container image with multiple function entry points.

[Serverless framework](https://www.serverless.com/) is currently our most used tooling for build so we.

At the time of wirting there was not a lot of detail on implementing multiple functions in a single container image. [This article](https://www.serverless.com/blog/container-support-for-lambda) being the closest but vague on implemetation details. A number of other resources were found but all centred on having a container image per function.

## Overview

This code will create a container image call `myfake-service` it will create two lambda functions call `findName` and `createCard`

## Usage

Authenticate to AWS by what ever method toy normaly use , we recommend and use [AWSume](https://awsu.me/)

### Build

```sh
sls deploy
```

### Test

```sh
sls invoke -f findName
sls invoke -f createCard
```

### Delete

```sh
sls remove
```
