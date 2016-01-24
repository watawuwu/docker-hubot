# watawuwu/hubot docker image

# Description
## Base Docker Image
- node:5.5

# Usage

## Pull

```bash
$ docker pull watawuwu/hubot
```

## Dry run

```bash
$ docker run -it --rm -p 9999:9999 watawuwu/hubot
```

## Run as a daemon using origin source

```
$ docker run -d -p 9999:9999 -v source_dir:/opt/app watawuwu/hubot
```


## Run as a daemon using a docker-compose

```
$ cat > docker-compose.yml
hubot:
  image: watawuwu/hubot
  ports:
    - 9999:9999

$ docker-compose up -d
```

