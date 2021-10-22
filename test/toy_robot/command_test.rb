# typed: false
# frozen_string_literal: true

require 'minitest/autorun'
require 'test_helper'

describe ToyRobot::Command do
  describe 'PLACE' do
    it 'processes a PLACE command' do
      command, *args = ToyRobot::Command.process('PLACE 1,2,NORTH')

      assert_equal :place, command
      assert_equal args, [1, 2, 'NORTH']
    end

    it 'returns :invalid for an invalid PLACE command' do
      command = ToyRobot::Command.process('PLACE 1, 2, NORTH')

      assert_equal [:invalid, 'PLACE 1, 2, NORTH'], command
    end
  end

  describe 'MOVE' do
    it 'processes a MOVE command' do
      command, *args = ToyRobot::Command.process('MOVE')

      assert_equal :move, command
      assert args.empty?
    end
  end

  describe 'LEFT' do
    it 'processes a LEFT command' do
      command, *args = ToyRobot::Command.process('LEFT')

      assert_equal :turn_left, command
      assert args.empty?
    end
  end

  describe 'RIGHT' do
    it 'processes a RIGHT command' do
      command, *args = ToyRobot::Command.process('RIGHT')

      assert_equal :turn_right, command
      assert args.empty?
    end
  end

  describe 'REPORT' do
    it 'processes a REPORT command' do
      command, *args = ToyRobot::Command.process('REPORT')

      assert_equal :report, command
      assert args.empty?
    end
  end
end
