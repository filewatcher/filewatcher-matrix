# Filewatcher Matrix

[![Cirrus CI - Base Branch Build Status](https://img.shields.io/cirrus/github/filewatcher/filewatcher-matrix?style=flat-square)](https://cirrus-ci.com/github/filewatcher/filewatcher-matrix)
[![Codecov branch](https://img.shields.io/codecov/c/github/filewatcher/filewatcher-matrix/main.svg?style=flat-square)](https://codecov.io/gh/filewatcher/filewatcher-matrix)
[![Code Climate](https://img.shields.io/codeclimate/maintainability/filewatcher/filewatcher-matrix.svg?style=flat-square)](https://codeclimate.com/github/filewatcher/filewatcher-matrix)
[![Depfu](https://img.shields.io/depfu/filewatcher/filewatcher-matrix?style=flat-square)](https://depfu.com/repos/github/filewatcher/filewatcher-matrix)
[![Inline docs](https://inch-ci.org/github/filewatcher/filewatcher-matrix.svg?branch=main)](https://inch-ci.org/github/filewatcher/filewatcher-matrix)
[![License](https://img.shields.io/github/license/filewatcher/filewatcher-matrix.svg?style=flat-square)](LICENSE.txt)
[![Gem](https://img.shields.io/gem/v/filewatcher-matrix.svg?style=flat-square)](https://rubygems.org/gems/filewatcher-matrix)

Spawn [Filewatchers](https://github.com/filewatcher/filewatcher)
from file with path-command matrix.

## Installation

Add this line to your application's Gemfile:

```ruby
gem 'filewatcher-matrix'
```

And then execute:

```shell
bundle install
```

Or install it yourself as:

```shell
gem install filewatcher-matrix
```

## Usage

```yaml
# filewatchers.yaml

- :pattern: 'Gemfile{,.lock}'
  :command: bundle install && pumactl restart

- :pattern: '**/{*.{rb,ru,y{a,}ml}}'
  :exclude: '**/{spec/**/*,config/**/*.example*}'
  :command: pumactl restart

- :pattern:
    - assets/styles/**/*
    - postcss.config.js
  :command: pnpm run build:styles

- :pattern:
    - assets/scripts/**/*
    - rollup.config.js
  :command: pnpm run build:scripts

- :pattern: 'package.json'
  :command: pnpm install && pnpm run build
```

```ruby
require 'filewatcher/matrix'

matrix = Filewatcher::Matrix.new('filewatchers.yaml')
matrix.start
```

## Development

After checking out the repo, run `bundle install` to install dependencies.

Then, run `toys rspec` to run the tests.

To install this gem onto your local machine, run `toys gem install`.

To release a new version, run `toys gem release %version%`.
See how it works [here](https://github.com/AlexWayfer/gem_toys#release).

## Contributing

Bug reports and pull requests are welcome on [GitHub](https://github.com/filewatcher/filewatcher-matrix).

## License

The gem is available as open source under the terms of the
[MIT License](https://opensource.org/licenses/MIT).
