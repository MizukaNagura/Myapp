class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def delete_selected
    Member.where(id: params[:member_ids]).destroy_all
    redirect_to members_path, notice: '選択した会員を削除しました。'
  end
  
end

class Member < ApplicationRecord
  acts_as_paranoid
end
