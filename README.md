# VPS n8n postgres Test

## このリポジトリについて

このリポジトリはn8nとpostgresをVPS上で構築する方法を検証するためのリポジトリです。

## コマンド

### 初期設定

#### Traefik導入

詳細は[こちら](https://github.com/cti1650/vps-traefik_test)を参照してください。


#### アクセス権限付与

これを付与しないとn8nを起動できなかった

```bash
sudo chown -R 1000:1000 ./data
```

### サーバー起動

- ローカル環境
  ```
  sudo make dev
  ```

- Prod環境

  ```
  sudo make prod
  ```

### サーバー停止

- ローカル環境
  ```
  sudo make dev-down
  ```

- Prod環境

  ```
  sudo make prod-down
  ```


## 課題
- n8nの内部リンクがlocalhostになってしまっている
  - 環境変数にWEBHOOK_URLを追加して解消した


## 参考サイト
- [OAuth コールバック URL は localhost:5678 です - 質問 - n8n コミュニティ](https://community.n8n.io/t/oauth-callback-url-is-localhost-5678/2867/16)  
- [n8n（IFTTT,Zappierの代替）をセルフホストして自動化を快適にする #zapier - Qiita](https://qiita.com/malvageee/items/eda4eb3b71a31bc78a4f#n8n%E3%81%AE%E5%88%9D%E6%9C%9F%E8%A8%AD%E5%AE%9A)  
- [デプロイメント環境変数 | n8n ドキュメント](https://docs.n8n.io/hosting/configuration/environment-variables/deployment/)  