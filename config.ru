use ::Rack::Static, :root => "output", :urls => %w[/]
run lambda { |env| 
  [ 200, 
    { 'Content-Type' => 'text/html', 'Cache-Control' => 'public, max-age=86400' }, 
    File.open('output/index.html', File::RDONLY)
  ] 
}

#use Rack::Static, :urls => ["/stylesheets", "/images", "/javascripts"], :root => "output"
#run lambda { |env| [200, { 'Content-Type' => 'text/html', 'Cache-Control' => 'public, max-age=86400' }, File.open('output/index.html', File::RDONLY)] }
