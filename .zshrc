# from https://github.com/sorin-ionescu/prezto
source ~/.zprezto/init.zsh

# Uncomment the following line if you don't like systemctl's auto-paging feature:
# export SYSTEMD_PAGER=

export JAVA_HOME=/apps/jdk/latest
export PATH=$JAVA_HOME/bin:$PATH


# mac port if exist
if [[ -e ~/.portrc ]] then
  . ~/.portrc
fi

# User specific aliases and functions
alias manh='man -Hlynx' # man in html with lynx as the broswer of choice
alias V="vim"
alias vimrc="V ~/.vimrc"
alias j="jobs -l"
alias P="pushd"
alias D="dirs -v"

# added by Anaconda3 2.4.0 installer
export PATH="/home/pierre/anaconda3/bin:${PATH}"

# added apache spark
export SPARK_HOME="/opt/spark/spark-1.6.0"
export PATH="${SPARK_HOME}/bin:${PATH}"

# added /opt/scala/ if not it seems that pyspark fails to start
export SCALA_HOME="/opt/scala/latest"
export PATH=${SCALA_HOME}/bin:${PATH}

#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
SDKMAN_DIR_TMP="/home/pierre/.sdkman"
if [[ -e "${SDKMAN_DIR_TMP}" ]] then
	export SDKMAN_DIR="${SDKMAN_DIR_TMP}"
	[[ -s "$SDKMAN_DIR/bin/sdkman-init.sh" ]] && source "$SDKMAN_DIR/bin/sdkman-init.sh"
	SDKMAN_DIR_TMP=
fi
