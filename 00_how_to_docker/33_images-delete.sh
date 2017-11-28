# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    33_images-delete.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:36:27 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:36:28 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 33. Delete all the container images stored on the Char virtual machine,
# in one command as well.
#------------------------------------------------------------------------------#

# Delete all the container images.
docker rmi -f $(docker images -a -q)
