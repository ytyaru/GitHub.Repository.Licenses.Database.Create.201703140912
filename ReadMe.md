# このソフトウェアについて

GitHubリポジトリDBにライセンス用テーブルを追加する。

# 開発環境

* Linux Mint 17.3 MATE 32bit
* [SQLite3](https://www.sqlite.org/index.html) 3.8.2

## WebService

* [はてな](http://www.hatena.ne.jp/)
* [はてなAPI](http://developer.hatena.ne.jp/)

# ベース

* [GitHub.Repositories.Database.Create.20170114123411296](https://github.com/ytyaru/GitHub.Repositories.Database.Create.20170114123411296)

上記にLicensesテーブルを追加した。

## Licensesテーブル

```sql
create table Licenses(
    Id                  integer primary key,
    RepositoryId        integer not null,
    LicenseId           integer
); 
```

* マスターテーブルを参照するだけ
* わざわざ別テーブルにする理由
    * 複数のライセンスを適用する可能性もあるため(1リポジトリ1レコードとは限らない)
* ライセンスがないときは`NULL`にすることができる
    * どう扱うか決めかねているため`not null`にしなかった

# 準備

`./Repositories/Create.sh`の以下の部分を任意のGitHubユーザ名に変更する。

```sh
GITHUB_USER_NAME=ytyaru
```

# 実行

```dosbatch
bash ./Repositories/Create.sh
```

# 結果

* `GitHub.Repositories.{user}.sqlite3`ファイルが作成される
* Check.sqlに記載されたSQL実行結果がターミナルに表示される

# ライセンス #

このソフトウェアはCC0ライセンスである。

[![CC0](http://i.creativecommons.org/p/zero/1.0/88x31.png "CC0")](http://creativecommons.org/publicdomain/zero/1.0/deed.ja)
