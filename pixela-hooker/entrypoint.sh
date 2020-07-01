#!/bin/sh -l

curl -X POST \
  https://pixe.la/v1/users/${PIXELA_USERNAME}/webhooks/${PIXELA_WEBHOOK_HASH} \
  -H "X-USER-TOKEN:${PIXELA_TOKEN}"
