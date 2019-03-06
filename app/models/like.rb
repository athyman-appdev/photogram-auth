# == Schema Information
#
# Table name: likes
#
#  id         :integer          not null, primary key
#  created_at :datetime         not null
#  updated_at :datetime         not null
#  photo_id   :integer
#  user_id    :integer
#

class Like < ApplicationRecord
    
    validates :photo_id, presence: true
    validates :user_id, presence: true
    validates :user_id, uniqueness: {
        scope: :photo_id,
        message: "A user can only have one like per photo!"
    }
    
    belongs_to :photo
    belongs_to :user
    
end
