# ToyRobot

This is an exercise in trying out typeing systems for Ruby. The program is Toy Robot based off the [ebook with the same name](https://leanpub.com/toyrobot/).

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'toy_robot'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install toy_robot

## Usage

TODO: Write usage instructions here

## Testing

A test script is included in the `bin/` directory. Use the command `bin/test` to run the test suite.

## Type Checking

### Ruby 3 RBS

This repo was created using [RBS](https://github.com/ruby/rbs) on the `main` branch.

RBS is a language for describing Ruby types. It is included with Ruby 3.0. It still requires another program to use the described types for checks against the source code. RBS has no effect on Ruby at run time. For this repo I've used [`steep`](https://github.com/soutaro/steep) to do type checking.

RBS type signatures are included in the `sig` directory. Use `steep` to type check the repository: `steep check`.

`steep watch lib` can also be used to automatically check files as they are saved.

## Development

After checking out the repo, run `bin/setup` to install dependencies. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and the created tag, and push the `.gem` file to [rubygems.org](https://rubygems.org).

