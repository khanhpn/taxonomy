require 'json'
require 'pry'
BASE_MASTER_DATA = "./products.json"

class Main
  attr_accessor :rows, :raw_data, :index
  def initialize
    @rows = rows
    @raw_data = []
    @index = 1
  end

  def execute
    read_json
    parse_json
    print_data
  end

  private

  def parse_json
    @rows.each do |row|
      next if row.dig("attributes").empty?
      @raw_data << row.dig("attributes").map{|item| item.dig("options")}
    end
  end

  def print_data
    @raw_data.each do |raw|
      next if raw.size == 0
      layer_one(raw) if raw.size == 1
      layer_more(raw) if raw.size > 1
    end
  end

  def read_json
    File.open(BASE_MASTER_DATA).each do |row|
      @rows = JSON.parse(row)
    end
  end

  def layer_one(datas)
    datas.each do |data|
      puts "#{@index}. #{data}"
      @index += 1
    end
  end

  def layer_more(datas)
    (0...datas.size).each do |item|
      datas[item].each do |item1|
        binding.pry
      end
    end
  end
end

main = Main.new
main.execute
