require 'rails_helper'

RSpec.describe Diary, type: :model do
  before do
    @diary = FactoryBot.build(:diary)
  end

  describe '記録の保存' do
    context '保存できる場合' do
      it "全ての情報が正しければ保存できる" do
        expect(@diary).to be_valid
      end
      it '運動が抜けていても保存できる' do
        @diary.exercise = nil
        expect(@diary).to be_valid
      end
      it 'コメントが抜けていても保存できる' do
        @diary.comment = nil
        expect(@diary).to be_valid
      end
    end
    context '保存できない場合' do
      it '日付が空では保存でない' do
        @diary.day = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Day can't be blank")
      end
      it '体重が空では保存でない' do
        @diary.weight = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Weight can't be blank", "Weight 半角数字で入力してください")
      end
      it '体重が全角数字では保存でない' do
        @diary.weight = '７０'
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Weight 半角数字で入力してください")
      end
      it '糖質が空では保存でない' do
        @diary.sugar = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Sugar can't be blank", "Sugar 半角数字で入力してください")
      end
      it '糖質が全角数字では保存でない' do
        @diary.sugar = '７０'
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Sugar 半角数字で入力してください")
      end
      it 'タンパク質が空では保存でない' do
        @diary.protein = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Protein can't be blank", "Protein 半角数字で入力してください")
      end
      it 'タンパク質が全角数字では保存でない' do
        @diary.protein = '７０'
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Protein 半角数字で入力してください")
      end
      it 'カロリーが空では保存でない' do
        @diary.calorie = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Calorie can't be blank", "Calorie 半角数字で入力してください")
      end
      it 'カロリーが全角数字では保存でない' do
        @diary.calorie = '７０'
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Calorie 半角数字で入力してください")
      end
      it '脂質が空では保存でない' do
        @diary.lipid = nil
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Lipid can't be blank", "Lipid 半角数字で入力してください")
      end
      it '脂質が全角数字では保存でない' do
        @diary.lipid = '７０'
        @diary.valid?
        expect(@diary.errors.full_messages).to include("Lipid 半角数字で入力してください")
      end
    end
  end
end
