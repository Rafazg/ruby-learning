def better_than_average(arr, points)
    average = (arr.reduce(:+) + points) / (arr.length + 1).to_f
    points > average
  end