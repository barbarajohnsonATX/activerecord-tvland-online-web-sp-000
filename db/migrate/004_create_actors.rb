class CreateActors < ActiveRecord::Migration[4.2]
  def change
    create_table :actors do |t| #we get a block variable 
      t.string :first_name
      t.string :last_name
    end
  end
end