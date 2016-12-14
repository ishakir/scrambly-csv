require 'csv'
require 'scrambly-csv'
require 'tempfile'

describe 'scrambly' do

  it 'should scramble' do
  	file = Tempfile.new('foo')
    CSV.open(file.path, 'wb') do |csv|
    	writer = ScramblyCsv::Scrambly.new(csv, ["one", "two", "three", "four"])
    	writer.write([1, 2, 3, 4])
    	writer.write([5, 6, 7, 8])
    	writer.write([9, 10, 11, 12])
    end
	puts file.path 
  end
end