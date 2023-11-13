require 'json'

class ClientSearch
  def initialize(file_path)
    @clients = load_clients(file_path)
  end

  def load_clients(file_path)
    json_data = File.read(file_path)
    JSON.parse(json_data)
  end

  def search_by_name(query)
    @clients.select { |client| client['full_name'].downcase.include?(query.downcase) }
  end

  def find_duplicate_emails
    email_counts = Hash.new(0)

    @clients.each do |client|
      email = client['email']
      email_counts[email] += 1
    end

    email_counts.select { |_, count| count > 1 }
  end

end
