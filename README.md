# Textgem

This is a ruby module that can be used to interact with the
textbelt api (textbelt.com)

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'textgem'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install textgem

## Usage

```ruby
Textgem.sendsms("phone", "message", "textbelt_api_key", "webhook")
```
```ruby
Textgem.quota("textbelt_api_key")
```
```ruby
Textgem.status("textid")
```
```ruby
Textgem.repliecheck("webhook")
```
```ruby
Textgem.testsms("textbelt_api_key")
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/Da2alus/textgem.
