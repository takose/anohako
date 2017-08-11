# == Schema Information
#
# Table name: shelves
#
#  id         :integer          not null, primary key
#  product_id :string
#  price      :integer
#  stock      :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Shelf < ApplicationRecord
end
