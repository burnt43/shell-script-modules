function log_and_execute {
  echo -n "$1..."

  if [ $LOG_AND_EXECUTE_DEBUG == 1 ]; then
    RESULT=0
  else
    bash -c "$2 1>/dev/null"
    RESULT=$?
  fi

  if [ $RESULT == 0 ]; then
    echo -e "\033[0;32mOK\033[0;0m"
  else
    echo -e "\033[0;31mFAIL\033[0;0m"
  fi

  return $RESULT
}
