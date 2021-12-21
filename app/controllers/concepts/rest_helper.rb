class RestHelper
  API_KEY = ENV['API_KEY']

  def self.get_properties_list(page)
    @request = Faraday.get("https://api.stagingeb.com/v1/properties?page=#{page}&limit=15&search%5Bstatuses%5D%5B%5D=published") do |req|
      req.headers['X-Authorization'] = API_KEY
    end
    @request
  end

  def self.get_property(id)
    @request = Faraday.get("https://api.stagingeb.com/v1/properties/#{id}") do |req|
      req.headers['X-Authorization'] = API_KEY
    end
    @request
  end

  def self.post_lead(params)
    @request = Faraday.post('https://api.stagingeb.com/v1/contact_requests') do |req|
      req.headers['X-Authorization'] = 'l7u502p8v46ba3ppgvj5y2aad50lb9'
      req.headers['Content-Type'] = 'application/json'
      req.body = params.to_json
    end
  end
end
