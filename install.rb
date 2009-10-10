# This is the post install hook for copying definition of Ajax.InPlaceEditorWithEmptyText class
require 'ftools'

destination_file = File.expand_path("#{File.dirname(__FILE__)}/../../../public/javascripts/in_place_editor_with_empty_text.js")
file = "#{File.dirname(__FILE__)}/in_place_editor_with_empty_text.js"

if File::exists? destination_file
  puts "#{destination_file} already exists. Please ensure it is up-to-date."
  puts "See #{file}"
else  
  puts "Beacause of buggy Ajax.InPlaceEditor class in script.aculo.us,"
  puts "we're going to define our own Ajax.InPlaceEditorWithEmptyText."
  puts "Copying #{file} to #{destination_file}..."
  File.copy file, destination_file
end
