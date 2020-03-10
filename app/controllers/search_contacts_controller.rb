# frozen_string_literal: true

class SearchContactsController < ApplicationController
  def input
    @q = Contact.ransack
    @contacts = @q.result(distinct: true)
  end

  def result
    @q = Contact.ransack(search_params)
    @contacts = @q.result(distinct: true)
  end

  private

  def search_params
    params.require(:q).permit!
  end
end
