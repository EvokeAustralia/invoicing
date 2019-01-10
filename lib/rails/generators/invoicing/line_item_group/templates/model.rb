class InvoicingLineItemGroup < ActiveRecord::Base
  acts_as_line_item_group

  belongs_to :ledger_item, class_name: 'InvoicingLedgerItem'
  has_many :line_items, class_name: 'InvoicingLineItem', foreign_key: :line_item_group_id
end
