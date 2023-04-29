def stockpicker (stocks)
    profit = 0;
    picker = Array.new
    stocks.each_with_index do |stock,day|
        stocks.each_with_index do |compare,compare_day|
            if day < compare_day
                if compare - stock > profit  
                    profit = compare - stock 
                    picker = [day,compare_day]
                end
            end
        end
    end
    p picker

end

stockpicker([17,3,6,9,15,8,6,1,10])
stockpicker([11,13,6,15,9,5,1,3,8,2,24,23,18,22,4,17,20,19,10,7,25,21,16,12,14])