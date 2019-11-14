#!/usr/bin/env bash

BUCKET=$1
[[ -z "${BUCKET}" ]] && echo "specify bucket name" && exit 1

for each in $(titan log -t commit patients-db| egrep 'commit ' | awk '{print $2}'); do 
    echo deleting $each
    titan delete -c $each patients-db
done

aws s3 rm --recursive s3://${BUCKET}/patients-db

titan push -r origin patients-db