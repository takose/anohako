# == Schema Information
#
# Table name: stocks
#
#  id         :integer          not null, primary key
#  shelf_id   :string
#  price      :integer
#  rest       :integer
#  created_at :datetime         not null
#  updated_at :datetime         not null
#

class Stock < ApplicationRecord
  belongs_to :shelf
  belongs_to :product
end
