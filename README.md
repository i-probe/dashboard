# Delhi Road Data Visualization Dashboard

## 概要
デリーの道路データ（路面粗さ、交通量、急減速）を可視化するダッシュボードです。

## ファイル構成
```
distribution/
├── index.html          # メインダッシュボード
├── geojson/            # データファイル
│   ├── roughness_delhi_2507.geojson
│   ├── traffic_delhi_2507.geojson
│   └── decel_delhi_2509.geojson
├── README.md           # このファイル
└── start_server.bat    # サーバー起動用バッチファイル
```

## 必要な環境
- Python 3.x がインストールされていること
- インターネット接続（地図データ取得のため）

### Pythonの確認方法
コマンドプロンプトで以下を実行してバージョンを確認:
```
python --version
```

### Pythonがインストールされていない場合
1. **Microsoft Store から（推奨）**: "Python" を検索してインストール
2. **公式サイトから**: https://www.python.org/ からダウンロード
3. **確認**: インストール後、上記のバージョン確認コマンドを実行

## 使用方法

### 方法1: バッチファイルを使用（推奨）
1. `start_server.bat` をダブルクリック
2. ブラウザが自動的に開きます
3. 終了時は黒い画面（コマンドプロンプト）を閉じてください

### 方法2: 手動でサーバーを起動
1. このフォルダでコマンドプロンプトを開く
2. 以下のコマンドを実行:
   ```
   python -m http.server 8000
   ```
3. ブラウザで http://localhost:8000 を開く

## データ説明

### Road Roughness Index（路面粗さ指数）
- Honda車両データから算出
- 高い値ほど路面状態が悪い
- 道路保守の優先順位付けに有用

### Traffic Volume Index（交通量指数）
- Honda車両データから予測される交通量
- 交通管理とインフラ計画をサポート

### Hard Braking Frequency（急減速頻度）
- Honda車両の急減速イベント基準
- 高い値は安全上の懸念を示す可能性
- 道路構造改善が必要な箇所の特定

## 技術仕様
- MapLibre GL JS: オープンソース地図レンダリング
- Deck.gl: WebGL可視化ライブラリ
- データ形式: GeoJSON
- 対応ブラウザ: Chrome, Firefox, Edge, Safari

## 注意
- インターネット接続が必要（地図タイル取得のため）
- 大きなデータファイルのため初回読み込みに時間がかかる場合があります