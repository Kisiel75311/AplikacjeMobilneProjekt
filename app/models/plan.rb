class Plan < ApplicationRecord
  belongs_to :user
  has_and_belongs_to_many :exercises, :join_table => :plans_exercises
end
