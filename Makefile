setup:
	pip install -r requirments.txt

init:
	pip install -r init.txt
	virtualenv pingpong
	virtualenv -p /usr/bin/python2.7 pingpong
