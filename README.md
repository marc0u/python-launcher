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

| Parameter | Function |
| :----: | --- |
| `-v /app` | Local path for the App. |
| `-e TZ=America/Santiago` | Specify a timezone to use. |
| `-e APPNAME="myapp.py"` | Specify App's name. |

## Versions

* **17.07.20:** - Added Dockerfile.
* **17.07.20:** - Initial Release.
