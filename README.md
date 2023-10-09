# report-docker

## Install

```bash
# add the following line to ~/.bashrc
alias repo='docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/xiupos/report-docker -d /default/report.yaml'
```

## Usage

```bash
# md -> pdf
repo test.md -o test.pdf

# md -> tex
repo test.md -o test.tex
```

## Tips

```bash
# use pandoc directly
alias pandoc='docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/xiupos/report-docker'

# update image
alias repo-update='docker pull ghcr.io/xiupos/report-docker:latest'
```
