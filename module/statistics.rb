module Statistics 
    def theBestReader(orders, readers)
        counts = {}
        orders.each do |element| 
            if counts.key? (element.reader_id)
                counts[element.reader_id] = counts[element.reader_id] + 1
            else
                counts[element.reader_id] = 1
            end
        end
        id_best_reader = counts.max_by { |key, value| value }[0]
        found = readers.find{|obj| obj.id == id_best_reader}
    end 
end