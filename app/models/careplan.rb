class Careplan < ApplicationRecord

  validates :create_plan, presence: true
  validates :update_plan, presence: true
  validates :care_task, length: { maximum: 500 }
  validates :long_time_care_goal, presence: true, length: { in: 1..100 }
  validates :short_time_care_goal, presence: true, length: { in: 1..100 }
  validates :user_wants, length: { maximum: 100 }
  validates :family_wants, length: { maximum: 100 }
  validates :situation_achieved_goal, length: { maximum: 500 }

  belongs_to :customer
end
