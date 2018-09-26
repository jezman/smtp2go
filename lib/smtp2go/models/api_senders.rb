class APISenders < APIMain
  def add
    data(URLS_SENDERS[:add])
  end

  def remove
    data(URLS_SENDERS[:remove])
  end

  def update
    data(URLS_SENDERS[:update])
  end

  def view
    data(URLS_SENDERS[:view])
  end
end
