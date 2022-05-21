require 'rails_helper'

RSpec.describe Post, type: :model do
  before do
    @post = FactoryBot.build(:post)
  end
  describe '感想投稿' do
    context '感想が投稿ができる場合' do
      it 'タイトル、ジャンル、内容が存在すると投稿できる' do
        expect(@post).to be_valid
      end
    end
    context '感想が投稿できない場合' do
      it 'タイトルが空では投稿できない' do
        
      end
      it 'タイトルが21文字以上だと投稿できない' do
        
      end
      it 'ジャンルが空だと投稿できない' do
        
      end
      it '内容が空だと投稿できない' do
        
      end
      it '内容が10001文字以上だと投稿できない' do
        
      end
    end
  end
end
