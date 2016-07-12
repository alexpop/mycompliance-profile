
control '/etc/passwd must exist' do
  impact 0.7
  title "Create /tmp directory"
  desc "An optional description..."
  describe file('/etc/passwd') do
    it { should be_file }
  end
end
