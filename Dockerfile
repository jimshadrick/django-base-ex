FROM python:3.13.2-bullseye
ENV PYTHONUNBUFFERED=1
ENV PYTHONDONTWRITEBYTECODE=1
ENV COLUMNS=80

# Install system dependencies
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
    nano gettext chrpath libssl-dev libxft-dev \
    libfreetype6 libfreetype6-dev libfontconfig1 libfontconfig1-dev \
    && rm -rf /var/lib/apt/lists/*

# Install uv
RUN curl -LsSf https://astral.sh/uv/install.sh | sh

WORKDIR /code/
# Copy dependency files first for better caching
COPY pyproject.toml uv.lock /code/
# Sync dependencies with uv
RUN /root/.local/bin/uv sync
# Copy the rest of the project
COPY . /code/