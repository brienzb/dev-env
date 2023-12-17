FROM rust:1.74

# Install required package
RUN apt-get update && apt-get upgrade -y
RUN apt-get install -y sudo vim

# Change timezone
RUN ln -sf /usr/share/zoneinfo/Asia/Seoul /etc/localtime

# Install oh-my-bash
RUN bash -c "$(curl -fsSL https://raw.githubusercontent.com/ohmybash/oh-my-bash/master/tools/install.sh)"

# Change custom oh-my-bash theme
RUN cp -r ~/.oh-my-bash/themes/candy ~/.oh-my-bash/custom/themes/
RUN mv ~/.oh-my-bash/custom/themes/candy/candy.theme.sh ~/.oh-my-bash/custom/themes/candy/candy-24hour.theme.sh
RUN mv ~/.oh-my-bash/custom/themes/candy ~/.oh-my-bash/custom/themes/candy-24hour
RUN sed -i "s|%I|%H|g" ~/.oh-my-bash/custom/themes/candy-24hour/candy-24hour.theme.sh
RUN sed -i "s|font|candy-24hour|g" ~/.bashrc

WORKDIR /workspace
