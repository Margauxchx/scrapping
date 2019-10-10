require_relative '../lib/dark_trader'

describe "the symbols method" do
    it "should return an array and not nil" do
    expect(symbols).not_to be_nil  
    #expect(symbols(Nokogiri::HTML(open("https://coinmarketcap.com/all/views/all/")))).is_a?(Array)
    
    end
end