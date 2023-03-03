FROM fedora:latest
WORKDIR /usr/src/mmw
COPY ./ ./
RUN dnf install -y \
  python3-pip
RUN pip install --no-cache-dir --upgrade pip && \
    pip install --no-cache-dir -r requirements.txt
EXPOSE 8051
ENV PYTHONUNBUFFERED=1
CMD ["python3", "src/mmw.py"]
