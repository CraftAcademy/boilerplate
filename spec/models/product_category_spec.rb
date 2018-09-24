require 'rails_helper'

RSpec.describe ProductCategory, type: :model do
  describe 'DB Table' do
    it { is_expected.to have_db_column :name }
    it { is_expected.to have_many :products }
  end

  describe 'Factory' do
    it 'should be valid' do
      expect(FactoryBot.create(:product_category)).to be_valid
    end
  end
end