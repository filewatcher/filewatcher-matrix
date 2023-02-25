# frozen_string_literal: true

require 'pry-byebug' unless RUBY_PLATFORM == 'java' || Gem.win_platform?

require 'simplecov'

if ENV['CI']
	require 'simplecov-cobertura'
	SimpleCov.formatter = SimpleCov::Formatter::CoberturaFormatter
end

SimpleCov.start

require_relative '../lib/filewatcher/matrix'
