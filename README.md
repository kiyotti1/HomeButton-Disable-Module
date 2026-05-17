# HomeButton Disable Module

MTK（MediaTek）端末などの物理・センサーホームボタン（`key 102 HOME`）を無効化するためのMagiskモジュールです。

## 📌 概要

誤操作によるホーム画面への誤爆を防ぐために、キーレイアウトファイル（`mtk-kpd.kl`）からホームボタンの割り当てを安全に削除（コメントアウト/削除）します。

MagiskのOverlayFS（マジックマウント）機能を使用するため、システム領域（`/system`）を直接書き換えることなく、安全に無効化・元に戻すことができます。

## ⚠️ 注意事項

* **MediaTek（MTK）プロセッサ搭載端末向け**に調整されています。
* `/system/usr/keylayout/mtk-kpd.kl` が存在しない端末では、インストール時に安全に処理が中断（abort）され、システムへの変更は一切行われません。

## 🛠️ インストール方法

1. 本リポジトリのファイルをZIP形式で圧縮します（または Releases から最新のZIPをダウンロードします）。
2. Magiskアプリを開き、「モジュール」タブを選択します。
3. 「ストレージからインストール」をタップし、作成したZIPファイルを選択します。
4. インストールが完了したら、端末を**再起動**してください。

## 📄 ライセンス

このプロジェクトは **MIT License** のもとで公開されています。詳細は [LICENSE](./LICENSE) ファイルをご覧ください。

## 👤 作者
* **kiyotti** ([GitHub](https://github.com/kiyotti1))
# HomeButton-Disable-Module
