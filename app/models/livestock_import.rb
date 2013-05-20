class LivestockImport 

    extend ActiveModel::Naming
    include ActiveModel::Conversion
    include ActiveModel::Validations

    attr_accessor :file

    def initialize(attributes = {})
      attributes.each { |name, value| send("#{name}=", value) }
    end

    def persisted?
      false
    end

    def save
      if imported_livestocks.map(&:valid?).all?
        imported_livestocks.each(&:save!)
        true
      else
        imported_livestocks.each_with_index do |livestock, index|
          livestock.errors.full_messages.each do |message|
            errors.add :base, "Row #{index+2}: #{message}"
          end
        end
        false
      end
    end

    def imported_livestocks
      @imported_livestocks ||= load_imported_livestocks
    end

    def load_imported_livestocks
      spreadsheet = open_spreadsheet
      header = spreadsheet.row(1)
      (2..spreadsheet.last_row).map do |i|
        row = Hash[[header, spreadsheet.row(i)].transpose]
        livestock = Livestock.find_by_id(row["id"]) || Livestock.new
        livestock.attributes = row.to_hash.slice(*Livestock.accessible_attributes)
        livestock
      end
    end

    def open_spreadsheet
      case File.extname(file.original_filename)
      when ".csv" then Roo::Csv.new(file.path, nil, :ignore)
      when ".xls" then Roo::Excel.new(file.path, nil, :ignore)
      when ".xlsx" then Roo::Excelx.new(file.path, nil, :ignore)
      else raise "Unknown file type: #{file.original_filename}"
      end
    end
end
