title 'Title for success-failure.rb'
only_if do
  file('/etc').exist?
end

control 'Checking /etc/passwd existance' do
  impact 0.7
  title "Check /etc/passwd"
  desc "File test in success-failure.rb"
  describe file('/etc/passwd') do
    it { should be_file }
    its('mode') { should cmp '0644' }
  end
end

control 'Checking /etc/missing.rb existance' do
  impact 0.7
  title "Check /etc/missing.rb"
  desc "File test in success-failure.rb"
  describe file('/etc/missing.rb') do
    it { should be_file }
  end
end

control "describe-one-1" do
  title "Testing describe.one"
  impact 1.0
  describe.one do
    describe file('/etc/profile') do
      it { should be_file }
    end
    describe file('/etc/missing.rb') do
      it { should be_file }
    end
  end
end

control "describe skip test control" do
  impact 1.0
  describe "SCAP XCCDF resource evaluate is not yet supported." do
    skip "SCAP XCCDF resource evaluate is not yet supported."
  end
end
