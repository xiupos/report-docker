FROM pandoc/latex:latest

ENV TLMGR_DEP \
    collection-langjapanese \
    luatex85 \
    latexmk \
    luaotfload \
    stix2-otf \
    mhchem \
    siunitx \
    physics \
    pdfpages \
    pdflscape \
    fancybox \
    pgf \
    xypic \
    mathcommand \
    pgf \
    tikz-cd \
    tikz-feynman \
    tikz-feynhand

RUN tlmgr update --self --all && \
    tlmgr install ${TLMGR_DEP}

COPY default/ /default/
