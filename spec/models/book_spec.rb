require 'rails_helper'

RSpec.describe Book, type: :model do
  before do 
    @book = FactoryBot.build(:book)
  end

  describe '本の投稿機能' do
    context '投稿できる時' do 
      it '全て存在していれば登録できる' do
        expect(@book).to be_valid
      end
    end
    context '投稿できない時' do 
      it 'titleが空だと登録できない' do
        @book.title = ''
        @book.valid?
        expect(@book.errors.full_messages).to include("Title can't be blank")
        
      end
      it 'authorが空だと登録できない' do
        @book.author = ''
        @book.valid?
        expect(@book.errors.full_messages).to include("Author can't be blank")
      end
      it 'descriptionが空だと登録できない' do
        @book.description = ''
        @book.valid?
        expect(@book.errors.full_messages).to include("Description can't be blank")
      end
      it 'genre_idが空だと登録できない' do
        @book.genre_id = ''
        @book.valid?
        expect(@book.errors.full_messages).to include("Genre can't be blank")
      end
      it 'genre_idが1だと登録できない' do
        @book.genre_id = ''
        @book.valid?
        expect(@book.errors.full_messages).to include("Genre is not a number")
      end
      it 'ユーザーが紐づいていなければ投稿できない' do
        @book.user = nil
        @book.valid?
        expect(@book.errors.full_messages).to include("User must exist")
      end
    end
  end
end
