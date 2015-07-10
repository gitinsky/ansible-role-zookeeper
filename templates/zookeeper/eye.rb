Eye.application 'zookeeper-{{ env_name }}' do
  working_dir '/etc/eye'
  stdall '/var/log/eye/zookeeper-{{ env_name }}-stdall.log' # stdout,err logs for processes by default
  trigger :flapping, times: 10, within: 1.minute, retry_in: 3.minutes
  check :cpu, every: 10.seconds, below: 100, times: 3 # global check for all processes

  process :zookeeper_{{ env_name }} do
    pid_file '{{ zookeeper_var_prefix }}/zookeeper_server.pid'
    start_command 'sudo -u {{ zookeeper_user }} {{ zookeeper_distr_prefix }}/bin/zkServer.sh start'

    start_timeout 10.seconds
    stop_timeout 5.seconds

  end

end
