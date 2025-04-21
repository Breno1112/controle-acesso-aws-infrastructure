#!/bin/bash

LAMBDA_NAME="apps/unlock-lock"
BUILD_DIR="build"

rm -rf $BUILD_DIR
mkdir -p $BUILD_DIR/python

# Install dependencies
pip install -r $LAMBDA_NAME/requirements.txt -t $BUILD_DIR/python

# Copy source code
cp $LAMBDA_NAME/*.py $BUILD_DIR/python/

# Zip everything
cd $BUILD_DIR/python
zip -r ../../lambda.zip .
cd ../..
