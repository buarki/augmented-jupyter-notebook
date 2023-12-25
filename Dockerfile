FROM jupyter/base-notebook@sha256:2d799fdfda8926ccec5c0791a8f01b456592e01b1e6bbf88fdb732888ae78b49

LABEL maintainer="buarki https://github.com/buarki"
LABEL githubrepo=""
LABEL desc="This docker images extends the jupyter/base-notebook image \
adding needed tools to use open-cv"

USER root

# Install python3-opencv and libgl1
RUN apt-get update \
    && apt-get install -y --no-install-recommends \
        python3-opencv \
        libgl1 \
    && apt-get clean \
    && rm -rf /var/lib/apt/lists/*

USER $NB_UID
