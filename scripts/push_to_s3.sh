#!/bin/bash
env=dev
region=us-east-1
bucket_path=s3://aa407-main/target

aws s3 cp $WORKSPACE/RepoTwo/ ${bucket_path} --recursive --region ${region}
aws s3 cp $WORKSPACE/RepoOne/webpack/ ${bucket_path}/folder --recursive --region ${region}
