def map(array)
    new_array = Array.new
    i = 0

    while i < array.length do
        new_array << yield(array[i])
        i += 1
    end

    return new_array
end

###  Working code
# def reduce(array, starting_point = 0)
#     i = 0
#     total = starting_point

#     while i < array.length do
#         total = yield(array[i], total)
#         i += 1
#     end

#     return total
# end

def reduce(array, starting_point = 0)
    i = 0
    total = starting_point

    while i < array.length do
        if !array[i]
            return false
            i += 1
        else
            total = yield(array[i], total)
            i += 1
    end
    return total
end
