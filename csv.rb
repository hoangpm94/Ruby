require 'csv'
sale = CSV.read('sale.csv', headers:true)
CSV.foreach('sale.csv', converters: :numeric) do |row|
  #puts row.inspect
puts row[11].to_f.minmax
#print sale.headers
 #sale[5]
end

#guests = CSV.foreach('guests.csv') do |row|
  #puts row[0]

#guests = CSV.read('guests.csv', headers:true)


#CSV.open('sale.csv', headers:true) do |sale|
  #sale = sale.each
  #sale.select do |row| 
    #row[4].to_i > 1
  #end
#end
