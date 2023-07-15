require 'csv'
   namespace :import do
    desc "import parent details from csv"
    task parentsdetail: :environment do
        filename = File.join(Rails.root, "parentsdetail.csv")
        CSV.foreach(filename,col_sep: '|') do |row|
          User_detail_id, first_name, last_name, Address, phone_number, email = row
      
      #     next if User_detail_id.nil? # Skip the row if User_detail_id is null
      
      #     ParentDetail.create(
      #       User_detail_id: User_detail_id,
      #       first_name: first_name,
      #       last_name: last_name,
      #       Address: Address,
      #       phone_number: phone_number,
      #       email: email
      #     )
      # end
        end
      
    end 
end
