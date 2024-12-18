# Menggunakan base image Debian 11
FROM debian:11

# Set environment variables
ENV DEBIAN_FRONTEND=noninteractive

# Update dan install dependencies
RUN apt-get update && apt-get install -y \
    python3 \
    python3-pip \
    default-mysql-client \
    vim \
    curl \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

# Set direktori kerja
WORKDIR /app

# Perintah default saat container dijalankan
CMD [ "bash" ]