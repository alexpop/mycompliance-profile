control 'mydemo-001' do
  impact 0.3
  title '0.0.1 - Not listening on port 80'
  desc '
    TCP Port 80 should not be listening.
    We are enforcing encrypted web traffic over port 443.
  '
  describe port(80) do
    it { should_not be_listening }
  end
end
