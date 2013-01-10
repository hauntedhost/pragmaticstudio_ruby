Gem::Specification.new do |s|
  s.name         = "prag_prog_game"
  s.version      = "1.0.0"
  s.author       = "Sean Omlor"
  s.email        = "somlor@gmail.com"
  s.homepage     = "http://seanomlor.com"
  s.summary      = "Game built in Pragmatic Studios Ruby Programming course."
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README.md'))

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE.md README.md)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'studio_game' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end