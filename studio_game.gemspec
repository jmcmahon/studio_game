Gem::Specification.new do |s| 
  s.name         = "dice_game"
  s.version      = "1.0.0"
  s.author       = "Jim McMahon"
  s.email        = "jmcmahon@terpsys.com"
  s.homepage     = "http://online.pragmaticstudio.com/courses/ruby"
  s.summary      = "dice game with blams and w00ts"
  s.description  = File.read(File.join(File.dirname(__FILE__), 'README'))

  s.files         = Dir["{bin,lib,spec}/**/*"] + %w(LICENSE README)
  s.test_files    = Dir["spec/**/*"]
  s.executables   = [ 'studio_game' ]

  s.required_ruby_version = '>=1.9'
  s.add_development_dependency 'rspec'
end


