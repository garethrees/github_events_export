# GithubEventsExport

Exports [GitHub Events](https://developer.github.com/v3/activity/events/#list-events-performed-by-a-user)
performed by you to individual JSON files in the current working directory.

## Installation

    $ gem install github_events_export

## Usage

    mkdir -p ~/backups/github/events
    cd ~/backups/github/events

    github_events_export --token=YOUR_GITHUB_TOKEN

    ls -1 | head -n 3
    10789243348.json
    10789514477.json
    10791070051.json

    cat 10789243348.json | jq | head
    {
      "id": "10789243348",
      "type": "PullRequestEvent",
      "actor": {
        "id": 282788,
        "login": "garethrees",
        "display_login": "garethrees",
        "gravatar_id": "",
        "url": "https://api.github.com/users/garethrees",
        "avatar_url": "https://avatars.githubusercontent.com/u/282788?"

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run
`rake test` to run the tests. You can also run `bin/console` for an interactive
prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To
release a new version, update the version number in `version.rb`, and then run
`bundle exec rake release`, which will create a git tag for the version, push
git commits and tags, and push the `.gem` file to
[rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at
https://github.com/garethrees/github_events_export.
