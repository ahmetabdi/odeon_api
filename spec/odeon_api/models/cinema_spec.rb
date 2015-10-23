require 'spec_helper'

describe OdeonApi::Cinema do
  it 'returns all the cinemas' do
    puts OdeonApi::Cinema.all
  end
end
