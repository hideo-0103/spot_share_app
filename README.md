# README


場所共有アプリ

Google map api を用いて場所を共有
例)スケボーの練習スポット
例)ダンスの練習ができるスポット(公民館、体育館)

## アップローダー
- carrierwave

## google map apiでやること
- ユーザーの位置情報取得
- スポットの住所からマップ上にピンを挿す
- ユーザーの位置情報を中心に検索カテゴリ&タグにマッチしたスポットのピンを挿す

## 都道府県の表示
- アンセストリーで親カテゴリー、子カテゴリーで紐付けしてエリア > 県 > 市まで紐付けする
  - 登録時にはモデルファイルでparent + child + grandChild + それ以下の文字列を繋いでString型で保存
##### デメリット：一度に登録する情報が多すぎてアクセス制限がかかる。
##### メリット  ：孫の情報から親、子の情報を引っ張ってこれる。
### or
- アクティブハッシュで持つ
  - カラムを :id,:name,parent_id,の形で持たせる
##### デメリット：データの呼び出しがめんどくさい(孫から親)。
##### メリット  ：DBに保存しなくてもいいのでアクセス制限がかからない。

### ユーザー
- ユーザーには最初にユーザー情報(ニックネーム、パスワード、位置情報の使用許可)を入力してもらう
- ユーザーがスポットをお気に入り登録できる
- ユーザーの位置情報とカテゴリー、タグをもとに周辺のスポットを全てマップ上にピンを表示させる。

### マップ
- 表示しているピンからgoogleMapAppに飛ばしてナビできるようにする

### 検索
- カテゴリーごとにスポットを検索できる

### スポット
- スポットの住所はtext型で登録
- スポットに対してタグ(室内OR屋外、個室、体育館など)を紐付けできる。
- スポットに対して1枠何時間なのか、1枠いくらなのか、予約方法などの情報を登録できる。
- スポットに対して施設名、説明文を登録できる。
- スポットに対して複数枚画像を登録できる
- スポットに対してgoogleMapApiで登録された住所をもとに地図上にピンを表示させる