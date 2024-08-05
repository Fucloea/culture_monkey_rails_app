class CreateBills < ActiveRecord::Migration[7.0]
  def change
    create_table :bills do |t|
    	t.integer :amount 
    	t.string :bill_type
    	t.references :employee, foreign_key: true
      	t.timestamps
    end
  end
end
