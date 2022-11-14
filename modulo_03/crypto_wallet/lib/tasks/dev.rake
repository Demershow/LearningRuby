namespace :dev do
  desc "config dev"
  task setup: :environment do
    puts %x(rails db:drop:_unsafe db:create db:migrate db:seed)
  end

end
