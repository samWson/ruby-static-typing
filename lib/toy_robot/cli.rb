# typed: true
# frozen_string_literal: true

module ToyRobot
  class CLI
    extend T::Sig

    sig {returns(ToyRobot::Simulator)}
    attr_reader :simulator

    sig {void}
    def initialize
      table = ToyRobot::Table.new(5, 5)
      @simulator = ToyRobot::Simulator.new(table)
    end

    sig {params(commands_file: String).void}
    def load_commands(commands_file)
      File.readlines(commands_file).map do |command|
        ToyRobot::Command.process(command)
      end
    end

    sig {params(commands: T::Array[String]).void}
    def run(commands)
      commands.each do |command, *args|
        simulator.send(command, *args)
      end
    end
  end
end