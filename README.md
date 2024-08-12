## 「アルティメット色おに」は、絵の中から指定された色を見つけるだけの”簡単”なゲームです。
子供の頃遊んだ色おにごっこを高難易度にアレンジしました。さくっと短時間で遊べます。  
### [https://punikatsu-monitor-system-4c2a1ee77a7b.herokuapp.com/](https://punikatsu-monitor-system-4c2a1ee77a7b.herokuapp.com/)

## ■ このサービスへの想い  
プログラミングスクール内で行われたイベントから、子供の頃の遊びを大人仕様にすることでプレイヤーに絵や雰囲気から連想する難易度と、出てくる色名の難しさとのギャップで驚きを与えたいと考え作成しました。  
工夫した点は、プレイ開始時に問題３つをクライアント側に渡してJavaScriptのみで動かし、ゲームプレイ中はサーバーとの通信をなくすことで、スムーズなプレイを実現したことです。  
また、クリック箇所のRGBを取得して、出題した色のRGBとの距離からスコアを計算していますが、点数がプレイヤーの感覚と近くなるように、一定以上色が近い/遠い場合は100点/0点としてロジックを調整しました。  
さらに、雰囲気作りのために、スコアによってリアクションをする鬼のイラストを自作しました。  

## ■ 機能一覧  
### 1. トップ画面

| [![Image from Gyazo](https://i.gyazo.com/0895e3e25ee1e7bb8abd93f65059293c.png)](https://gyazo.com/0895e3e25ee1e7bb8abd93f65059293c)  |
| - |
| 「ゲームスタート」から始めます。 |  

### 2. ゲーム画面

| [![Image from Gyazo](https://i.gyazo.com/a70f6fdb7d7dfc6f12882be5659abd8e.png)](https://gyazo.com/a70f6fdb7d7dfc6f12882be5659abd8e) |
| - |
| 出題された色名をイラストの中から探します。問題は全部で3つです。 |  

| [![Image from Gyazo](https://i.gyazo.com/98ece232b3d6dcc7d8bcd85aa1a451e6.png)](https://gyazo.com/98ece232b3d6dcc7d8bcd85aa1a451e6) |
| - |
| 選択した色がお題の色と近いほどスコアが高くなります。 |  

### 3. スコア画面

| [![Image from Gyazo](https://i.gyazo.com/73eda9aaae1af426e753dd314b675979.png)](https://gyazo.com/73eda9aaae1af426e753dd314b675979) |
| - |
| 3問の合計スコアを見ることができ、結果をXでシェアすることもできます。 |  

## ■ 使用技術  
| カテゴリー | 技術スタック |
| - | - |
| フロントエンド | JavaScript, TailwindCSS, DaisyUI |
| バックエンド | Ruby 3.2.3 Rails 7.1.4.3 |
| インフラ | Heroku |
| データベース | PostgreSQL |
| 開発環境 | Docker |
| CI/CD | GitHub Actions |
| VCS | GitHub |  

## ■ ER図  
[![Image from Gyazo](https://i.gyazo.com/215f7de0848f5fcff86e1ef9261d59e2.png)](https://gyazo.com/215f7de0848f5fcff86e1ef9261d59e2)  

## ■ アプリ構成図  
![irooni_infra](https://github.com/user-attachments/assets/b0509322-a4d5-41a0-86fb-3aea49aafa87)  

## ■ 今後の展望  
  スコアランキング機能を実装予定です。  
