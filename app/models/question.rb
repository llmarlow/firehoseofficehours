class Question < ActiveRecord::Base
	validates :question, :link, :start_time, :end_time, presence: true
end
