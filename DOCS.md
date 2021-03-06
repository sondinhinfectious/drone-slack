Use the Slack plugin to send a message to your Slack channel when a build completes. You will need to supply Drone with an [Incoming Webhook URL](https://my.slack.com/services/new/incoming-webhook).

The following parameters are used to configuration the notification:

Parameter     | Description
--------------|----------------------------
`webhook`     | json payloads are sent here
`channel`     | messages sent to the above webhook are posted here
`recipient`   | alternatively you can send it to a specific user
`username`    | choose the username this integration will post as

Example configuration:

```yaml
script:
  slack:
    webhook: https://hooks.slack.com/services/...
    channel: dev
    username: drone
```

Example configuration using template to customize the message:

```yaml
script:
  slack:
    webhook: https://hooks.slack.com/services/...
    channel: dev
    username: drone
    template: >
      build #{{ build.number }} finished with a {{ build.status }} status
```
