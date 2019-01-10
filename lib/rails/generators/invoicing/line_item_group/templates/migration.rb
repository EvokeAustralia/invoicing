class CreateInvoicingLedgerItems < ActiveRecord::Migration
  def change
    create_table :invoicing_line_item_groups do |t|
      t.references :ledger_item

      t.string   :type

      t.string   :identifier,    limit: 50
      t.string   :description
      t.string   :uuid,          limit: 40

      t.timestamps
    end
  end
end
