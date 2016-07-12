
control 'Checking /etc/missing2.rb existance' do
  impact 0.1
  title "Check /etc/missing2.rb"
  desc "File test in failure-success.rb"
  describe file('/etc/missing2.rb') do
    it { should be_file }
  end
end

control 'Checking /etc/group existance' do
  impact 0.9
  title "Check /etc/group"
  desc "File test in failure-success.rb"
  describe file('/etc/group') do
    it { should be_file }
  end
end
