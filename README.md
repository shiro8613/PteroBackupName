# プテロのBackupファイルの元の名前をコピーできるようにします。

## 使用方法
```
test@localhost~$sudo su #権限昇格
root@localhost~#apt install git #gitをインストール
root@localhost~#cd /var/www/pterodactyl #プテロのインストールフォルダに移動
root@localhost~#git clone https://github.com/shiro8613/PteroBackupName #リポジトリをクローン
root@localhost~#cd PteroBackupName #フォルダに移動
root@localhost~#chmod install.sh #実行権限付与
root@localhost~#./install.sh #インストール
```

##スクリーンショット
![Alt text](image.png)

インストールすると詳細コンテキストメニューに「CopyOriginName」が増え、

クリックすると元の名前の「uuid.tar.gz」がコピーできます。
