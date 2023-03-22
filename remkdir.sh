#!/bin/sh

TARGET_DIR="${1}"
INCLUDES="${2}"

if [ "${TARGET_DIR}" ]; then
  if [ -d "${TARGET_DIR}" ]; then
    rm -rf "${TARGET_DIR}"
  fi

  mkdir -p "${TARGET_DIR}"

  if [ "${INCLUDES}" ]; then
    cp -a ${INCLUDES} "${TARGET_DIR}"
  fi

  ls -a "${TARGET_DIR}"

  exit 0
else
  echo 'Invalid argument error'

  exit 1
fi
