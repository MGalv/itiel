describe Itiel::Extractors::CSVFile do
  before :each do
    csv_file = "#{File.dirname(__FILE__)}/../../support/csv_files/brands.csv"
    @brand_source = Itiel::Extractors::CSVFile.new(csv_file)
  end

  it "returns a hash with the contents of the csv file" do
    expected_result = [
        {
          "id"   => "1",
          "name" => "Ono"
        },
        {
          "id"   => "2",
          "name" => "Okinawa"
        }
    ]
    result = @brand_source.output

    assert_equal expected_result, result
  end
end

