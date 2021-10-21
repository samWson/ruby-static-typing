# typed: strict
# frozen_string_literal: true

require_relative 'toy_robot/version'

require 'toy_robot/robot'
require 'toy_robot/table'
require 'toy_robot/simulator'
require 'toy_robot/command'
require 'toy_robot/cli'

module ToyRobot
  class Error < StandardError; end
end
