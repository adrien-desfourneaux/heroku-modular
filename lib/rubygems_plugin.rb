Gem.post_install do
  puts 'first_app post_install'
  system('npm install')
end
