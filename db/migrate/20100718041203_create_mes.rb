class CreateMes < ActiveRecord::Migration
  def self.up
    create_table :mes do |t|

      t.timestamps
    end
  end

  def self.down
    drop_table :mes
  end
end
