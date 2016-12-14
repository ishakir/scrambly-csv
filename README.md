[![Build Status](https://travis-ci.org/ishakir/DSON.svg)](https://travis-ci.org/ishakir/DSON)
[![Code Climate](https://codeclimate.com/github/ishakir/DSON.png)](https://codeclimate.com/github/ishakir/DSON)
# DSON

Such serialization now also parsing! Totally pure-ruby also completely DSON. Wow!

## Installation

Add this line to your application's Gemfile:

    gem 'DSON'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install DSON

## Usage

**Serialization**

Currently supports a ruby object, hash and array data structure and outputs it's representation in DSON ([Doge Serialized Object notation](http://dogeon.org/)). By way of an example, try:

    require 'DSON'

    puts DSON.such_serialize_wow({
      ruby: 'pure',
      supports: [
        'hash',
        'array'
      ]
    })

This should output:

    such "ruby" is "pure", "supports" is so "hash" also "array" many wow

Correct to the DSON spec.

Try it out with custom ruby objects too!

**Parsing**

Currently should parse a DSON object given as a string. Not the world's best put together parser but should function reasonably with general DSON strings. Try:

    require 'DSON'

    puts DSON.so_parse(
      'such "ruby" is "pure", "supports" is so "hash" also "array" many wow'
    )

## Contributing

I would love it if someone could contribute a pretty printer!

1. Fork it ( https://github.com/ishakir/DSON/fork )
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create a new Pull Request
