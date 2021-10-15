# frozen_string_literal: true

require 'minitest/autorun'
require 'test_helper'

describe ToyRobot::Robot do
  describe 'moving in a direction' do
    before do
      @subject = ToyRobot::Robot.new(0)
    end

    it 'moves 3 spaces east' do
      3.times { @subject.move_east }

      _(@subject.east).must_equal(3)
    end

    it 'moves 4 spaces east' do
      4.times { @subject.move_east }

      _(@subject.east).must_equal(4)
    end

    it 'moves 3 spaces west' do
      3.times { @subject.move_west }

      _(@subject.east).must_equal(-3)
    end

    it 'moves 4 spaces west' do
      4.times { @subject.move_west }

      _(@subject.east).must_equal(-4)
    end

    it 'moves 3 spaces north' do
      3.times { @subject.move_north }

      _(@subject.north).must_equal(3)
    end

    it 'moves 4 spaces north' do
      4.times { @subject.move_north }

      _(@subject.north).must_equal(4)
    end

    it 'moves 3 spaces south' do
      3.times { @subject.move_south }

      _(@subject.north).must_equal(-3)
    end

    it 'moves 3 spaces south' do
      3.times { @subject.move_south }

      _(@subject.north).must_equal(-3)
    end
  end

  describe 'when facing north' do
    before do
      @subject = ToyRobot::Robot.new(0, 0, 'NORTH')
    end

    it 'moves north' do
      @subject.move

      _(@subject.north).must_equal(1)
    end

    it 'turns left to face west' do
      @subject.turn_left

      _(@subject.direction).must_equal('WEST')
    end

    it 'turns right to face east' do
      @subject.turn_right

      _(@subject.direction).must_equal('EAST')
    end

    it 'next move is to (0, 1)' do
      assert_equal [0, 1], @subject.next_move
    end
  end

  describe 'when facing south' do
    before do
      @subject = ToyRobot::Robot.new(0, 0, 'SOUTH')
    end

    it 'moves south' do
      @subject.move

      _(@subject.north).must_equal(-1)
    end

    it 'turns left to face east' do
      @subject.turn_left

      _(@subject.direction).must_equal('EAST')
    end

    it 'turns right to face west' do
      @subject.turn_right

      _(@subject.direction).must_equal('WEST')
    end

    it 'next move is to (0, -1)' do
      assert_equal [0, -1], @subject.next_move
    end
  end

  describe 'when facing east' do
    before do
      @subject = ToyRobot::Robot.new(0, 0, 'EAST')
    end

    it 'moves east' do
      @subject.move

      _(@subject.east).must_equal(1)
    end

    it 'turns left to face north' do
      @subject.turn_left

      _(@subject.direction).must_equal('NORTH')
    end

    it 'turns right to face south' do
      @subject.turn_right

      _(@subject.direction).must_equal('SOUTH')
    end

    it 'next move is to (1, 0)' do
      assert_equal [1, 0], @subject.next_move
    end
  end

  describe 'when facing west' do
    before do
      @subject = ToyRobot::Robot.new(0, 0, 'WEST')
    end

    it 'moves west' do
      @subject.move

      _(@subject.east).must_equal(-1)
    end

    it 'turns left to face south' do
      @subject.turn_left

      _(@subject.direction).must_equal('SOUTH')
    end

    it 'turns right to face north' do
      @subject.turn_right

      _(@subject.direction).must_equal('NORTH')
    end

    it 'next move is to (-1, 0)' do
      assert_equal [-1, 0], @subject.next_move
    end
  end

  describe 'report' do
    before do
      @subject = ToyRobot::Robot.new(5, 4, 'EAST')
    end

    it 'provides the current location and direction of the robot' do
      _(@subject.report).must_equal({
        east: 5,
        north: 4,
        direction: 'EAST'
      })
    end
  end
end