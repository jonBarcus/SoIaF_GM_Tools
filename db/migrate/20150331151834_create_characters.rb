class CreateCharacters < ActiveRecord::Migration
  def change
    create_table :characters do |t|
      t.string        :name
      t.string        :surname
      t.integer       :age_id
      t.integer       :gender_id
      t.integer       :house_id
      t.text          :description
      t.text          :history
      t.integer       :user_id
      t.timestamps
    end
  end
end
