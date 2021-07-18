Rails.application.config.middleware.insert_before 0, Rack::Cors do
  allow do
    origins "http://lochost:3000"
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
    credentials: true
  end

  allow do
    origins "http://your-production.com"
    resource "*", headers: :any, methods: [:get, :post, :put, :patch, :delete, :options, :head],
    credentials: true
  end
end
