docker-btsync
=============

Dockerfile for building btsync docker image

It is just first version of Dockerfile for btsync image.
It requires some "hand work" after git clone,
in future will be special file for installing and some config work.

### Installing: ###
```
  git clone https://github.com/mementor/docker-btsync.git
  cd docker-btsync
```

Make dir to downloads and working files:
```
  sudo mkdir -p /dvol/btsync/.sync
```

You need to edit btsync.conf (at least login/pass) and copy to destination dir:
```
  vim btsync.conf
  sudo cp btsync.conf /dvol/btsync/btsync.conf
```

Now, just run docker:
```
  docker build -t btsync .
  docker run -d -p 8080:8080 -p 6880:6880 -v /dvol/btsync/:/btsync/ btsync
```

Thats it!

