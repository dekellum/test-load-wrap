def bar
  puts "Top level loader method called from loadee"
end

load( File.expand_path( "../loadee.rb", __FILE__ ), true )

if defined?( foo )
  fail "ERROR: Given load() with wrap=true, loadee foo method should not be defined here"
end
