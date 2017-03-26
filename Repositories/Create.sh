#!/bin/bash
#HatenaId = $1
#BlogId = $2
sqlite=sqlite3
GITHUB_USER_NAME=ytyaru
PATH_DB=./GitHub.Repositories.${GITHUB_USER_NAME}.sqlite3
# Create Table
${sqlite} "${PATH_DB}" < ./Repositories.sql
${sqlite} "${PATH_DB}" < ./Counts.sql
${sqlite} "${PATH_DB}" < ./Languages.sql
${sqlite} "${PATH_DB}" < ./Licenses.sql
# Check
${sqlite} "${PATH_DB}" < ./Check.sql

