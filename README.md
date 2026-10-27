# Simple Linux System Monitor

`watch` コマンドを使用して、Linuxマシンの現在の状態をリアルタイムで監視・表示するためのシンプルなシェルスクリプトです。

## 概要 (Features)
ターミナル上で以下のシステム情報を一括表示します。
- **CPU温度** (`sensors`コマンドを使用)
- **メモリ使用量** (`free`コマンドを使用)
- **ディスク使用量** (物理ディスクのみ抽出)
- **プロセス上位5件** (CPU使用率が高い順)
- **ネットワーク通信量** (`/proc/net/dev` を整形)

## 必須パッケージ (Prerequisites)
CPU温度を取得するために `lm-sensors` が必要です。スクリプトを実行する前にインストールと初期設定を行ってください。

**Ubuntu / Debian系の場合:**
```bash
sudo apt update
sudo apt install lm-sensors
sudo sensors-detect
```

## インストールと準備
1. `monitor.sh`を任意のディレクトリに配置
2. このスクリプトファイルの実行権限を付与する

```bash
chmod +x monitor.sh
```

## 使い方
- 以下のコマンドを実行し、スクリプトを定期実行する

```bash
watch -n 2 -t ./monitor.sh
```

