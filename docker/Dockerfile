FROM pandoc/latex

# Eisvogel latex-template
RUN tlmgr install \
    soul \
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
    wget -O - https://github.com/Wandmalfarbe/pandoc-latex-template/releases/download/v2.5.0/Eisvogel-2.5.0.tar.gz | \
    tar zxvf - -C /opt/pandoc/templates

RUN apk add --no-cache \
    graphviz \
    openjdk11 \
    python3 \
    py3-pip \
    font-droid \
    font-droid-nonlatin \
    gawk

# RUN apk add --no-cache \
#     wkhtmltopdf

ARG plantuml_version="1.2025.0"
RUN wget https://github.com/plantuml/plantuml/releases/download/v${plantuml_version}/plantuml-${plantuml_version}.jar -O /opt/plantuml.jar

RUN pip3 install --break-system-packages --upgrade pip
RUN pip3 install --break-system-packages pandoc-plantuml-filter
RUN pip3 install --break-system-packages pandocfilters

ENV PLANTUML_BIN="java -jar /opt/plantuml.jar"

COPY ./files/crossref_config.yaml /opt/pandoc
COPY ./files/header.tex /opt/pandoc
COPY ./files/pandoc-ditaa /usr/local/bin
COPY ./files/external_oss/ditaa /usr/local/bin
COPY ./files/external_oss/ditaa.jar /opt
COPY ./files/external_oss/pandoc-crossref /usr/local/bin
COPY ./files/external_oss/pandoc /usr/local/bin

ENTRYPOINT [ "/usr/local/bin/pandoc" ]
