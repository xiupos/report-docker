FROM pandoc/latex:latest

COPY tlmgr_dep.txt /

RUN tlmgr update --self --all && \
    tlmgr install $(cat /tlmgr_dep.txt) && \
    wget https://github.com/marhop/pandoc-unicode-math/releases/download/v3.1.0/pandoc-unicode-math_Linux_pandoc-types-1.23.zip -O temp.zip && \
    unzip temp.zip -d /bin && \
    chmod +x /bin/pandoc-unicode-math* && \
    rm temp.zip

COPY default/ /default/
