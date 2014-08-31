require 'spec_helper'

describe 'Docker tools' do

  it 'should have docker cli' do
    expect(command 'docker -v').to return_stdout(/Docker version "\d+\.\d+\.\d+.*"/)
  end

end
