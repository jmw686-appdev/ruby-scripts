desc "Calculate mode"
task :mode do
  path_to_file = Rails.root + "lib/input_files/descriptive_statistics_numbers.txt"
  input = open(path_to_file).read.chomp
  numbers = input.gsub(",", "").split.map(&:to_f)

  # =====================================================================
  # Your code goes below.
  # The numbers from the file are in the array `numbers`.
  # =====================================================================

  # MODE
  # ====

  # To find the mode of a set of numbers, I follow an approach similar to the one for minimum and maximum above.

end

desc "Scrape IMDb Coming Soon"
task scrape_movies: :environment do
  # url = "http://www.imdb.com/movies-coming-soon/"
  # page = HTTParty.get(url)

  filename = Rails.root + "lib/imdb/movies-coming-soon.html"
  page = open(filename)
end
