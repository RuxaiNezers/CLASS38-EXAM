class Todo < ApplicationRecord
	has_many :user, through: :completed
end
