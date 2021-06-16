def my_uniq(array)
    raise ArgumentError if !array.is_a?(Array)

    uniqued_array = []

    array.each do |item|
        if uniqued_array.include?(item)
            next
        else
            uniqued_array << item
        end
    end

    uniqued_array

end