class Application
  
  @@items = [Item.new("Figs", 2), Item.new("Apples", 3)]
  
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      item = @@items.find{|item| item.name == item_name}
       if item
        resp.write item.price
      else
    end
  end
end