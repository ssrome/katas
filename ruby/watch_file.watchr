watch( '.*\.rb' ) do
    system 'bundle exec rspec -f doc'
end 