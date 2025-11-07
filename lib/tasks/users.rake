namespace :users do
  desc "Export all users to users.txt"
  task export: :environment do
    file_path = Rails.root.join('users.txt')
    File.open(file_path, 'w') do |file|
      User.order(:id).each do |user|
        file.puts "#{user.id}\t#{user.name}\t#{user.email}\t#{user.created_at}"
      end
    end
    puts "Exported #{User.count} users to #{file_path}"
  end
end