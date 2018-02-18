require 'spec_helper'

describe file('/etc/apt/sources.list.d/nodesource.list') do
  it { should exist }
  it { should be_file }
  it { should contain "deb https://deb.nodesource.com/node_#{property['nodejs_major_version']}.x stretch main" }
end

describe package('nodejs') do
  it { should be_installed }
end

describe file('/usr/bin/node') do
  it { should exist }
  it { should be_file }
  it { should be_executable }
end

describe file('/usr/bin/npm') do
  it { should exist }
  it { should be_file }
  it { should be_executable }
end
