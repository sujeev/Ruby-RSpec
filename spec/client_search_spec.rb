require 'spec_helper'
require './client_search'

describe 'client_search' do
  let( :client_search) { ClientSearch.new('data.json') }

  it 'search by name' do
    expect( client_search.search_by_name( 'jane') ).to eq (
      [
        {"email"=>"jane.smith@yahoo.com", "full_name"=>"Jane Smith", "id"=>2},
        {"email"=>"jane.smith@yahoo.com", "full_name"=>"Another Jane Smith", "id"=>15}
      ]
    )
  end

  it 'find duplicate emails' do
    expect( client_search.find_duplicate_emails ).to eq (
      {"jane.smith@yahoo.com"=>2}
    )
  end
end