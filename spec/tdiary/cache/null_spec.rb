require 'spec_helper'

describe Tdiary::Cache::Null do
  it 'has a version number' do
    expect(Tdiary::Cache::Null::VERSION).not_to be nil
  end

  it 'does something useful' do
    expect(false).to eq(true)
  end
end
