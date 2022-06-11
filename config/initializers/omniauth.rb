Rails.application.config.middleware.use OmniAuth::Builder do
    provider :github, ENV['4c06bfe5c5665b8ff0ac'], ENV['844da816802ec5c7c2b83b1af03ad777352b70f6']
  end