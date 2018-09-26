class APISenders < APIMain
  def add(email)
    data(URLS_SENDERS[:add], email)
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
