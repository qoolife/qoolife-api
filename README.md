# QoolifeApi - Ruby client for Qoolife API

Ruby API client for [Qoolife](https://qoolife.com), so you can easily plug it into your App.

## Installation

Add this line to your application's Gemfile:

    gem 'qoolife-api'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install qoolife-api

## Usage

Most of QoolifeApi methods need authentication with a Qoolife account. You need to provide this data to the client like this:

    QoolifeApi.authenticate 'myuser@example.com', 'veeerysekret'

After that, you can retrieve resources from the API using `ActiveResource` syntax.

Some examples:

    QoolifeApi::JournalEntries.all # will retrieve a paginated collection of the authenticated users' journal entries
    QoolifeApi::JournalEntries.last.measurements # measurements from the last journal entry
    QoolifeApi::Conversation.all # conversations of any kind where the user is watcher.
    QoolifeApi::Conversation.last.posts.last # last message post in the last conversation where the user is watcher.

Check the [API docs](http://developer.qoolife.com) for a full reference of what Qoolife API can do.

## Contributing

1. Fork it ( https://github.com/[my-github-username]/qoolife-api/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
