# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    08_launch-alpine.sh                                :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 16:55:49 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 16:55:50 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin/sh

# Include exported enviroment variables
. "./_ENV.sh"

#------------------------------------------------------------------------------#
# 8. Launch a shell from an alpine container, and make sure that you can
# interact directly with the container via your terminal, and that the container
# deletes itself once the shell’s execution is done.
#------------------------------------------------------------------------------#

# Pulls the container.
docker pull alpine

# Runs a shell from stdin, and deletes itself one its execution is done.
docker run -it --rm alpine /bin/ash
