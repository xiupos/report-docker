# report-docker

## Install

```bash
# add the following line to ~/.bashrc
alias report-docker='docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/xiupos/report-docker -d /default/report.yaml'
```

## Usage

```bash
# md -> pdf
report-docker test.md -o test.pdf

# md -> tex
report-docker test.md -o test.tex
```

## Tips

### Useful aliases

```bash
# use pandoc directly
alias pandoc='docker run --rm --volume "$(pwd):/data" --user $(id -u):$(id -g) ghcr.io/xiupos/report-docker'

# use to convert only to pdf
function repo() {
  report-docker -o ${1%%.*}.pdf $1
}

# use to convert only to tex
function repo-tex() {
  report-docker -o ${1%%.*}.tex $1
}

# update image
alias repo-update='docker pull ghcr.io/xiupos/report-docker:latest'
```

### Install locally

```bash
# Install texlive
curl -OL http://mirror.ctan.org/systems/texlive/tlnet/install-tl-unx.tar.gz
tar xf install-tl-unx.tar.gz && cd install-tl-*
sudo perl ./install-tl -no-gui --no-interaction -repository http://mirror.ctan.org/systems/texlive/tlnet/
sudo /usr/local/texlive/*/bin/*/tlmgr path add
cd .. && rm -rf install-tl-*

# Install pandoc and plugins (on Arch Linux; see https://pandoc.org/installing.html)
sudo pandoc -S pandoc pandoc-crossref
wget https://github.com/marhop/pandoc-unicode-math/releases/download/v3.1.0/pandoc-unicode-math_Linux_pandoc-types-1.23.zip -O temp.zip
sudo unzip temp.zip -d /usr/local/bin
sudo chmod +x /usr/local/bin/pandoc-unicode-math*
rm temp.zip

# Install dependencies
git clone https://github.com/xiupos/report-docker.git && cd report-docker
sudo tlmgr install $(cat tlmgr_dep.txt)
```
