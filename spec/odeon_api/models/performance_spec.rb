require 'spec_helper'

describe OdeonApi::Performance do

  it 'returns performance attributes' do
    expect(OdeonApi::Performance.performance_attributes).to include(OdeonApi::Performance)
  end

  it 'returns film times for a performance' do
    expect(OdeonApi::Performance.times(15866, 102)).to include(OdeonApi::Performance)
  end
end
