namespace :dev do
  desc "config dev"
  task setup: :environment do
    if Rails.env.development?
    show_spinner("Apagando bd") do 
      %x(rails db:drop:_unsafe)
    end
    show_spinner("Criando bd...") do 
    %x(rails db:create)
    end
    show_spinner("Migrando bd...") do 
      %x(rails db:migrate)
      end
    show_spinner("Povoando bd...") do 
      %x(rails db:seed)
      end
    else
    puts "Not in development"
    end
  end
  def show_spinner(msg_start, msg_end = 'Concluido.')
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}", format: :dots)
    spinner.auto_spin # Automatic animation with default interval
     yield
     spinner.success("(#{msg_end})")
  end
end
