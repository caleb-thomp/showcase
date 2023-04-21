alias src="source /home/runner/CalebNuxtjs/.caleb.sh"
alias fxx='/home/runner/CalebNuxtjs/.caleb.sh'
alias cls='clear'
alias npr='npm run'
alias gaa='git add .'
alias gss='git status'
alias gba='git branch --all'
alias cfg='git config --list'
alias glt='git config --global --unset user.password'
alias gaaa='git add --all'
alias gomm='git commit -m'
alias gco='git checkout'
alias gcob='git checkout -b'
alias glgo='git log --oneline'
alias gpo='git push origin'


gign() {
  # Create a .gitignore file
  touch .gitignore

  # Write rules to the .gitignore file
  echo "/*" >> .gitignore
  echo "!/.gitignore" >> .gitignore
  echo "!/.caleb.sh" >> .gitignore
  echo "!/README.md" >> .gitignore
}

case "$1" in
   "lo") echo "Working"
   ;;
   "git") git config --global user.email "caleb.softdev@gmail.com" &&  git config --global user.name "Caleb Thompson" && gign
   ;;
   "gcase") git remote add origin https://github.com/caleb-thomp/showcase.git
   exit 1
esac
