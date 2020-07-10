Ruby Gem to convert year and semester to the term codes used at UofM

## Installation

Nothing special.
Add this line to your application's Gemfile:

```ruby
gem 'term-coder'
```

And then execute:

    $ bundle install

Or install it yourself as:

    $ gem install term-coder

## Usage

In it's most basic form:
```ruby
	termcode = TermCoder.new(year, term).code
```

