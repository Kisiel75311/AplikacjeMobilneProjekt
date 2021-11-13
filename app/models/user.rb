class User < ApplicationRecord
    has_many :plans, :favouties, :trainings
end
