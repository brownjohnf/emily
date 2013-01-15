require "emily/version"

module Emily
  class Application
  	def call(env)
  	  `echo debug > debug.txt`;
        [200, {'Content-Type' => 'text/html'}, ["hello from ruby on emily"]]
    end
  end
end
