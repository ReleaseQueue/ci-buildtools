require 'spec_helper'

describe 'NodeJS Development Tools' do

  it 'should have node cli' do
    expect(command 'node -v').to return_stdout(/v\d+\.\d+\.\d+/)
  end

end
