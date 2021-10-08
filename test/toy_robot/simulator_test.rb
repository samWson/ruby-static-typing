# frozen_string_literal: true

require 'minitest/autorun'
require 'test_helper'

describe ToyRobot::Simulator do
  before do
    table = ToyRobot::Table.new(5, 5)
    @subject = ToyRobot::Simulator.new(table)
  end

  it 'places the robot onto a valid poisition' do
    @subject.place(0, 0, 'NORTH')

    refute_nil @subject.robot
  end

  it 'cannot place the robot onto an invalid poisition' do
    @subject.place(5, 5, 'NORTH')

    assert_nil @subject.robot
  end

  describe 'robot placed at table boundary' do
    before do
      @subject.place(0, 4, 'NORTH')
    end

    it 'cannot move past the table boundary' do
      @subject.move

      message = "Robot is currently at (0, 4) and it's facing NORTH\n"

      out, _ = capture_io do
        @subject.report
      end
    end
  end
end