require 'spec_helper'

describe OdeonApi::Film do
  it 'returns all the top films' do
    expect(OdeonApi::Film.top_films).to include(OdeonApi::Film)
  end

  it 'returns all the new films' do
    expect(OdeonApi::Film.new_films).to include(OdeonApi::Film)
  end

  it 'returns all the coming soon films' do
    expect(OdeonApi::Film.coming_soon_films).to include(OdeonApi::Film)
  end

  it 'returns all the recommended films' do
    expect(OdeonApi::Film.recommended_films).to include(OdeonApi::Film)
  end

  it 'returns film attributes' do
    expect(OdeonApi::Film.film_attributes).to include(OdeonApi::Film)
  end

  it 'returns a film' do
    expect(OdeonApi::Film.find(15866).class).to eq(OdeonApi::Film)
  end

  it 'returns an array of all the IDs of active films' do
    expect(OdeonApi::Film.all.class).to eq(Array)
  end
end
