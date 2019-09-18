function log_and_execute {
  echo -n "$1..."

  if [ "$LOG_AND_EXECUTE_DEBUG" == "1" ]; then
    local result=0
  else
    bash -c "$2 1>/dev/null"
    local result=$?
  fi

  if [ $result == 0 ]; then
    echo -e "\033[0;32mOK\033[0;0m"
  else
    echo -e "\033[0;31mFAIL\033[0;0m"
  fi

  return $result
}
