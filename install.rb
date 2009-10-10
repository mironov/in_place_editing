# This is the post install hook for copying definition of Ajax.InPlaceEditorWithEmptyText class
require 'ftools'

destination_file = File.expand_path("#{File.dirname(__FILE__)}/../../../public/javascripts/in_place_editor_with_empty_text.js")
file = "#{File.dirname(__FILE__)}/in_place_editor_with_empty_text.js"

puts
puts "Because of buggy Ajax.InPlaceEditor class in script.aculo.us,"
puts "we're going to define our own Ajax.InPlaceEditorWithEmptyText."
puts "Copying #{file} to #{destination_file}..."
puts
if File::exists? destination_file
  puts "in_place_editor_with_empty_text.js is already exists in javascripts dir."
  puts "Please ensure it is up-to-date."
  puts "See vendor/plugins/in_place_editing/in_place_editor_with_empty_text.js"
else  
  File.copy file, destination_file
  puts "Completed."
end
