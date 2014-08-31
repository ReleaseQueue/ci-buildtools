require 'spec_helper'

describe 'Chef Development & Test tools' do

  it 'should have knife cli' do
    expect(command 'knife -v').to return_stdout(/Chef: \d+\.\d+\.\d+.*/)
  end

  it 'should have knife container docker cli' do
    expect(command 'knife container docker -h').to return_stdout(/.*\nknife container docker build .*\nknife container docker init .*/)
  end

end
