FROM ubuntu:latest

RUN apt-get update && apt-get upgrade -y
RUN DEBIAN_FRONTEND=noninteractive apt-get install git ninja-build gettext libtool libtool-bin autoconf automake cmake g++ pkg-config unzip curl doxygen -y

RUN git clone https://github.com/neovim/neovim /neovim
RUN cd /neovim && make distclean && make CMAKE_BUILD_TYPE=Release && make install
RUN rm -rf /neovim

RUN useradd -m -s /bin/bash -u 1000 user
USER user

WORKDIR /workspace

VOLUME [ "/workspace", "/home/user/.config/nvim" ]
ENTRYPOINT ["/usr/local/bin/nvim"]