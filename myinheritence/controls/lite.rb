# encoding: utf-8
# copyright: 2016, Chef Software, Inc.
# license: All rights reserved

include_controls 'cis/cis-centos6-level1' do
  # don't include this control
  skip_control 'xccdf_org.cisecurity.benchmarks_rule_1.1.1_Create_Separate_Partition_for_tmp'

  # update this control with a lower impact
  control 'xccdf_org.cisecurity.benchmarks_rule_1.1.9_Create_Separate_Partition_for_home' do
    impact 0.3
  end
end
