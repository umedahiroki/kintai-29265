require 'rails_helper'
require 'faker'

RSpec.describe Play, type: :model do
 
before do
  @play = FactoryBot.build(:play)
end

describe '#create' do

it "attend_idが1だと登録できない" do
  @play.attend_id = 1
  @play.valid?
  expect(@play.errors.full_messages).to include("Attend must be other than 1")
end

end

end