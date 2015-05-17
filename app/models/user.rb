class User < ActiveRecord::Base
  #attr_accessible *column_names

  def self.to_csv(options = {})
    CSV.generate(options) do |csv|
      csv << column_names
      all.each do |user|
        csv << user.attributes.values_at(*column_names)
      end
    end
  end

  def self.import(file)
    CSV.foreach(file.path, headers: true) do |row|
      user.find_by_id(row["ID"]) || new
      user.attributes = row.to_hash.slice(*accessible_attributes)
      user.save!
      #User.create!(row.to_hash)
    end
  end
end
