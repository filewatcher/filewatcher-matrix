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

	github_uri = "https://github.com/filewatcher/#{spec.name}"

	spec.homepage = github_uri

	spec.metadata = {
		'bug_tracker_uri' => "#{github_uri}/issues",
		'changelog_uri' => "#{github_uri}/blob/v#{spec.version}/CHANGELOG.md",
		'documentation_uri' => "http://www.rubydoc.info/gems/#{spec.name}/#{spec.version}",
		'homepage_uri' => spec.homepage,
		'rubygems_mfa_required' => 'true',
		'source_code_uri' => github_uri,
		'wiki_uri' => "#{github_uri}/wiki"
	}

	spec.files = Dir['lib/**/*.rb', 'README.md', 'LICENSE.txt', 'CHANGELOG.md']

	spec.required_ruby_version = '>= 2.6', '< 4'

	spec.add_runtime_dependency 'filewatcher', '~> 2.0'

	## Windows requires some additional installations:
	## ```
	## MSYS2 could not be found. Please run 'ridk install'
	## or download and install MSYS2 manually from https://msys2.github.io/
	## ```
	unless RUBY_PLATFORM == 'java' || Gem.win_platform?
		spec.add_development_dependency 'pry-byebug', '~> 3.9'
	end

	spec.add_development_dependency 'bundler', '~> 2.0'
	spec.add_development_dependency 'gem_toys', '~> 0.12.1'
	spec.add_development_dependency 'toys', '~> 0.14.2'

	spec.add_development_dependency 'bundler-audit', '~> 0.9.0'

	spec.add_development_dependency 'codecov', '~> 0.6.0'
	spec.add_development_dependency 'rspec', '~> 3.9'
	spec.add_development_dependency 'simplecov', '~> 0.21.0'

	spec.add_development_dependency 'rubocop', '~> 1.44.1'
	spec.add_development_dependency 'rubocop-performance', '~> 1.0'
	spec.add_development_dependency 'rubocop-rspec', '~> 2.0'
end
