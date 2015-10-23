require 'spec_helper'

describe OdeonApi::Film do
  it 'returns all the films' do
    puts OdeonApi::Film.all
  end

  it 'returns a film' do
    puts OdeonApi::Film.find(15866)
  end
end
