namespace :dev do
  desc "config dev"
  task setup: :environment do
    if Rails.env.development?
      spinner = TTY::Spinner.new("[:spinner] Apagando Banco de dados...", format: :classic)
    spinner.auto_spin # Automatic animation with default interval
    %x(rails db:drop:_unsafe)
    spinner.success("(Feito!)")
    spinner = TTY::Spinner.new("[:spinner] Recriando o banco de dados...", format: :dots)
    spinner.auto_spin # Automatic animation with default interval
    %x(rails db:create)
    spinner.success("(Feito!)")
    spinner = TTY::Spinner.new("[:spinner] Migrando o banco de dados...", format: :dots)
    spinner.auto_spin # Automatic animation with default interval
    %x(rails db:migrate)
    spinner.success("(Feito!)")
    spinner = TTY::Spinner.new("[:spinner] Povoando o banco de dados...", format: :dots)
    spinner.auto_spin # Automatic animation with default interval
    %x(rails db:seed)
     spinner.success("(Concluido!)")
    else
      puts "Not in development"
    end
  end

end
