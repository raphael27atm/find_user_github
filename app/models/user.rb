class User
  include HTTParty
  base_uri "https://api.github.com"

  attr_accessor :name

  def initialize(name)
    @options = { query: {q: name}}
  end

  def search
    response = self.class.get("/search/users", @options)
    if response.success?
      response['items']
    else
      raise response
    end
  end

  def self.repos(name)
    response = get("/users/" + name + "/repos")
    response
  end

end
