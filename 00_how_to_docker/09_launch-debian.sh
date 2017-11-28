# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    09_launch-debian.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:33:20 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:33:22 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 9. From the shell of a debian container, install via the container’s
# package manager everything you need to compile C source code and push it onto
# a git repo
#------------------------------------------------------------------------------#

# Pulls the container.
docker pull debian

# Runs a shell from stdin, and deletes itself one its execution is done.
docker run -it --rm debian /bin/sh

#*
## Install via the container’s package manager everything needed to compile
## C source code and push it onto a git repo.
## .............................................................................
#*

# apt-get update && apt-get upgrade -y
# apt-get install -y build-essential gcc git
