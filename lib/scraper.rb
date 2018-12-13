require 'nokogiri'
require 'open-uri'
require 'pry'

require_relative './course.rb'

class Scraper

# Uses the make_courses method to print all the courses available
  def print_courses
    self.make_courses
    Course.all.each do |course|
      if course.title
        puts "Title: #{course.title}"
        puts "  Schedule: #{course.schedule}"
        puts "  Description: #{course.description}"
      end
    end
  end

# Gets the entire HTML document from the webpage
  def get_page
    doc = Nokogiri::HTML(open("http://learn-co-curriculum.github.io/site-for-scraping/courses"))
    binding.pry
  end

# Uses a CSS selector to get all the elements that contain a course
  def get_courses

  end

# Inistantiates Course objects with the data scrapped
  def make_courses
  end

end

Scraper.new.get_page