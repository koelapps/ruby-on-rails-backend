class CreateAnnouncements < ActiveRecord::Migration[7.0]
  def change
    create_table :announcements do |t|
      t.string :author
      t.string :announcement_type
      t.date :time
      t.string :title
      t.string :body
      t.string :attachment
      t.integer :claps
      t.boolean :pinned_status

      t.timestamps
    end
  end
end
