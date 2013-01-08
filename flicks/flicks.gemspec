Gem::Specification.new do |s|
	s.name					= "flicks"
	s.version				= "1.0.1"
	s.author				= "Sean via Pragmatic Studio"
	s.email					= "somlor@gmail.com"
	s.summary				= "Plays and reviews movies"
	s.description		= File.read(File.join(File.dirname(__FILE__), 'README.md'))
	s.homepage			= "http://pragmaticstudio.com" 

	s.files					= Dir["{bin,lib,spec}/**/*"] + %w(LICENSE.md README.md)
	s.test_files		= Dir["spec/**/*"]
	s.executables		= [ 'flicks' ]

	s.required_ruby_version = '>=1.9'
	s.add_development_dependency 'rspec'
end