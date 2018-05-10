class Follow < ApplicationRecord
  validates :follow_id, {presence: true}
  validates :follower_id,{presence: true}
end
