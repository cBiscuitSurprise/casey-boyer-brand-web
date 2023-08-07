#!/bin/bash

PROFILE=casey-dev
SOURCE=build/web/
DESTINATION=s3://casey.boyer.consulting

flutter clean
flutter build web --web-renderer canvaskit --release
aws s3 cp --profile $PROFILE --recursive $SOURCE $DESTINATION
