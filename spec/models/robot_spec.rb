require 'rails_helper'

RSpec.describe Robot, type: :model do
  describe 'friendly' do
    it 'greets properly' do
      # robot = Robot.create(name: 'Bob', serial: '1234', friendly: true)
      # expect(robot.greet).to eq('Hello')
      expect(FactoryBot.create(:robot).greet).to eq('Hello')
    end

    it 'greets improperly' do
      # robot = Robot.create(name: 'Bob', serial: '1234', friendly: false)
      # expect(robot.greet).to eq('Die Human!')
      expect(FactoryBot.create(:robot, friendly: false).greet).to eq('Die Human!')
    end
  end

end
