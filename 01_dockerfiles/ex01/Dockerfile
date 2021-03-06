# Sources:
# https://github.com/overshard/docker-teamspeak

#------------------------------------------------------------------------------#
# From a debian image you will add the appropriate sources to create a
# TeamSpeak server, that will launch along with your container.
# It will be deemed valid if at least one user can connect to it and engage
# in a normal discussion (no far-fetched setup), so be sure to create your
# Dockerfile with the right options. Your program should get the sources when
# it builds, they cannot be in your repository.
#------------------------------------------------------------------------------#

# Base system
FROM    debian

# Download and install everything from the repos.
RUN     DEBIAN_FRONTEND=noninteractive \
        apt-get -y update && \
        apt-get -y install bzip2 && \
        rm -rf /var/lib/apt/lists/* /tmp/* /var/tmp/* && \
        apt-get autoremove -y && \
        apt-get clean

# Download and install TeamSpeak 3.0.13.8
ADD     http://dl.4players.de/ts/releases/3.0.13.8/teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 ./
RUN     tar jxf teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2 && \
        mv teamspeak3-server_linux_amd64 /opt/teamspeak && \
        rm teamspeak3-server_linux_amd64-3.0.13.8.tar.bz2

# Load in all of our config files.
ADD     ./scripts /start

# Fix all permissions
RUN     chmod +x /start

# /start runs it.
EXPOSE  9987/udp
EXPOSE  30033
EXPOSE  10011

RUN     useradd teamspeak && mkdir /data && chown teamspeak:teamspeak /data
VOLUME  ["/data"]
USER    teamspeak
CMD     ["/start"]
