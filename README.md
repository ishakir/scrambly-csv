[![Build Status](https://travis-ci.org/ishakir/scrambly-csv.svg)](https://travis-ci.org/ishakir/scrambly-csv)
[![Code Climate](https://codeclimate.com/github/ishakir/scrambly-csv.png)](https://codeclimate.com/github/ishakir/scrambly-csv)
# Scrambly CSV

Ever got fed up with your users using bad practises to read your CSV files? I certainly have! This library will fix all those problems by writing CSV files in a way that ensures bet practices on the part of the reader. Whoever said people know what's best for them, eh?

## Installation

Add this line to your application's Gemfile:

    gem 'scrambly-csv'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install scrambly-csv

## Usage

    file = Tempfile.new('foo')
      CSV.open(file.path, 'wb') do |csv|
        writer = ScramblyCsv::Scrambly.new(csv, ["one", "two", "three", "four"])
        writer.write([1, 2, 3, 4])
        writer.write([5, 6, 7, 8])
        writer.write([9, 10, 11, 12])
      end
    puts file.path 

## Contributing

There are other features that need to implemented to save people from themselves:

1. Ensure that users can't just split on comma (difficult!)
2. Randomly quote some elements but not others
3. Add random escape charaters

In order to contribute:

1. Fork it ( https://github.com/ishakir/DSON/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
