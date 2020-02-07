class ChemicalsController < ApplicationController
  # protect_from_forgery with: :exception
  # autocomplete :chemical, :chemical_name, full: true

  def index
    if params[:chemical_name]
      @chemicals = Chemical.where(['chemical_name LIKE ?', "%#{params[:chemical_name]}%"])
    else
      @chemicals = Chemical.all
    end
  end 
  
  def show 
    @chemical = Chemical.find_by(chemical_id: params[:id])
    @chemicalForm = Chemical.find_by(chemical_id: params[:id]).dosage_form_name
    
    case @chemicalForm
    when '乳剤','液剤','水溶剤','水和剤','塗布剤','油剤' then 
      @unit = 'l'
    when 'くん蒸剤','粒剤','粉末','粉粒末','ペースト剤','エアゾル','その他','くん煙剤','マイクロカプセル剤','農薬肥料' then 
      @unit = 'kg'
    else
      @unit = 'kg'
    end
    
    @records = Record.where(chemical_id: params[:id]).order("paid_price")
    @maxPrice = Record.where(chemical_id: params[:id]).maximum("paid_price")
    @minPrice = Record.where(chemical_id: params[:id]).minimum("paid_price")
    @avePrice = Record.where(chemical_id: params[:id]).average("paid_price")

    @sale = Sale.find_by(chemical_id: params[:id])

  end 
end
