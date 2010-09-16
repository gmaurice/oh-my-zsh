# return the current perl version
function perlbrew_prompt_info() {
  perlbrew_version=$(perlbrew installed 2> /dev/null|grep \*|sed 's/(\*)//') || return
  echo "($perlbrew_version)"
}
