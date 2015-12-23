require 'rails_helper'

RSpec.describe Robot, type: :model do
  # let(:friendly_robot) { FacotoryGirl.create(:friendly_robot) }
  
  before(:each) do
    @robot = FactoryGirl.create(:friendly_robot)
  end

  describe 'mechanics' do
    it 'says hello if friendly' do
      expect(@robot.greet).to eq('hello')
    end

    it 'says die human if not friendly' do
      @robot.update(friendly: false)
      expect(@robot.greet).to eq('die human')
    end
  end
end
