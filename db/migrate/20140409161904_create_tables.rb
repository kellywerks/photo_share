class CreateTables < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string :name
      t.timestamps
    end
    create_table :photos do |t|
      t.belongs_to :user
      t.string :photo
      t.timestamps
    end
    create_table :tags do |t|
      t.belongs_to :user
      t.belongs_to :photo
      t.timestamps
    end
  end
end

