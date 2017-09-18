## self-destruct
rm()
{
  if [ "$1" = "-rf/" ]
  then
    shift
    echo '' && echo 'Do a self destruct in 5.. 4.. 3.. 2.. 1..' && echo 'Just kidding :p' && echo '' && echo "Let's taking a screenshot instead" && scrot -cd 5 "$@"
  else
    command rm "$@"
  fi

#!/bin/bash

# Create new web project folder and grab html5 boilerplate
website() {
mkdir $1
cd $1
git init
git remote add origin https://github.com/Gazaunga/HTML5-Boilerplate.git
git pull origin master
ls -a
$EDITOR index.html
}

# List contents after cd
cd()
{
 builtin cd "$*" && ls
}

# Create a new directory and enter it
mkd() { mkdir $1 && cd $1; }

gacp () {
  git add --all --verbose
  git commit -m "$1"
  git push -u origin HEAD
}

## Interesting bash function for setting up a new front-end project
# Usage: new_project DIRNAME DESCRIPTION
function new_project() {
  git init "$1" && \
	  pushd "$1" && \
	  echo "$2" > README.txt && \
	  echo "$2" > .git/description && \
	  echo "/node_modules/" >> .gitignore && \
	  hub create -d "$2" && \
	  yarn init && \
	  gacp initial
}

