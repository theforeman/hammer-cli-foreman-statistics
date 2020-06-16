
require File.join(File.dirname(__FILE__), 'test_helper')

describe 'statistics' do
  describe 'list' do
    before do
      @cmd = %w[foreman_statistics statistics list]
      @statistics = {
        "os_count" => [{"label" => "fedora 7", "data" => 2},{"label" => "Fedora 26","data" => 1}],
        "arch_count" => [{"label" => "x86_64", "data" => 3}],
        "swap_size" => 5.8,
        "env_count" => [{"label" => "production","data" => 1}],
        "klass_count" => [],
        "cpu_count" => [{"label" => "4", "data" => 1}],
        "model_count" => [],
        "mem_size" => 11.4,
        "mem_free" => 3.2,
        "swap_free" => 4.0,
        "mem_totsize" => 11.4,
        "mem_totfree" => 3.2
      }

    end

    it 'should return a list of statistics' do
      api_expects(:statistics, :index, 'List trends').returns(@statistics)
      result = run_cmd(@cmd)
      _(result.exit_code).must_equal HammerCLI::EX_OK
    end
  end


end
