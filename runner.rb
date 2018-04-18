Dir["./lib/*.rb"].each { |file| require file}  #always have this above the start command
Mastermind.new.start
