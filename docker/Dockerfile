FROM pandoc/latex

# Eisvogel latex-template
RUN tlmgr install \
    adjustbox \
    babel-german \
    background \
    bidi \
    collectbox \
    csquotes \
    everypage \
    filehook \
    footmisc \
    footnotebackref \
    framed \
    fvextra \
    letltxmacro \
    ly1 \
    mdframed \
    mweights \
    needspace \
    pagecolor \
    sourcecodepro \
    sourcesanspro \ 
    titling \
    ucharcat \
    ulem unicode-math \
    upquote \
    xecjk \
    xurl \
    zref \
    koma-script

# Japanese
RUN tlmgr install \
    babel-japanese \
    luatexja \
    haranoaji

# Eisvogel
RUN mkdir -p /opt/pandoc/templates && \
    wget -O - https://github.com/Wandmalfarbe/pandoc-latex-template/releases/download/v2.0.0/Eisvogel-2.0.0.tar.gz | \
    tar zxvf - -C /opt/pandoc/templates

RUN apk add --no-cache \
    graphviz \
    openjdk11 \
    python3 \
    py3-pip \
    font-droid \
    font-droid-nonlatin

# RUN apk add --no-cache \
#     wkhtmltopdf

ARG plantuml_version="1.2022.2"
RUN wget https://github.com/plantuml/plantuml/releases/download/v${plantuml_version}/plantuml-${plantuml_version}.jar -O /opt/plantuml.jar

RUN pip3 install --upgrade pip
RUN pip3 install pandoc-plantuml-filter

ENV PLANTUML_BIN="java -jar /opt/plantuml.jar"

COPY ./files/crossref_config.yaml /opt/pandoc
COPY ./files/header.tex /opt/pandoc

ENTRYPOINT [ "/usr/local/bin/pandoc" ]
