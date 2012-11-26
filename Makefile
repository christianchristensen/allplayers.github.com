all: deleteall osmplayer aptheme

deleteall:
	rm -rf vendor/*

osmplayer:
	homedir=`pwd`; git clone git://github.com/mediafront/osmplayer.git vendor/osmplayer; cd vendor/osmplayer; git checkout 27ddf817fb129d738f5d71a5ac302e6a8691884f; rm -rf .git; cd ${homedir};

aptheme:
	homedir=`pwd`; git clone git://github.com/AllPlayers/allplayers-theme.git vendor/allplayerstheme; cd vendor/allplayerstheme; git checkout 72b68a7937b5ac0d8f147681e896f867d6541db7; rm -rf .git; cd ${homedir};
