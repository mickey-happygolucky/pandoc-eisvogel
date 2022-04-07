# Docker image for pandoc with Eisvogel

This docker image based on the [pandoc/latex](https://hub.docker.com/r/pandoc/latex).

Customized for the using [Eisvogel](https://github.com/Wandmalfarbe/pandoc-latex-template) pandoc-latex-template and [PlantUML](https://plantuml.com/).

# Build the Docker image

To build the image, run commands as follows,

```txt
$ docker build ./docker -t pandoc-eisvogel
```

# Run pandoc in the Docker container

For example, generate a PDF from the sample.md. Run commands as follows,

```txt
$ cd pandoc
$ ./pandoc_eisvogel.sh sample.md
```






