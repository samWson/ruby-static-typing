# frozen_string_literal: true

require 'minitest/autorun'
require 'test_helper'

describe ToyRobot::Robot do
  before do
    @subject = ToyRobot::Robot.new(0)
  end

  it 'moves 3 spaces' do
    3.times { @subject.move }

    _(@subject.position).must_equal(3)
  end

  it 'moves 4 spaces' do
    4.times { @subject.move }

    _(@subject.position).must_equal(4)
  end
end