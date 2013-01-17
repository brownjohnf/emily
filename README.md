# Emily

This is part of an experiment messing around with creating a Sinatra/Rails -esque framework for recreational purposes. Not intended for production.

## Installation

Add this line to your application's Gemfile:

    gem 'emily'

And then execute:

    $ bundle

Or install it yourself as:

    $ gem install emily

## Usage

Well, it's not really ready to be used normally, but you can shoehorn it in by creating a new folder, install the gem, and throw something like this in `config.ru`:

````
require './config/application'
run YourApp::Application.new
````

Then create `config/application.rb` and throw in:

````
require "emily"

$LOAD_PATH << File.join(File.dirname(__FILE__),
                        '..', 
                        'app', 
                        'controllers')
require "your_controller"

module YourApp
  class Application < Emily::Application
  end
end
````

Or something like that... As noted, I just started it.

## Contributing

1. Fork it
2. Create your feature branch (`git checkout -b my-new-feature`)
3. Commit your changes (`git commit -am 'Add some feature'`)
4. Push to the branch (`git push origin my-new-feature`)
5. Create new Pull Request
