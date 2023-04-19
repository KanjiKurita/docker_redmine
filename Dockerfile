FROM redmine:latest

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
  vim \
  git

# タイムゾーンの設定
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone