# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    17_display-containers.sh                           :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 18:37:46 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 18:37:47 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 17. Display all the currently active containers on the Char virtual machine
#------------------------------------------------------------------------------#

# Display all the currently active containers.
docker ps
