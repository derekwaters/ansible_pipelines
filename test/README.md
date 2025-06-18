# Testing the pipelines

## Send a sample request to the push pipeline

curl -i -X POST <webhook_url> -H "Content-Type: application/kson" --data-binary "@data/github_push_webhook_payload.json"