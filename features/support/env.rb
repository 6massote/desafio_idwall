require 'rspec'
require 'pry'
require 'httparty'
require 'cucumber'
require 'cpf_faker'
require 'faker'

# loads factories
require_relative "../../fixtures/factories/reports_factory.rb"

# Environment definitions
DEBUG = ENV['DEBUG'] || false
ENV['ENV'] = 'prd' unless ENV.has_key?'ENV'
ENVIRONMENT = YAML.load_file('./config/environment.yml')[ENV['ENV']]
