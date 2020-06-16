lib = File.expand_path('../lib', __FILE__)
$LOAD_PATH.unshift(lib) unless $LOAD_PATH.include?(lib)
require 'hammer_cli_foreman_statistics/version'

Gem::Specification.new do |spec|
  spec.name          = 'hammer_cli_foreman_statistics'
  spec.version       = HammerCLIForemanStatistics.version.dup
  spec.authors       = ['Shira Maximov']
  spec.email         = ['shiramaximov@gmail.com']
  spec.homepage      = 'https://github.com/theforeman/hammer-cli-foreman-statistics'
  spec.license       = 'GPL-3.0'

  spec.platform      = Gem::Platform::RUBY
  spec.summary       = 'Foreman Statistics plugin for Hammer CLI'

  # TODO: Don't forget to update required files accordingly!
  spec.files         = Dir['{lib,config}/**/*', 'LICENSE', 'README*']
  spec.require_paths = ['lib']
  spec.test_files    = Dir['{test}/**/*']

  # spec.add_dependency 'hammer_cli_foreman', '>= 2.0.0', '< 3.0.0'
end
