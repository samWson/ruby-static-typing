# frozen_string_literal: true

require 'minitest/autorun'
require 'test_helper'

describe ToyRobot::CLI do
  before do
    @subject = ToyRobot::CLI.new
  end

  describe '#load_commands' do
    it 'loads commands from a file' do
      path = File.dirname(__FILE__) + '/../fixtures/commands.txt'
      commands = @subject.load_commands(path)

      expected = [
        [:place, 0, 0, 'NORTH'],
        [:move],
        [:turn_right],
        [:turn_left],
        [:report]
      ]

      assert_equal expected, commands
    end
  end

  describe '#run' do
    before do
      @simulator = Minitest::Mock.new
    end

    describe 'place command' do
      it 'passes a place command to the simulator' do
        @simulator.expect(:place, nil, [0, 0, 'NORTH'])

        @subject.stub :simulator, @simulator do
          @subject.run([[:place, 0, 0, 'NORTH']])
        end

        @simulator.verify
      end
    end

    describe 'left command' do
      it 'passes a turn_left command to the simulator' do
        @simulator.expect(:turn_left, nil)

        @subject.stub :simulator, @simulator do
          @subject.run([[:turn_left]])
        end
      end
    end

    describe 'left command' do
      it 'passes a turn_right command to the simulator' do
        @simulator.expect(:turn_right, nil)

        @subject.stub :simulator, @simulator do
          @subject.run([[:turn_right]])
        end
      end
    end

    describe 'left command' do
      it 'passes report command to the simulator' do
        @simulator.expect(:report, nil)

        @subject.stub :simulator, @simulator do
          @subject.run([[:report]])
        end
      end
    end
  end
end