require 'spec_helper'

describe OdeonApi::Film do
  it 'returns all the films' do
    expect(OdeonApi::Film.all).to include(OdeonApi::Film)
  end

  it 'returns a film' do
    expect(OdeonApi::Film.find(15866).class).to eq(OdeonApi::Film)
  end

  it 'returns film times for a film' do
    OdeonApi::Film.times(15866, 102)
  end
end
