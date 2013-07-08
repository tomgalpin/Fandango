Theater.delete_all
Theater.find_or_create_by_name(:name => "Galpin Cinemas", :id => 1)

Movie.delete_all
Movie.find_or_create_by_title(:title => "Gross Pointe Blank", :theater_id => 1)
Movie.find_or_create_by_title(:title => "High Fidelity", :theater_id => 1)
Movie.find_or_create_by_title(:title => "Hot Tub Time Machine", :theater_id => 1)

Seat.delete_all
seats = [
  "1A", "1B", "1C", "1D",
  "2A", "2B", "2C", "2D",
  "3A", "3B", "3C", "3D",
  "4A", "4B", "4C", "4D"]

seats.each do |seat|
  Seat.find_or_create_by_location(:location => seat, :theater_id => 1)
end

# Showing.delete_all
# Showing.create(:price => 7.00, :time => "Mon. 5:30pm")
# Showing.create(:price => 7.00, :time => "Mon. 7:30pm")
# Showing.create(:price => 7.00, :time => "Mon. 9:30pm")

# Showing.create(:price => 7.00, :time => "Tues. 5:30pm")
# Showing.create(:price => 7.00, :time => "Tues. 7:30pm")
# Showing.create(:price => 7.00, :time => "Tues. 9:30pm")

# Showing.create(:price => 7.00, :time => "Wed. 5:30pm")
# Showing.create(:price => 7.00, :time => "Wed. 7:30pm")
# Showing.create(:price => 7.00, :time => "Wed. 9:30pm")

# Showing.create(:price => 7.00, :time => "Thurs. 5:30pm")
# Showing.create(:price => 7.00, :time => "Thurs. 7:30pm")
# Showing.create(:price => 7.00, :time => "Thurs. 9:30pm")

# Showing.create(:price => 7.00, :time => "Fri. 5:30pm")
# Showing.create(:price => 7.00, :time => "Fri. 7:30pm")
# Showing.create(:price => 7.00, :time => "Fri. 9:30pm")

# Showing.create(:price => 7.00, :time => "Sat. 5:30pm")
# Showing.create(:price => 7.00, :time => "Sat. 7:30pm")
# Showing.create(:price => 7.00, :time => "Sat. 9:30pm")

# Showing.create(:price => 7.00, :time => "Sun. 5:30pm")
# Showing.create(:price => 7.00, :time => "Sun. 7:30pm")
# Showing.create(:price => 7.00, :time => "Sun. 9:30pm")