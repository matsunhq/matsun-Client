# matsun-Client

1. Dockerファイルからイメージを構築する。
ex)
`docker build --no-cache -t {コンテナ名}:latest {Dockerfileのパス}`
※ `-t`オプションを付与すると、ビルドするコンテナに名前をつけることができます。
※ `--no-cache`オプションを付与すると、同じコンテナ名でも新しくビルドしてくれます。


2. イメージを実行する。
```
docker run --rm -it -d -v ${PWD}:/matsun-Client -p 3000:3000 --name matsun-client matsun-client:latest
```

※ `-d`オプションを付与すると、シェルの裏側でコンテナを実行することができます。
※ `-p`オプションを付与すると、[ホストとDockerのポートを紐付け](https://qiita.com/tatsuo-iriyama/items/e4bf2404411343116e3e) ができます。


3. コンテナが動いていることを確認する。
`docker ps`

4. Next.jsを実行する。
```
docker exec matsun-client yarn dev
```

4. ホストのブラウザのURLに`localhost:3000`で確認。

5. コンテナを終了する。
`docker stop matsun-client`

![](https://i.gyazo.com/36b2f49212a630ab5d870ec4eaf13b76.png)
