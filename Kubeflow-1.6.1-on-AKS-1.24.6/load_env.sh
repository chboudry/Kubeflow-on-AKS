#!/bin/bash
set -o errexit
set -o pipefail
set -o nounset

while read -r line
  do
    # split the line into name/value
    name=$(echo "$line" | cut -d= -f1)
    value=$(echo "$line" | cut -d= -f2)

    # if the value is quote-delimited then strip that as we quote in the declare statement
    if [[ ("${value:0:1}" == "'" &&  "${value: -1:1}" == "'") || (("${value:0:1}" == "\"" &&  "${value: -1:1}" == "\"")) ]]; then
      value=${value:1:-1}
    fi

    # declare the variable and export to the caller's context
    # shellcheck disable=SC2086
    declare -g $name="$value"
done < <(grep -v -e '^[[:space:]]*$' -e '^#' "$1" ) # feed in via Process Substition to avoid bash subshell (http://mywiki.wooledge.org/ProcessSubstitution)

set +o nounset
