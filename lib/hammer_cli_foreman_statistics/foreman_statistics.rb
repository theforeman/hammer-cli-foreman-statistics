module HammerCLIForemanStatistics
  class ForemanStatistics < HammerCLIForeman::Command

    lazy_subcommand(
        'statistics',
        _('Manage Foreman statistics'),
        'HammerCLIForemanStatistics::Statistics',
        'hammer_cli_foreman_statistics/statistics'
    )

    lazy_subcommand(
        'trend',
        _('Manage Foreman trends'),
        'HammerCLIForemanStatistics::Trend',
        'hammer_cli_foreman_statistics/trend'
    )

    autoload_subcommands
  end
end
