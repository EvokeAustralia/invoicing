require 'rails/generators/active_record'

module Invoicing
  module Generators
    class LedgerItemGenerator < ActiveRecord::Generators::Base
      source_root File.expand_path("../templates", __FILE__)

      def copy_migrations
        migration_template "migration.rb", "db/migrate/create_invoicing_item_groups.rb"
      end

      def copy_models
        template "model.rb", "app/models/invoicing_item_group.rb"
      end
    end
  end
end
