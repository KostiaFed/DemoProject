class PaginationHelper
  # The constructor takes in an array of items and a integer indicating how many
  # items fit within a single page
  def initialize(collection, items_per_page)
    @collection = collection
    @items_per_page = items_per_page
  end
    
  # returns the number of items within the entire collection
  def item_count
    @collection.count
  end
      
  # returns the number of pages
  def page_count
    (@collection.count.to_f / @items_per_page.to_f).ceil
  end
      
  # returns the number of items on the current page. page_index is zero based.
  # this method should return -1 for page_index values that are out of range
  def page_item_count(page_index)
    if page_index >= page_count || page_index < 0
      -1
    elsif page_index != page_count - 1
      @items_per_page
    else 
      @collection.length % @items_per_page;
    end
  end
      
  # determines what page an item is on. Zero based indexes.
  # this method should return -1 for item_index values that are out of range
  def page_index(item_index) 
    if item_index < 0 || item_index >= @collection.length
      -1
    end
      (item_index / @items_per_page).floor
  end
end