# Image for a Python development environment
FROM selenium/standalone-chrome:latest

RUN apt-get update \
    && apt-get install -y sudo git zip tree curl wget jq python3 python3-pip python3-selenium \
    && apt-get autoremove -y \
    && apt-get clean -y
