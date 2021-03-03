# frozen_string_literal: true

require_relative 'lib/filewatcher/matrix/version'

Gem::Specification.new do |spec|
	spec.name        = 'filewatcher-matrix'
	spec.version     = Filewatcher::Matrix::VERSION
	spec.authors     = ['Alexander Popov']
	spec.email       = ['alex.wayfer@gmail.com']

	spec.summary     = 'Spawn Filewatchers from file with path-command matrix'
	spec.description = <<~DESC
		Spawn Filewatchers from file with path-command matrix.
	DESC
	spec.license = 'MIT'

	source_code_uri = 'https://github.com/filewatcher/filewatcher-matrix'

	spec.homepage = source_code_uri

	spec.metadata['source_code_uri'] = source_code_uri

	spec.metadata['homepage_uri'] = spec.homepage

	spec.metadata['changelog_uri'] =
		'https://github.com/filewatcher/filewatcher-matrix/blob/master/CHANGELOG.md'

	spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

	spec.required_ruby_version = '>= 2.5', '< 4'

	spec.add_runtime_dependency 'filewatcher', '>= 2.0.0.beta3', '< 3'

	spec.add_development_dependency 'pry-byebug', '~> 3.9'

	spec.add_development_dependency 'bundler', '~> 2.0'
	spec.add_development_dependency 'gem_toys', '~> 0.6.1'
	spec.add_development_dependency 'toys', '~> 0.11.0'

	spec.add_development_dependency 'bundler-audit', '~> 0.7.0'

	spec.add_development_dependency 'codecov', '~> 0.5.0'
	spec.add_development_dependency 'rspec', '~> 3.9'
	spec.add_development_dependency 'simplecov', '~> 0.21.0'

	spec.add_development_dependency 'rubocop', '~> 1.0'
	spec.add_development_dependency 'rubocop-performance', '~> 1.0'
	spec.add_development_dependency 'rubocop-rspec', '~> 2.0'
end
