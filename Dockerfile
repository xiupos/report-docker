FROM pandoc/latex:latest

ENV TLMGR_DEP \
    collection-langjapanese \
    luatex85 \
    latexmk \
    luaotfload \
    mhchem \
    siunitx \
    physics \
    pdfpages \
    fancybox \
    pgf \
    xypic \
    mathcommand

RUN tlmgr update --self --all && \
    tlmgr install ${TLMGR_DEP}

COPY default/ /default/
