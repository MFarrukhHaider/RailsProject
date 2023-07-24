namespace :user do
    desc 'Initialize Identifier'
    task initialize_identifier: :environment do
        
        count = 0
        User.all.each do  |u|
            u.identifier =  "identifier_#{u.id}"
            count += 1 if u.save
        end

        puts "User Updated: #{count}"
    end
end