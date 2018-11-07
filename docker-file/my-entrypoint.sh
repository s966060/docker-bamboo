#!/bin/bash
echo "MY ENTRY POINT"
id
pwd
ls -ln

echo "BAMBOO_SERVER_HOME           = ${BAMBOO_SERVER_HOME}"
echo "BAMBOO_SERVER_INSTALL_DIR    = ${BAMBOO_SERVER_INSTALL_DIR}"

/entrypoint.sh

