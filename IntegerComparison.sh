#!/bin/bash
VARIABLE_ONE="10"
VARIABLE_TWO="20"
VARIBLE_THREE="30"
VARIBLE_FOUR="40"

if [[ " ${VARIABLE_ONE} " -gt " ${VARIABLE_TWO} " ]]; then
  echo "${VARIABLE_ONE} is greater than ${VARIABLE_TWO}."

  echo "${VARIABLE_ONE} is less than ${VARIABLE_TWO}."
fi

# Comparing multiple Integers using && 

