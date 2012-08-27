class CreateSettings < ActiveRecord::Migration
  def self.up
    create_table :settings do |t|
      t.string :location
      t.text :content

      t.timestamps
    end
  end

  def self.down
    drop_table :settings
  end
end
