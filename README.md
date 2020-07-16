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

To get termcode from year and semester:
```ruby
      code = TermCoder.new().forYearName(1999, "Winter")
```

To get year and semester from term code:
```ruby
      info = TermCoder.new().forCode(1220)
```

