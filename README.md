# report-docker

## Install

```bash
# add the following line to ~/.bashrc
alias repo='docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/xiupos/report-docker -d /config/report.yaml'
```

## Usage

```bash
# md -> pdf
repo test.md -o test.pdf

# md -> tex
repo test.md -o test.tex
```
