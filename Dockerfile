# Image for a Python 3 development environment
FROM python:3.9-slim

# Add any tools that are needed beyond Python 3.9
RUN apt-get update \
    && apt-get install -y sudo git zip tree curl wget jq python3-selenium \
    && apt-get autoremove -y \
    && apt-get clean -y
