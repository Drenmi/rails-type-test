class CreateProcessors < ActiveRecord::Migration[6.0]
  def change
    create_table :processors do |t|
      t.integer :processing_delay, null: false
    end
  end
end
