class Friendship < ApplicationRecord
  belongs_to :friender, class_name: "User"
  belongs_to :friendee, class_name: "User"

  #after_create :create_inverse_relationship

  #after_destroy :destroy_inverse_relationship



  def create_inverse_relationship
    Friendship.create(friender_id:self.friendee.id, friendee_id: self.friender.id)
  end

  #def destroy_inverse_relationship
  #  friendship = friendships.find_by(friend: user)
  #  friendship.destroy if friendship
#  end
end
