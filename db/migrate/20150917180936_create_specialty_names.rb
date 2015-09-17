class CreateSpecialtyNames < ActiveRecord::Migration
  def change
    create_table :specialty_names do |t|
      t.string    :name
      t.text      :description
      t.timestamps
    end
  end
end
