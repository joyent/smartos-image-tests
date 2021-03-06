require 'spec_helper'

## Since 13.3.1. See IMAGE-437
if property[:base_version].delete('.').to_i >= 1331
  # wget package now preinstalled (works around the problem where the OS wget wasn't
  # happy with https URLs)
  describe package('wget') do
  it { should be_installed }
  end
end

## Since 13.3.0
# See IMAGE-340, IMAGE-404
# rsyslog pre-installed and running out of the box (in place of legacy syslog)
if property[:base_version].delete('.').to_i >= 1330
  describe package('rsyslog') do
  it { should be_installed }
  end
end

## Common packages

describe package('mozilla-rootcerts') do
  it { should be_installed }
end

describe package('nodejs') do
  it { should be_installed }
end

describe package('openssl') do
  it { should be_installed }
end

describe package('pkgin') do
  it { should be_installed }
end

describe package('pkgsrc-gnupg-keys') do
  it { should be_installed }
end

describe package('smtools') do
  it { should be_installed }
end

describe package('curl') do
  it { should be_installed }
end

describe package('mozilla-rootcerts') do
  it { should be_installed }
end
