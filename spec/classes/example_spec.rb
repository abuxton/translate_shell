require 'spec_helper'

describe 'translate_shell' do
  context 'supported operating systems' do
    on_supported_os.each do |os, facts|
      context "on #{os}" do
        let(:facts) do
          facts
        end

        context "translate_shell class without any parameters" do
          it { is_expected.to compile.with_all_deps }

          it { is_expected.to contain_class('translate_shell::params') }
          it { is_expected.to contain_class('translate_shell::install').that_comes_before('translate_shell::config') }
          it { is_expected.to contain_class('translate_shell::config') }
          it { is_expected.to contain_class('translate_shell::service').that_subscribes_to('translate_shell::config') }

          it { is_expected.to contain_service('translate_shell') }
          it { is_expected.to contain_package('translate_shell').with_ensure('present') }
        end
      end
    end
  end

  context 'unsupported operating system' do
    describe 'translate_shell class without any parameters on Solaris/Nexenta' do
      let(:facts) do
        {
          :osfamily        => 'Solaris',
          :operatingsystem => 'Nexenta',
        }
      end

      it { expect { is_expected.to contain_package('translate_shell') }.to raise_error(Puppet::Error, /Nexenta not supported/) }
    end
  end
end
