# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    04_pull-container.sh                               :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 14:54:46 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 14:54:48 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 4. Get the hello-world container from the Docker Hub, where it’s available.
#------------------------------------------------------------------------------#

# Gets the hello-world container from Docker Hub.
docker pull hello-world
