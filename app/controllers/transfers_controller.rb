class TransfersController < ApplicationController

  def new

    @transfer = Transfer.new
    @accounts_data =  Array.new

    #render plain: @accounts.inspect

    Account.find_each do |a|
      @accounts_data.push(["#{a.code} #{a.amount}", a.id])
    end

  end

  def create
    #render plain: params[:transfer].inspect
    #account_from = Account.find(params[:account_from])

  #  if account_from.amount < params[:sum].to_f
  #    flash[:notice] = "Not enough money"
  #    redirect_to transfer_accounts_path
  #  end

  #  account_to = Account.find(params[:account_to])

  #  if account_from.id == account_to.id
  #    flash[:notice] = "Cannot transfer to the same account"
  #    redirect_to transfer_path
  #  end
#=begin

  @transfer = Transfer.new(transfer_params)

  if @transfer.save

    flash[:notice] = "Transfer complete"
    redirect_to transfer_path


  else
    render 'new'
  #  redirect_to transfer_path
  end
#=end
  end

  private


  def transfer_params
    params.require(:transfer).permit(:from_account, :to_account, :amount)
  end

end
