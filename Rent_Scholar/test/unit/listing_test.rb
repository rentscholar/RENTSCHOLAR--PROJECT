require 'test_helper'

class ListingTest < ActiveSupport::TestCase
  test "should not save listing without title" do
    listing = Listing.new
    assert !listing.save, "Saved the post without a title"
  end
  
  test "should not save listing without address" do
    listing = Listing.new
    listing.title = "1 Bedroom Apartment"
    assert !listing.save, "Saved the listing without an address"
  end
  
  test "should not save listing without price" do
    listing = Listing.new
    listing.title = "1 Bedroom Apartment"
    listing.address = "15 Telfer Court, Paris ON Canada"
    assert !listing.save, "Saved the post without a price"
  end

  test "should not save listing without number of available rooms" do
    listing = Listing.new
    listing.title = "1 Bedroom Apartment"
    listing.address = "15 Telfer Court, Paris ON Canada"
    listing.price = '$525.00'
    assert !listing.save, "Saved the post without number of rooms"
  end
  
  test "should save listing with verified fields" do
    listing = Listing.new
    listing.title = "1 Bedroom Apartment"
    listing.address = "15 Telfer Court, Paris ON Canada"
    listing.price = '$525.00'
    listing.rooms = 2
    assert listing.save
  end
  
end
