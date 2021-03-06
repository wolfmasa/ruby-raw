# Rubyraw

Library to decode Camera Raw file.
Decode processing is constructed by DCRaw.

[dcraw](https://www.cybercom.net/~dcoffin/dcraw/)

DCRaw is a most famous program that decode raw file.
This gem library include the dcraw.c as C-language extention.

If you want to decode raw file by ruby. This gem help you.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'rubyraw'
```

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install rubyraw

## Usage

```ruby
opt = Hash.new # hash type of decode option

opt[:print_message] = true # print decode message
opt[:apply_awb] = true # apply Auto White Balance with dcraw default
opt[:tiff_mode] = true # output tiff file instead of ppm

raw_path = '~/IMG_0001.CR2'
Rubyraw::Raw.new.decode(path, opt)
```

## Development

After checking out the repo, run `bin/setup` to install dependencies. Then, run `rake test` to run the tests. You can also run `bin/console` for an interactive prompt that will allow you to experiment.

To install this gem onto your local machine, run `bundle exec rake install`. To release a new version, update the version number in `version.rb`, and then run `bundle exec rake release`, which will create a git tag for the version, push git commits and tags, and push the `.gem` file to [rubygems.org](https://rubygems.org).

## Contributing

Bug reports and pull requests are welcome on GitHub at https://github.com/wolfmasa/ruby-raw.

