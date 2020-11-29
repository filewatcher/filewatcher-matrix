# frozen_string_literal: true

require 'filewatcher'
require 'yaml'

require_relative 'matrix/version'

class Filewatcher
	## Spawn Filewatchers from file with path-command matrix
	class Matrix
		## Initialize Filewatcher instances without any actions
		## @param path [String] the path of YAML file, relative to the current working directory
		##   or can be absolute
		def initialize(path)
			@filewatchers = YAML.load_file(path).map! do |args|
				{
					filewatcher: Filewatcher.new(args.fetch(:pattern), exclude: args[:exclude]),
					command: args.fetch(:command)
				}
			end
		end

		## Spawn Threads with active Filewatchers and execute commands on changes
		def start
			@filewatchers.map do |hash|
				Thread.new do
					command = hash[:command]
					hash[:filewatcher].watch do |_changes|
						puts "> #{command}"
						system command
					end
				end
			end.each(&:join)
		end
	end
end
