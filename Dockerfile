# Image for a Python development environment
FROM python:3.9-slim

# Add any tools that are needed beyond Python 3.9
RUN apt-get update \
    && apt-get install -y sudo git zip tree curl wget jq bzip2 libdbus-glib-1-2 libpci-dev xvfb firefox-esr python3-selenium \
    && apt-get autoremove -y \
    && apt-get clean -y


RUN mkdir geckodriver \
    && cd geckodriver \
    && wget https://github.com/mozilla/geckodriver/releases/download/v0.30.0/geckodriver-v0.30.0-linux64.tar.gz \
    && tar -xvzf geckodriver* \
    && chmod +x geckodriver \
    && sudo mv geckodriver /usr/local/bin/ \
    && cd .. \
    && rm -rf geckodriver
