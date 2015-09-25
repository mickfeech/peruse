require 'spec_helper'
require 'peruse'

describe Peruse do
  it 'has a version number' do
    expect(Peruse::VERSION).not_to be nil
  end

  it 'has an auth-token' do
    expect(Peruse.class_variable_get(:@@auth_token)).to eql('')
  end
end
