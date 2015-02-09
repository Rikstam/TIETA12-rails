class TransfersController < ApplicationController


  def index

    #@account = Account.find(params[:account_id])
    @transfers = Transfer.where(:account_id => params[:account_id])

  end

  def new

    @transfer = Transfer.new
    @accounts_data =  Array.new

    #render plain: @accounts.inspect

    Account.find_each do |a|
      @accounts_data.push(["#{a.id} #{a.code} #{a.amount}", a.id])
    end

  end

  def create

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
        #render plain: params[:transfer].inspect
    @account_from = Account.find(@transfer.account_id)

    if @account_from.amount >= @transfer.amount.to_f

      @account_to = Account.find(@transfer.to_account)
      @account_from.amount -= @transfer.amount.to_f
      @account_to.amount += @transfer.amount.to_f

      if @account_from.save && @account_to.save

      flash[:notice] = "Transfer of sum #{@transfer.amount.to_f}€ from account #{@account_from.id} to account #{@account_to.id} complete"
        redirect_to new_account_transfer_path
      end

      end
  #else
  #flash[:notice] = "Transfer of sum #{params[:sum]} from account #{@account_from.id} not possible due to insufficient funds."
  #redirect_to new_account_transfer_path
      else

    @accounts_data =  Array.new

    #render plain: @accounts.inspect

   Account.find_each do |a|
      @accounts_data.push(["#{a.id} #{a.code} #{a.amount}", a.id])
   end


  #  render :new => @accounts_data
    #flash[:error] = @transfer.errors;
    render :new
    #redirect_to(new_account_transfer_path, :flash => {:notice=> "transfer not ok"})
  end
#=end
  end

  private


  def transfer_params
    params.require(:transfer).permit(:account_id, :to_account, :amount)
  end



end
