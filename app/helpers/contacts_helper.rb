# frozen_string_literal: true

module ContactsHelper
  def put_status(contact)
    status = '未対応' if contact.status.zero?
    status = '対応中' if contact.status == 1
    status = '対応済' if contact.status == 2
    status
  end

  def put_assign(contact)
    if contact.user_id
      return contact.user.name
    else
      return 'なし'
    end
  end
end
