class CreateQuestions < ActiveRecord::Migration
  def change
    create_table :questions do |t|
    	t.string :question
    	t.text :info
    	t.string :link
    	t.time :start_time
    	t.time :end_time
      t.timestamps
    end
  end
end
