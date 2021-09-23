# frozen_string_literal: true

require 'minitest/autorun'
require 'test_helper'

describe ToyRobot::Robot do
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