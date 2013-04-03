# LTSV::Logger

Logger for LTSV(Labeled Tab-separated Values) format.

## Installation

Add this line to your application's Gemfile:

    gem 'ltsv-logger'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install ltsv-logger

## Usage

Use `Hash` instead of `String` message:

```ruby
# e.g.: rails
require 'ltsv-logger'

LTSV::Logger.open(File.join('log', "event_#{Rails.env}.log"))
ltsv = { method: "GET", uri: "/foo", status: 200 }
LTSV.logger.info ltsv # => time:2013-04-02 21:55:05 +0900 method:GET uri:/?max_id=9235&page=2 status:200

```

If logging `Hash` like request parameters, serialize `Hash`. e.g.:`Hash.to_json`:

```ruby
# e.g.: rails
# params = { max_id: 9235, page: 2, controller: 'foo', action: 'bar' }

ltsv = { method: "GET", uri: "/?max_id=9235&page=2", status: 200, params: params.to_json }
LTSV.logger.info ltsv # => time:2013-04-02 21:55:05 +0900 method:GET uri:/?max_id=9235&page=2 status:200 params:{"max_id":"9235","page":"2","controller":"foo","action":"bar"}
```

Maybe, to use `Marshal` is not good, because it's difficult to deserialize with other programe launguage.

Other way, you can use `String`, as usual:

```ruby
LTSV.logger.info "This is sample." # => time:2013-04-02 21:55:05 +0900 message:This is sample.
```

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request

## Copyright
Copyright © 2013 terut. See LICENSE.txt(MIT-LICENCE) for further details.
