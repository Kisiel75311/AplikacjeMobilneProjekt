class CreateStudents < ActiveRecord::Migration[6.1]
  def change
    create_table :students do |t|
      t.string :index
      t.string :name

      t.timestamps
    end
  end
end
