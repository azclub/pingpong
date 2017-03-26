setup:
	pip install -r requirments.txt

# init:
	# pip install -r init.txt
	# export WORKON_HOME=~/Envs
	# source /usr/local/bin/virtualenvwrapper.sh
	# mkvirtualenv pingpong

deploy:
ansible home -i ansible/hosts -m command -a 'git '
