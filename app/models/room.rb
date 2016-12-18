# == Schema Information
#
# Table name: rooms
#
#  id              :integer          not null, primary key
#  title           :string
#  description     :text
#  beds            :integer
#  guests          :integer
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#  image_url       :string
#  price_per_night :decimal(, )
#

class Room < ActiveRecord::Base
   
   validates :title, :description, :beds, :guests, :image_url, presence: true
   validates :price_per_night, presence: true
   
   validates :description, length: { maximum: 400 }
   validates :beds, :guests,  numericality: { only_integer: true }

end
