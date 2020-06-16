module HammerCLIForemanStatistics
  class Statistics < HammerCLIForeman::Command
    resource :statistics

    class ListCommand < HammerCLIForeman::ListCommand
      output do
        field :os_count, _('OS count')
        field :arch_count, _('Arch count')
        field :swap_size, _('swap size')
        field :env_count, _('Env count')
        field :klass_count, _('Klass count')
        field :cpu_count, _('Cpu count')
        field :model_count, _('Model count')
        field :mem_size, _('Memory size')
        field :mem_free, _('Memory Free')
        field :swap_free, _('Swap free')
        field :mem_totsize, _('Memory total size')
        field :mem_totfree, _('Memory total free')
      end

      def adapter
        :base
      end

      build_options
    end

    autoload_subcommands
  end
end
