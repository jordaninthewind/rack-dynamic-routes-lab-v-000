class Application

  @@items = []

  def call(env)
      resp = Rack::Response.new
      req = Rack::Request.new(env)

      if req.path=="/items/Figs"
        resp.write @@items[0].price
      elsif req.path == "/items/Pears"
        resp.write @@items[1].price
      else
        resp.write "Route not found"
        resp.status = 404
      end

      resp.finish
    end

end
