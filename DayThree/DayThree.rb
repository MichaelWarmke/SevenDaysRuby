module ActsAsCsv

    class CsvRow
        def initialize(csv, csv_contents)
            @headers
            @row_contents
        end

        def method_missing name, *args
            index = @headers.index(name.to_s)
            @row_contents

    def self.included(base)
        base.extend ClassMethods
    end

    module ClassMethods
        def acts_as_csv
            include InstanceMethods
        end
    end

    module InstanceMethods
        def read
            @csv_contents = []
            filename = self.class.to_s.downcase + '.txt'
            file = File.new(filename)
            @headers = file.gets.chomp.split(', ')
        
            file.each do |row|
                @csv_contents << row.chomp.split(', ')
            end
        end

        def each
            @csv_contents.each { |row| CsvRow.new(@headers, row)}
        end

        attr_accessor :headers, :csv_contents
        def initialize
            read
        end
    end
end

class RubyCsv
    include ActsAsCsv
    acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect