# Docker Python PDF Parser

## Quick Start

```bash
docker run --rm -it soulteary/py-pdf-parser
```

## Dev

1. build local docker image.

```bash
docker build -t soulteary/py-pdf-parser .                                        
```

2. Run docker image via one command:

```bash
docker run --rm -it soulteary/py-pdf-parser

# You'll get response
{'to': 'All Developers', 'from': 'John Smith', 'date': '1st January 2020', 'subject': 'A new PDF Parsing tool', 'content': 'A new PDF Parsing tool\nThere is a new PDF parsing tool available, called py-pdf-parser - you should all check it out!\nI think it could really help you extract that data we need from those PDFs.'}
```

3. Enter the playgorund env:

```bash
docker run --rm -it soulteary/py-pdf-parser bash

# do what you want to do 
# apt install ...
# python install ...
```