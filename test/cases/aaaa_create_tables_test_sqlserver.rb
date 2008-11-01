# The filename begins with "aaaa" to ensure this is the first test.
require 'cases/sqlserver_helper'

class AAAACreateTablesTestSqlserver < ActiveRecord::TestCase
  
  should 'load sqlserver specific schema' do
    sqlserver_specific_schema_file = File.expand_path(File.join(File.dirname(__FILE__), '..', 'schema', 'sqlserver_specific_schema.rb'))
    eval(File.read(sqlserver_specific_schema_file))
    assert true
  end
  
end