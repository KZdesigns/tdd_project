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

def two_sum(array)
    sum_indicies = []

    array.each_with_index do |item_1, idx_1|
        array.each_with_index do |item_2, idx_2|
            if item_1 + item_2 == 0 && idx_1 != idx_2 && (item_1 != 0 && item_2 != 0)
                sum_indicies = [idx_1, idx_2]
            end
        end
    end

    sum_indicies.sort
end

def my_transpose(matrix)
    trans = []
    inner = []
    
    (0...matrix.length).each do |i|
        (0...matrix.length).each do |j|
            inner.length == 3 ? next : inner << matrix[j][i]
        end

        trans << inner
        inner = []
    end

    trans
end



