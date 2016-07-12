title 'Title for skipped.rb'
only_if do
  command('missing-command').exist?
end

control 'control-1 guarded by only_if' do
  impact 0.45
  title 'Control used to test skipped group'
  describe command('missing-command') do
    its('stdout') { should_not match(/^bingo/) }
  end
  describe command('missing-command-2') do
    its('stdout') { should_not match(/^bingo/) }
  end
end

control 'control-2 guarded by only_if' do
  impact 0.15
  title 'Control used to test skipped group'
  describe command('missing-command-3') do
    its('stdout') { should_not match(/^bingo/) }
  end
end
