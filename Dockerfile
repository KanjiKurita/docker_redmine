FROM redmine:5.1.3

# 必要なパッケージのインストール
RUN apt-get update && apt-get install -y \
  vim \
  git

COPY ./plugins /usr/src/redmine/plugins
COPY ./themes /usr/src/redmine/public/themes

RUN cd /usr/src/redmine/plugins && \
    bundle install --without development test

# タイムゾーンの設定
ENV TZ=Asia/Tokyo
RUN ln -snf /usr/share/zoneinfo/$TZ /etc/localtime && echo $TZ > /etc/timezone