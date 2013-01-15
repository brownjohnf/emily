module Emily
  class Application
  	def get_controller_and_action(env)
  	  _, cont, action, after = env["PATH_INFO"].split('/', 4)
  	  cont = cont.downcase # "people"
  	  cont[0] = cont[0].upcase # People
  	  cont += "Controller" # PeopleController

  	  [Object.const_get(cont), action]
  	end
  end
end