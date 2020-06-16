module HammerCLIForemanStatistics
  require 'hammer_cli'
  require 'hammer_cli_foreman'

  require 'hammer_cli_foreman_statistics/version'
  require 'hammer_cli_foreman_statistics/statistics'
  require 'hammer_cli_foreman_statistics/trend'

  HammerCLI::MainCommand.lazy_subcommand(
    'statistics',
    'Manage Foreman statistics',
    'HammerCLIForemanStatistics::Statistics',
    'hammer_cli_foreman_statistics/statistics'
  )
  HammerCLI::MainCommand.lazy_subcommand(
      'trend',
      'Manage Foreman trends',
      'HammerCLIForemanStatistics::Trend',
      'hammer_cli_foreman_statistics/trend'
  )
end
