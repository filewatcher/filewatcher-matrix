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

	spec.required_ruby_version = '>= 2.7', '< 4'

	spec.add_runtime_dependency 'filewatcher', '~> 2.0'
end
