ENV['RACK_ENV'] = 'test'

require("rspec")
require("sinatra/activerecord")
require("list")
require("task")

RSpec.configure do |config|
  config.after(:each) do
    Task.all().each() do |task|
      task.destroy()
    end
  end
end
