#!/bin/bash
TOKEN="****************"         
echo "Testing scripts $TOKENT $HOOK_ID $TOKEN $REPO_NAME $ORG_OR_OWNER $ISSUE_NUMBER"
BASE_URL="https://api.github.com"
API_URL="$BASE_URL/orgs/$REPO_NAME/secret-scanning/alerts?per_page=100&page=1&state=open"
echo $API_URL
SCA_API_RESPONSE=$(curl -s -i -X GET -u "$TOKENT" "$API_URL")
echo "::set-output name=issue-number::${ORG_OR_OWNER}"
echo "Organization Name: $ISSUE_NUMBER"
#echo $SCA_API_RESPONSE
   

