# == Schema Information
#
# Table name: shelves
#
#  id         :integer          not null, primary key
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

FactoryGirl.define do
  factory :shelf do
    name "MyString"
  end
end
