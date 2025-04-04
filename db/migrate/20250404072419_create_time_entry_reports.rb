class CreateTimeEntryReports < ActiveRecord::Migration[8.0]
  def change
    create_table :time_entry_reports do |t|
      t.references :time_entry, null: false, foreign_key: true
      t.references :report, null: false, foreign_key: true

      t.timestamps
    end
  end
end
