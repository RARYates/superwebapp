# frozen_string_literal: true

require 'spec_helper'

describe 'superwebapp' do
  on_supported_os.each do |os, os_facts|
    context "on #{os}" do
      let(:facts) { os_facts }

      it { is_expected.to compile }
      it { is_expected.to contain_file('/var/www/swa/index.html') }
    end
  end
end
