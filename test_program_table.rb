require_relative "table"

table1 = Table.new()
table2 = Table.new()

table1.stands
table2.stands = 3

def check(table)
  status = table.is_table_stable

  if status == true
    return "stable"
  else
    return "not stable"
  end
end

def stable(table)
    #puts "#{table} has #{table.stands} stands therefore it is #{table.is_table_stable}"
  puts "this table has #{table.stands} stands therefore it is #{check(table)}"

end


stable(table1)
stable(table2)
