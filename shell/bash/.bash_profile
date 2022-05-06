# Fig pre block. Keep at the top of this file.
. "$HOME/.fig/shell/bash_profile.pre.bash"
#cuik
alias encuesty="cd /Users/lhassinger/.ssh/"
alias encuestyssh="ssh -i id_rsa ubuntu@165.227.68.30"


alias pgdocker="docker run --name basic-postgres --rm -e POSTGRES_USER=postgres -e POSTGRES_PASSWORD=4y7sV96vA9wv46VR -e 
PGDATA=/var/lib/postgresql/data/pgdata -v /tmp:/var/lib/postgresql/data -p 5432:5432 -it postgres:14.1-alpine"
alias d="cd Documents"
alias keys="cd Documents/keys/" 
alias c="clear"
alias cuikapi="ssh -i "cuik-docker-admin-fabio.pem" ubuntu@ec2-52-6-248-110.compute-1.amazonaws.com"
alias cuikadmin="ssh -i "cuik-hotel-docker-backend.pem" ubuntu@ec2-34-195-19-171.compute-1.amazonaws.com"
alias cns="code . && npm start"
alias cys="code . && yarn start"
alias cnd="code . && npm run dev"
alias dev="npm run dev"
alias s="npm start"
alias pyme="ssh ubuntu@67.205.143.75"
alias sny="cd dev/wp-apps/SNY-iOS"
alias snytest="cd dev/test-app/SNY-iOS-PR"
alias develop="git checkout develop"

export PATH="$HOME/.serverless/bin:$PATH"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion
export PATH="$HOME/.composer/vendor/bin:$PATH"

export DENO_INSTALL="/Users/linder3hs/.deno"
export PATH="$DENO_INSTALL/bin:$PATH"

[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*

# Fig post block. Keep at the bottom of this file.
. "$HOME/.fig/shell/bash_profile.post.bash"
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
