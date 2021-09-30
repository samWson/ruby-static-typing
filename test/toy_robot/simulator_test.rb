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
end