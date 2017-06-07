class CreatePrinciples < ActiveRecord::Migration[5.0]
  def change
    create_table :principles do |t|
      t.string :name
      t.integer :team_id
      t.text :content
      t.integer :index
      t.text :principle_explain

      t.timestamps
    end
  end
end
