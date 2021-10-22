# typed: false
# frozen_string_literal: true

require 'minitest/autorun'
require 'test_helper'

describe ToyRobot::Table do
  before do
    @subject = ToyRobot::Table.new(5, 5)
  end

  describe '#valid_location?' do
    it 'is a valid location' do
      assert @subject.valid_location?(0, 0)
    end

    it 'is a valid location' do
      assert @subject.valid_location?(4, 4)
    end

    it 'is not a valid location' do
      refute @subject.valid_location?(5, 5)
    end

    it 'is not a valid location' do
      refute @subject.valid_location?(-1, -1)
    end
  end
end