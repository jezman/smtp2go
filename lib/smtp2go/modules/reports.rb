module Reports
  def report(data)
    data['data'].each do |key, value|
      puts "#{key} - #{value}"
    end
  end

  def history_report(data)
    raise 'history is nil...' if data['data']['history'].nil?

    data['data']['history'].each do |emails|
      emails.each { |key, value| puts "#{key} - #{value}" }
      puts '-' * 50
    end

    puts "count: #{data['data']['count']}"
  end
end
