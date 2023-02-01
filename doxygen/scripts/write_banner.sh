#!/bin/bash

cat <<-BANNER_SCRIPT
print_welcome_banner() {
	cat <<-BANNER 

	##############################################################
	#                                                            #
	# Welcome to Klab's Doxygen documentation server console     #
	#                                                            #
	# Run 'mkdox' command in the project root path to generate   #
	# the Doxygen project documentation                          #
	#                                                            #
	# Explore the documentation at localhost:9596/<project-name> #
	# in your favorite http client                               #
	#                                                            #
	##############################################################

	BANNER
}

print_welcome_banner;
BANNER_SCRIPT
