class CreateAstronauts < ActiveRecord::Migration[5.1]
  validate_presence_of :job
  validate_presence_of :name
  validate_presence_of :age

  def change
    create_table :astronauts do |t|
      t.string :name
      t.integer :age
      t.string :job
    end
  end
end
