control 'mylinuxdemo-002' do
  impact 0.5
  title '0.0.2 - iptables is on'
  desc '
    iptables service is installed
    iptables service is enabled to start at boot
    iptables service is running
  '
  describe service('iptables') do
    it { should be_installed }
    it { should be_enabled }
    it { should be_running }
  end
end
