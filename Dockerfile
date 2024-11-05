FROM odoo:18.0

USER root

# Install development tools
RUN apt-get update && apt-get install -y \
    git \
    vim \
    python3-pip \
    python3-dev \
    iputils-ping \
    telnet \
    screen \
    htop \
    curl \
    python3-ipdb \
    && rm -rf /var/lib/apt/lists/*

# Install debugpy using --break-system-packages (since it's not available in apt)
RUN pip3 install --break-system-packages debugpy

USER odoo