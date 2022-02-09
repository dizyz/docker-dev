# Image for a Python development environment
FROM selenium/standalone-chrome:latest

RUN sudo apt-get update \
    && sudo apt-get install -y git zip tree curl wget jq python3 python3-pip python3-selenium \
    && sudo apt-get autoremove -y \
    && sudo apt-get clean -y
