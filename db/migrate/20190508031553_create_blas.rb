class CreateBlas < ActiveRecord::Migration[5.2]
  def change
    create_table :blas do |t|
      t.string :name

      t.timestamps
    end
  end
end
