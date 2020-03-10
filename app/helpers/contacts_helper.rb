# frozen_string_literal: true

module ContactsHelper
  def put_status(contact)
    status = '未対応' if contact.status.zero?
    status = '対応中' if contact.status == 1
    status
  end
end
