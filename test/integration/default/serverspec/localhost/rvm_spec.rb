require 'spec_helper'

describe 'RVM Development Tools' do

  describe user('ubuntu') do
    it { should belong_to_group 'rvm'}
  end

end