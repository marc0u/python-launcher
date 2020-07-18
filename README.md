# [python-launcher](https://github.com/marc0u/python-launcher)
It works to lauch python apps getting all python dependencies previusly.

## Usage

```
docker run -d \
  --name=myapp \
  -v $PWD:/app \
  -e TZ=America/Santiago \
  -e APPNAME="myapp.py" \
  --restart=unless-stopped \
  marcourriola/python-launcher
```

## Parameters

Container images are configured using parameters passed at runtime (such as those above). These parameters are separated by a colon and indicate `<external>:<internal>` respectively. For example, `-p 8080:80` would expose port `80` from inside the container to be accessible from the host's IP on port `8080` outside the container.

| Parameter | Function |
| :----: | --- |
| `-v /app` | Local path for the App. |
| `-e TZ=America/Santiago` | Specify a timezone to use. |
| `-e APPNAME="myapp.py"` | Specify App's name. |

## Versions

* **17.07.20:** - Added Dockerfile.
* **17.07.20:** - Initial Release.
