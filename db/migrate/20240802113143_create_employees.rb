class CreateEmployees < ActiveRecord::Migration[7.0]
  def change
    create_table :employees do |t|
    	t.string :first_name
    	t.string :last_name
      t.string :full_name
    	t.string :email
    	t.string :designation
    	t.references :department, foreign_key: true
		t.timestamps
    end
  end
end
