class APIStats < APIMain
  def bounces
    data(URLS_STATS[:bounces])
  end

  def cycle
    data(URLS_STATS[:cycle])
  end

  def history
    data(URLS_STATS[:history])
  end

  def spam
    data(URLS_STATS[:spam])
  end

  def summary
    data(URLS_STATS[:summary])
  end

  def unsubscribe
    data(URLS_STATS[:unsubs])
  end
end
