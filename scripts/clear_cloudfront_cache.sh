PROFILE=casey-dev

aws --profile $PROFILE cloudfront create-invalidation \
  --distribution-id $1 \
  --paths '/*'
