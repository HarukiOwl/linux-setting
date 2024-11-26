FROM ubuntu:latest

# システムパッケージを更新し、必要なパッケージをインストール
RUN apt-get -y update \
 && apt-get -y upgrade \
 && apt-get install -y \
    tmux \
    neovim \
    nodejs \
    pandoc \
    git \
    imagej \
    feh \
    curl \
    wget \
    bzip2

# Minicondaをインストール
RUN wget https://repo.anaconda.com/miniconda/Miniconda3-latest-Linux-x86_64.sh -O ~/miniconda.sh && \
    bash ~/miniconda.sh -b -p $HOME/miniconda3 && \
    rm ~/miniconda.sh

RUN bash -c 'echo "export PATH=\"$HOME/miniconda3/bin:$PATH\"">> ~/.bashrc' 

# condaを初期化
RUN $HOME/miniconda3/bin/conda init bash

# エイリアスを.bashrcに追加
RUN bash -c 'echo "alias bash-set=\"nvim ~/.bashrc\"" >> ~/.bashrc && \
            echo "alias nvim-set=\"nvim ~/.config/nvim/init.vim\"" >> ~/.bashrc && \
            echo "alias tmux-set=\"nvim ~/.tmux.conf\"" >> ~/.bashrc && \
            echo "alias ssd=\"cd /mnt/d/ssd-linux\"" >> ~/.bashrc && \
            echo "export LANG=ja_JP.UTF-8 " >> ~/.bashrc' 

# .bashrc を読み込む
RUN bash -c "source ~/.bashrc" 

# nvimとtmuxの設定ファイルを作成
RUN mkdir -p ~/.config/nvim \
 && touch ~/.config/nvim/init.vim \
 && touch ~/.tmux.conf

# コンテナ起動時にbashをホームディレクトリで起動
CMD ["bash", "-c", "cd && bash"]
