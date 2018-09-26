module Reports
  def report(data)
    data['data'].each do |key, value|
      puts "#{key} - #{value}"
    end
  end
end
