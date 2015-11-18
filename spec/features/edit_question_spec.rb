describe "Editing a question" do
  
  it "updates the question and shows the question's updated details" do
    question = Question.create(question_attributes)
    
    visit question_url(question)
    
    click_link 'Edit'
    
    expect(current_path).to eq(edit_question_path(question))
        
    expect(find_field('Question').value).to eq(question.question)

    fill_in 'Question', with: "Updated Question"

    click_button 'Update Question'

    expect(current_path).to eq(question_path(question))

    expect(page).to have_text('Updated Question')
  end
  
end