task :apply do
  sh(
    'terraform', 'apply',
    '-var', 'access_key=' + ENV['AWS_ACCESS_KEY'],
    '-var', 'secret_key=' + ENV['AWS_SECRET_KEY'],
    '-lock=false',
    'terraform'
  )
end
