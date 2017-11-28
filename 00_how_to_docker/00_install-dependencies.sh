# **************************************************************************** #
#                                                                              #
#                                                         :::      ::::::::    #
#    00_install-dependencies.sh                         :+:      :+:    :+:    #
#                                                     +:+ +:+         +:+      #
#    By: ivelutin <ivelutin@student.42.fr>          +#+  +:+       +#+         #
#                                                 +#+#+#+#+#+   +#+            #
#    Created: 2017/11/27 14:33:06 by ivelutin          #+#    #+#              #
#    Updated: 2017/11/27 14:33:45 by ivelutin         ###   ########.fr        #
#                                                                              #
# **************************************************************************** #
#!/bin

#------------------------------------------------------------------------------#
# 0. Install all the dependencies.
#------------------------------------------------------------------------------#

# Check if the user uses a Mac.
if [ $(uname -s) = "Darwin" ] ; then
    echo " > Updating / installing dependencies..."
    # protect all of this, if one fails, just abort abort!!! lol !!!
    brew update
    brew tap phinze/homebrew-cask && brew install brew-cask;
    brew install docker
    brew install docker-machine
    brew cask install vagrant;
    brew cask install virtualbox;
    brew install shc
fi
