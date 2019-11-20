def flip_date(date)
  @unordered_date = date.to_s.split('-')
  @ordered_date = @unordered_date.reverse()
  @ordered_date = @ordered_date.join('/')
end
