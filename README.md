# docker-roonserver
RoonServer downloading Roon on first run

This little project configures a docker image for running RoonServer.
It downloads RoonServer if not found on an external volume.

Example start:

    docker run -d \
      -v <roon-app>:/app \
      -v <roon-data>:/data \
      -v <roon-music>:/music \
      -v <roon-backups>:/backup \
      -p <port>:9003/udp \
      -p <port>:9100-9200/tcp \
      xthursdayx/docker-roonserver:latest
  
  * You should change the volume mappings to you local file system paths.
  * You should set your music library root to `/music` and configure backups to `/backup` on first run.
  * You should also publish 9003 (UDP) and the range 9100-9200 (TCP). Unfortunately these cannot be changed because you
  

## Version history

  * 2020-09-22: Removed `--net=host`option and replaced with exposed and published ports to make RoonServer's port use clearer to the user. 
  * 2019-03-18: Fix example start (thanx @heapxor); add `systemd` example.
  * 2019-01-23: updated base image to `debian-9.6`
  * 2017-08-08: created initial images based on discussion on roonlabs forum

