def bar
  puts "Top level loader method called from loadee"
end

load( File.expand_path( "../loadee.rb", __FILE__ ), true )

if defined?( foo )
  foo
else
  begin
    foo
  rescue NameError
    puts "The load(...,true) wrap option works"
  end
end
