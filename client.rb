require './client_search'

# Command-line interface
def main
  if ARGV.length < 2
    puts 'Usage: ruby client.rb <file_path> <command> [search_query]'
    exit(1)
  end

  file_path = ARGV[0]
  command = ARGV[1]
  search_query = ARGV[2]

  client_search = ClientSearch.new(file_path)

  case command
  when 'search'
    response = client_search.search_by_name(search_query || '')
  when 'find_duplicates'
    response = client_search.find_duplicate_emails
  else
    puts "Unknown command: #{command}"
    exit(1)
  end
  if response.empty?
    puts 'No matching clients found.'
  else
    puts 'Results:'
    puts response
  end
end

# Run the script
main
