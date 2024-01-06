jupyter notebookはローカルに保存しており、今はgithubにはアップしない

#構成は以下の通り
192.168.20.122 ansible03 ubuntu22.04
192.168.20.124 slurm01 # centos7.9
192.168.20.125 slurm02 # centos7.9
192.168.20.123 slurm03 # ubuntu22.04 


#ansible03への最低限のインストールは
ssh
anaconda
anaconda にjupyter notebook 
jupyter notebook から ansibleのインストール

#ubuntu22.04にはopenssh-serverをインストールしないとSSHが接続出来ない
# sudo apt update
# sudo apt install -y openssh-server

#ansible03で公開鍵の作成
# ssh-keygen -t ed25519
#　公開鍵のコピー
# ssh-copy-id ~/.ssh/id_ed25519.pub terachi@[ホスト名]

#ansible03のみ手動で作業
sudo setenforce 0
sudo ufw disable
# anacondaのインストール
wget  https://repo.anaconda.com/archive/Anaconda3-2023.09-0-Linux-x86_64.sh
chmod 755 ./Anaconda3-2023.09-0-Linux-x86_64.sh
./Anaconda3-2023.09-0-Linux-x86_64.sh
#Anacondaのインストールはデフォルトのまま /home/terachi/anaconda
#conda initの実行は yes
#インストール後、一度ターミナルを閉じて、再度開くとbase環境でログインされている状態
pip install jupyter notebook
pip install ansible
jupyter notebook
#実行して出力されたtokenを使って以後はvscodeから作業
#vscode リモートエクスプローラーから「＋」で追加
# terachi@192.168.20.122
#設定は/Users/tera/.sshに保存(macの中）
# 接続したらgithub copilot , jupyter notebookの拡張モジュールをインストールする
# /home/terachi/workspaceを作成する
#workspace/ansible_host_setup_ubuntu22.04を作成する
#ansible_host_setup.ipynbファイルを作成する
#gitをインストールする
#あとはvscodeでplaybookを修正し実行する
