require 'spec_helper'

describe "Viewing the list of questions" do

  it "shows the questions" do
  	question1 = Question.create(question: "Question 1",
                      info: "All about question 1",
                      link: "link 1")

		question2 = Question.create(question: "Question 2",
		                      info: "All about question 2",
		                      link: "link 2")

		question3 = Question.create(question: "Question 3",
		                      info: "All about question 3",
		                      link: "link3")
    visit questions_path

	  expect(page).to have_text("Questions")
	  expect(page).to have_text(question1.question)
	  expect(page).to have_text(question2.question)
	  expect(page).to have_text(question3.question)
	  expect(page).to have_text(question1.info)
		expect(page).to have_text(question1.link)
  end

end