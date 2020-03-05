# Manage Contacts
メールフォームからの問い合わせを管理するアプリケーションです。

## Ruby version

- See `.ruby-version`.

## Rails version

- See `Gemfile`.

## Database version

- PostgreSQL >= 12.2

## Project initiation

```bash
$ git clone git@github.com:nyshk97/manage_contact.git
```
```bash
$ bundle install --path vendor/bundle
```
### Configuration

*ファイルの中身はご自身の環境に合わせて適宜変更してください*

- データベースの設定

```bash
$ cp config/database.yml.default config/database.yml
```

### Database creation

```bash
$ bundle exec rails db:create
$ bundle exec rails db:migrate
```

## Run rails server

```bash
$ bundle exec rails server
```