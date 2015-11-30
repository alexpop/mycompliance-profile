control 'demo-1.0.0' do
  impact 0.3
  title '1.0.0 - Not listening on port 80'
  desc '
    TCP Port 80 should not be listening.
    We are enforcing encrypted web traffic over port 443.
  '
  describe port(80) do
    it { should_not be_listening }
  end
end
