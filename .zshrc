PS1='tg{%1~} '
alias dsky=". dsky"

function fckvwls {
  echo $1 | sed "s/[aeiou]//g"
}
