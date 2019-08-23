class CreateMissions < ActiveRecord::Migration[5.1]
  
 validate_presence_of :time_in_space
 validate_presence_of :title

  def change
    create_table :missions do |t|
      t.string :title
      t.integer :time_in_space
    end
  end
end
