describe "Navigating questions" do
  it "allows navigation from the detail page to the listing page" do
    question = Question.create(question_attributes)

    visit question_url(question)

    click_link "All Questions"

    expect(current_path).to eq(questions_path)
  end

  it "allows navigation from the listing page to the detail page" do
    question = Question.create(question_attributes)

    visit questions_url

    click_link question.question

    expect(current_path).to eq(question_path(question))
  end
end