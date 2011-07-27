class CsvRow
    def initialize(headers, rawrow)
        @headers = headers
        @rawrow = rawrow
    end
    def method_missing(name, *args)
        @rawrow[@headers.index{|x|x.eql?(name.to_s)}] # name comes in as symbol
                                                      # need to_s on it
    end
end

module ActsAsCsv

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
            @csv_contents.each do |rawrow|
                row = CsvRow.new(@headers, rawrow)
                yield row
            end
        end

        attr_accessor :headers, :csv_contents

        def initialize
            read
        end
    end
end

class RubyCsv # no inheritance! you can mix it in
    include ActsAsCsv
    acts_as_csv
end

m = RubyCsv.new
puts m.headers.inspect
puts m.csv_contents.inspect
m.each do |row|
    puts row.one
end
