require 'rails_helper'


RSpec.describe User, type: :model do
 
    before do 
        @user = build(:user)
    end

    describe 'バリデーション' do
        it 'nameとemailどちらも値が設定されていれば、OK' do
          #@user.email = 'aaaa'  
          #expect(@user.valid?).to eq(true)
        end

        it 'emailが空だとNG' do
          @user.email = ''
          expect(@user.valid?).to eq(false)
        end
    end
end    

RSpec.describe '四則演算' do
  it '1 + 1 は 2 になること' do
    expect(1 + 1).to eq 2
  end
  it '10 - 1 は 9 になること' do
    expect(10 - 1).to eq 9
  end
end
