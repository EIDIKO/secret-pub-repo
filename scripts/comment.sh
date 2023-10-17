#!/bin/bash
TOKEN="${{ secrets.MY_PAT }}"         
COMMENT_CONTENT=$(<table.md)
echo $COMMENT_CONTENT
COMMENT_BODY="|ISSUE_NUMBER|ISSUE_URL|ISSUE_TITLE|ASS_LOGIN|ASS_TYPE|\n|------------|---------|-----------|---------|--------|\n|ISSUE_NUMBER|ISSUE_URL|ISSUE_TITLE|ASS_LOGIN|ASS_TYPE|"
curl -X POST \
    -u "$TOKEN" \
    -H "Accept: application/vnd.github.v3+json" \
    "https://api.github.com/repos/EIDIKO/secret-pub-repo/issues/249/comments" \
    -d '{
      "body": "'"$COMMENT_BODY"'"
    }'                    

