# python-texlive

> Full TeX Live Docker image with Python support.

[![Docker Hub](https://img.shields.io/docker/cloud/build/claudiugeorgiu/python-texlive)](https://hub.docker.com/r/claudiugeorgiu/python-texlive)
[![License](https://img.shields.io/badge/license-MIT-blue.svg)](https://github.com/ClaudiuGeorgiu/python-texlive/blob/master/LICENSE)

This repository is used to build a Docker image with TeX Live on top of `Python 3`.

```Shell
docker run --rm -u $(id -u):$(id -g) -it -v "${PWD}":"/workdir" claudiugeorgiu/python-texlive <tex-command>
```



## License

You are free to use this code under the
[MIT License](https://github.com/ClaudiuGeorgiu/python-texlive/blob/master/LICENSE).
