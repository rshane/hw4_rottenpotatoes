class Movie < ActiveRecord::Base
  def self.all_ratings
    %w(G PG PG-13 NC-17 R)
  end
  def self.find_sim_dir(title, dir)
    Movie.find(:all,:conditions =>"title != '#{title}' AND director = '#{dir}'")
  end
end
