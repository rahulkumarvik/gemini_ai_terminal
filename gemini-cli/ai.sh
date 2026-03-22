#!/bin/bash

curl -s "https://generativelanguage.googleapis.com/v1beta/models/gemini-flash-latest:generateContent?key=$GEMINI_API_KEY" \
-H "Content-Type: application/json" \
-X POST \
-d "{\"contents\": [{\"parts\":[{\"text\": \"$*\"}]}]}" \
| jq -r '.candidates[0].content.parts[0].text'

