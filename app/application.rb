class Application

  @@item = []

  req = Rack::Request.new(env)
  resp = Rack::Response.new

  def