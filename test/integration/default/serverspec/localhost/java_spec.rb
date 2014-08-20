require 'spec_helper'

describe 'Java Development tools' do

  it 'should have java cli' do
    expect(command 'java -version').to return_stdout(/java version "\d+\.\d+\.\d+.*"/)
  end

end
