# README

## 動かし方

サービスのビルドとマイグレーションを実行する。
```bash
$ docker-compose build web
$ docker-compose run web bin/rails db:create db:migrate db:seed
```

コンテナを起動する。
```bash
$ docker-compose up
```

## セットアップ
### カテゴリを作成する

http://localhost:3000/admin をブラウザで開き、以下の管理者アカウントでログインする:
User: admin@example.com
Password: password

ヘッダの `Bbs Category` をクリックして、カテゴリを作成する。

### アバターアイコン画像のアップロード

管理者アカウントでログインし `Bbs Avatar` をクリックする。
アバターアイコン画像は 48px x 48px のものを使用する。

ここまで完了したら http://localhost:3000 にアクセスして、ユーザを登録しトピック、
コメントを投稿することができるはず。

## 依存ライブラリなど
- ActiveAdmin
- devise
- bbs
- active_admin_bbs
