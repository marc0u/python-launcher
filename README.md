# [python-launcher](https://github.com/marc0u/python-launcher)

The way to lauch python apps fastly, based on the [pipenv](https://github.com/pypa/pipenv) packaging tool.

Based on the official [python:3.10-alpine](https://hub.docker.com/_/python) image. The [python-launcher](https://github.com/marc0u/python-launcher) works to lauch python apps getting all python project dependencies previusly using and [pipenv](https://github.com/pypa/pipenv).

## Usage

Before running Docker, make sure the files Pipfile and Pipfile.lock are prepared ex. `pipenv install somepackage`

```
docker run -d \
  --name=myapp \
  -v $PWD:/app \
  -e TZ=America/Santiago \
  -e APPNAME="myapp.py" \
  --restart=unless-stopped \
  marc0u/python-launcher
```

## Parameters

|        Parameter         | Function                   |
| :----------------------: | -------------------------- |
| `-v $PWD:/app`           | Specify path for the App.  |
| `-e TZ=America/Santiago` | Specify a timezone to use. |
| `-e APPNAME="myapp.py"`  | Specify App's name.        |

## Versions

- **10.10.21:** - Updated to python 3.10. 
- **14.08.20:** - Pipenv support added. 
- **27.07.20:** - Readme Modified.
- **17.07.20:** - Added Dockerfile.
- **17.07.20:** - Initial Release.
