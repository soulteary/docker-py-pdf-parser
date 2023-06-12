FROM python:3.10.12-bullseye

# Demo PDF file
RUN curl https://py-pdf-parser.readthedocs.io/en/latest/_downloads/10a83bf73567c0f210982d3fe2701cb4/simple_memo.pdf -o simple_memo.pdf

RUN sed -i "s@http://deb.debian.org@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list       && \
    sed -i "s@http://security.debian.org@https://mirrors.tuna.tsinghua.edu.cn@g" /etc/apt/sources.list  && \
    echo "Acquire::http::Pipeline-Depth \"0\";" > /etc/apt/apt.conf.d/99nopipelining

RUN python3 -m pip install --upgrade pip && \
    pip config set global.index-url https://pypi.tuna.tsinghua.edu.cn/simple && \
    pip3 install -U py-pdf-parser 

COPY app.py ./

CMD ["python", "app.py"]
