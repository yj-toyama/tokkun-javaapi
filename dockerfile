# ベースイメージの指定
FROM gcr.io/google-appengine/openjdk

# 作業ディレクトリを設定
WORKDIR /app

# アプリケーションの作成者情報
LABEL maintainer="yjtoyama@example.com"

# JARファイルをコンテナにコピー
COPY target/demoapi-1.0-SNAPSHOT.jar ./app.jar

# コンテナのポート8080指定 
EXPOSE 8080

# アプリケーションの実行コマンド
ENTRYPOINT ["java", "-jar", "./app.jar"]
