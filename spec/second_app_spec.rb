require 'spec_helper'

describe SecondApp do
  it 'has a version number' do
    expect(SecondApp::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
