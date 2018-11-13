require 'rack'

class PersonalSite
  def self.call(env)
    case env["PATH_INFO"]
    when '/' then index
    else
      error
    end
  end

  def self.index
    ['200', {'Content-Type' => 'text/html'}, [File.read('./app/views/index.html')]] # Recall, this array includes the HTTP response status code, HTTP response headers & HTTP body
  end

  def self.error
    ['404', {'Content-Type' => 'text/html'}, [File.read('./app/views/error.html')]] # Recall, this array includes the HTTP response status code, HTTP response headers & HTTP body
  end
end
