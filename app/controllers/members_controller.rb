class MembersController < ApplicationController
  def index
    @members = Member.all
  end

  def delete_selected
    Member.where(id: params[:member_ids]).destroy_all
    redirect_to members_path, notice: '選択した会員を削除しました。'
  end

  def new
    @member = Member.new
  end
  
  def create
    @member = Member.new(member_params)
    if @member.save
      redirect_to members_path, notice: '会員が正常に登録されました。'
    else
      render :new
    end
  end

  def edit
    @member = Member.find(params[:id])
  end
  
  def update
    @member = Member.find(params[:id])
    if @member.update(member_params)
      redirect_to members_path, notice: '会員情報が正常に更新されました。'
    else
      render :edit
    end
  end
  
  private
  
  def member_params
    params.require(:member).permit(:name, :email)
  end
end
