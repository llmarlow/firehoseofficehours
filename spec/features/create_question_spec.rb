describe "Creating a new question" do
  it "saves the question and shows the new question's details" do
    visit questions_url

    click_link 'Add New Question'

    expect(current_path).to eq(new_question_path)

    fill_in "Question", with: "New Question"
    fill_in "info", with: "Question info"
    fill_in "link", with: "link1"
    

    # If you're taking advantage of the HTML 5 date field in Chrome,
    # you'll need to use 'fill_in' rather than 'select'
    # fill_in "Released on", with: (Time.now.year - 1).to_s

    click_button 'Create Question'

    expect(current_path).to eq(question_path(Question.last))

    expect(page).to have_text('New Question')
  end
end