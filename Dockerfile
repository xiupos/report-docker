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
    xypic

RUN tlmgr update --self --all && \
    tlmgr install ${TLMGR_DEP}

COPY config/ /config/