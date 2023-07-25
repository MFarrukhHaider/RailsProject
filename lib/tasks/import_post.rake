require 'csv'
namespace :import_file do
desc "Import Posts from csv file"
  task :posts,[:file] => :environment do |task,args|
    csv_file=args[:file]

    CSV.foreach(csv_file, headers: true) do |row|
        Post.create(title: row['title'], context: row['context'], published: row['published'])
    end
    puts 'Posts imported successfully!'

  end
end






