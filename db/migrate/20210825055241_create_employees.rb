class CreateEmployees < ActiveRecord::Migration[6.1]
  def change
    create_table :employees do |t|
      t.string :name
      t.string :department
      t.date :date_of_joining
      t.string :photo_file_name

      t.timestamps
    end
  end
end
