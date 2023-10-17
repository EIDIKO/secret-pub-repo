#!/bin/bash
API_URL="$BASE_URL/orgs/$REPO_NAME/secret-scanning/alerts?per_page=100&page=1&state=open"
echo "Local Variable $API_URL"
echo "Secret(Token): $TOKEN"
echo "Env Variable(BASE_URL): $BASE_URL"
echo "Context data(REPO_NAME): $REPO_NAME"
echo "Context data(ORG_OR_OWNER): $ORG_OR_OWNER"
echo $API_URL
SCA_API_RESPONSE=$(curl -s -i -X GET -u "$TOKENT" "$API_URL")
#echo "::set-output name=owner::${ORG_OR_OWNER}"
echo "{owner}={${ORG_OR_OWNER}}" >> $GITHUB_OUTPUT
echo "Job Output(ORGOROWNER): $ORGOROWNER"
#echo $SCA_API_RESPONSE
   

