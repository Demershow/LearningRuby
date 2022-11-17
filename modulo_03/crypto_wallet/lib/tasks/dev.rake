namespace :dev do
  desc "config dev"
  task setup: :environment do
    if Rails.env.development?
    show_spinner("Apagando bd") {%x(rails db:drop:_unsafe)}
    show_spinner("Criando bd..."){%x(rails db:create)}
    show_spinner("Migrando bd..."){%x(rails db:migrate)}
    show_spinner("Povoando bd..."){%x(rails db:seed)}
    %x(rails dev:add_coins)
    %x(rails dev:add_mining_type)
      else
    puts "Not in development"
    end
  
  end


  

  
    desc 'Cadastra as moedas'
    task add_coins: :environment do
      show_spinner('Cadastrando moedas...') do
      coins = [
       {
          description: "Bitcoin",
          acronym: "BTC",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/1.png"
     },
     {
          description: "Ethereum",
          acronym: "ETH",
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/1027.png"
     },
     {
          description: "Dash",
          acronym: 'Dash',
          url_image: "https://s2.coinmarketcap.com/static/img/coins/64x64/131.png"
     },
    ]
  
    
    coins.each do |coin| 
      Coin.find_or_create_by!(coin)
    end
    end
    end

    desc "Cadastrar os tipo de mineração"
task add_mining_type: :environment do
  show_spinner("Cadastrando tipo de mineração...", "Concluído com sucesso!") do
    mining_type = [
      {description: 'Proof of Work',acronym: "PoW"},
      {description: 'Proof of Stake', acronym: "PoS"},
      {description: 'Proof of Capacity', acronym: "PoC"}
    ]

    mining_type.each do |mining| 
      MiningType.find_or_create_by!(mining)
  end
end

end

  private
  def show_spinner(msg_start, msg_end = 'Concluido.')
    spinner = TTY::Spinner.new("[:spinner] #{msg_start}", format: :dots)
    spinner.auto_spin # Automatic animation with default interval
     yield
     spinner.success("(#{msg_end})")
  end
end



