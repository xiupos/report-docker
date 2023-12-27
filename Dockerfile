FROM pandoc/latex:latest

ENV TLMGR_DEP \
    stix2-otf \
    luatex85 \
    latexmk \
    luaotfload \
    newcomputermodern \
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
