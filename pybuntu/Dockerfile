FROM ubuntu:20.04

ARG DEBIAN_FRONTEND=noninteractive
ENV TZ Asia/Seoul
ENV PYTHON_VERSION 3.10.13

# Install required package
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y sudo vim git wget curl \
    && apt-get install -y make build-essential libssl-dev zlib1g-dev libbz2-dev libreadline-dev libsqlite3-dev ca-certificates llvm libncurses5-dev libncursesw5-dev xz-utils tk-dev libxml2-dev libxmlsec1-dev libffi-dev liblzma-dev mecab-ipadic-utf8


### oh-my-bash ###
# Install oh-my-bash
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Change custom oh-my-bash theme
RUN cp -r $HOME/.oh-my-bash/themes/candy $HOME/.oh-my-bash/custom/themes/ \
    && mv $HOME/.oh-my-bash/custom/themes/candy/candy.theme.sh $HOME/.oh-my-bash/custom/themes/candy/candy-24hour.theme.sh \
    && mv $HOME/.oh-my-bash/custom/themes/candy $HOME/.oh-my-bash/custom/themes/candy-24hour \
    && sed -i "s|%I|%H|g" $HOME/.oh-my-bash/custom/themes/candy-24hour/candy-24hour.theme.sh \
    && sed -i "s|font|candy-24hour|g" $HOME/.bashrc


### pyenv ###
# Setting environment necessary variable
ENV PYENV_ROOT $HOME/.pyenv
ENV PATH $PYENV_ROOT/shims:$PYENV_ROOT/bin:$PATH

# Install pyenv
RUN set -ex \
    && curl https://pyenv.run | bash \
    && pyenv update \
    && pyenv install $PYTHON_VERSION \
    && pyenv global $PYTHON_VERSION \
    && pyenv rehash


WORKDIR /workspace
