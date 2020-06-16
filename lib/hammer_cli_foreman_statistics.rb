module HammerCLIForemanStatistics
  require 'hammer_cli'
  require 'hammer_cli_foreman'

  require 'hammer_cli_foreman_statistics/version'
  require 'hammer_cli_foreman_statistics/statistics'
  require 'hammer_cli_foreman_statistics/trend'

  HammerCLI::MainCommand.lazy_subcommand(
    'foreman_statistics',
    _('Manage Foreman statistics and trends'),
    'HammerCLIForemanStatistics::ForemanStatistics',
    'hammer_cli_foreman_statistics/foreman_statistics'
  )
end
