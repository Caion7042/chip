class Movie < ActiveRecord::Base
  
  def self.with_ratings(ratings_list)
    
    if ratings_list == nil
      return Movie.all
    end
    
#     return Movie.where("rating" => ratings_list)
    return Movie.where("rating IN (?)", (ratings_list.keys))

#         ?.map(&:to_i)

  
  end
  
  def self.all_ratings
    
    return Movie.distinct.pluck("rating")
    
  end
  
  
end
