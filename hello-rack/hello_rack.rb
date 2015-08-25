class HelloRack
    def call(env)
        if env["REQUEST_PATH"] == "/"
          [200, {"Content-Type" => "text/html"}, ["Hello Rack!"]]
        else
          [404, {"Content-Type" => "text/html"}, ["Page Not Found"]]
        end
    end
end
