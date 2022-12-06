class Book < ApplicationRecord
  before_save { |book| book.popularity = calculate_popularity }

  # def sell_book
  #   update_attribute(:number_sold, self.number_sold += 1)
  # end
  
  private
  def calculate_popularity
    if number_sold > 5
      'high'
    else
      'low'
    end
  end
end
