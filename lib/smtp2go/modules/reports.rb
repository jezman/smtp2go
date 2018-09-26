module Reports
  def report(data)
    data['data'].each { |key, value| puts "#{key} - #{value}" }
  end
end
