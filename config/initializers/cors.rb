Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "*", 'https://xenodochial-shockley-55c19b.netlify.app/'

    resource "*", 
      header: :any, 
      methods: [:get, :post, :put, :patch, :delete, :options, :head]
  end
end
