module Emily
  class Application
  	def get_controller_and_action(env)
  	  _, controller, action, after = env["PATH_INFO"].split('/', 4)
  	  controller = controller.downcase # "people"
  	  controller[0] = controller[0].upcase # People
  	  controller += "Controller" # PeopleController
      STDERR.puts controller

  	  [Object.const_get(controller), action]
  	end
  end
end