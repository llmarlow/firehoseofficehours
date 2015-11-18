require 'spec_helper'

describe "Viewing an individual question" do
	it "shows the questions's details" do
		question = Question.create(question_attributes)

	  visit question_url(question)
		  expect(page).to have_text(question.question)
		  expect(page).to have_text(question.info)
			expect(page).to have_text(question.link)
	end
end