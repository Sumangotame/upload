class CsvImportService
    require 'csv'
  
    def call(file)
      opened_file = File.open(file)
      options = { headers: true, col_sep: ';' }
    
      CSV.foreach(opened_file, **options) do |row|
        # it maps csv colymn to database
        parent_detail_hash = {}
        parent_detail_hash[:email] = row['email']
        parent_detail_hash[:first_name] = row['firstn']
        parent_detail_hash[:last_name] = row['lastn']
        parent_detail_hash[:phone_number] = row['phonen']
        parent_detail_hash[:Address] = row['address']  
        ParentDetail.find_or_create_by!(parent_detail_hash)



        # for performance, you could create a separate job to import each user
        # CsvImportJob.perform_later(user_hash)
      end
    end
  end