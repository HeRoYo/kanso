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
        @post.title = ''
        @post.valid?
        expect(@post.errors.full_messages).to include "Title can't be blank"
      end
      it 'タイトルが21文字以上だと投稿できない' do
        @post.title = Faker::Lorem.characters(number: 21)
        @post.valid?
        expect(@post.errors.full_messages).to include "Title is too long (maximum is 20 characters)"
      end
      it 'ジャンルが空だと投稿できない' do
        @post.genre_id = ''
        @post.valid?
        expect(@post.errors.full_messages).to include "Genre can't be blank"
      end
      it 'ジャンルに１を選択していると投稿できない' do
        @post.genre_id = 1
        @post.valid?
        expect(@post.errors.full_messages).to include "Genre can't be blank"
      end
      it '内容が空だと投稿できない' do
        @post.text = ''
        @post.valid?
        expect(@post.errors.full_messages).to include "Text can't be blank"
      end
      it '内容が10001文字以上だと投稿できない' do
        @post.text = Faker::Lorem.characters(number: 10_001)
        @post.valid?
        expect(@post.errors.full_messages).to include "Text is too long (maximum is 10000 characters)"
      end
    end
  end
end
