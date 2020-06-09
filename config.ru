# This file is used by Rack-based servers to start the application.

require "jets"
require 'dotenv'
Dotenv.load
Jets.boot
run Jets.application
