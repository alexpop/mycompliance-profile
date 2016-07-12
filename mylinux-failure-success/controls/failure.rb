
control 'Checking /etc/missing3.rb' do
  impact 0.7
  title "Check /etc/missing3.rb"
  desc "File test in failure.rb"
  describe file('/etc/missing3.rb') do
    it { should be_file }
  end
end
