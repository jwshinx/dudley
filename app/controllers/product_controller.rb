class ProductController < ApplicationController
  layout "store"
  caches_page :earrings, :necklaces, :rings, :custom, :collections, :oneproduct
  before_filter :logger_start

  def earrings
    @earrings = Product.of_type('earrings')
  end
  def necklaces
    logger.debug"===> PC.necklaces"
    @necklaces = Product.of_type('necklace')
  end
  def product_line(category)
    logger.debug "====> PC.product_line #{category}"
    products = []
    products = Product.of_type(category)
  end
  def set_ymals
    @ymal1 = Product.find_by_prodid(@product.like1id)
    @ymal2 = Product.find_by_prodid(@product.like2id)
    @ymal3 = Product.find_by_prodid(@product.like3id)
    @ymal4 = Product.find_by_prodid(@product.like4id)
  end
  def oneproduct
    logger.debug "===> PC.oneproduct #{params.inspect}"
    #@size = "6"
    @pattern = /Ring/
    @sizeoptions = [ 5, 5.5, 6, 6.5, 7, 7.5, 8, 8.5, 9, 9.5 ]
    @product = Product.find(params[:id])
    @products = product_line(@product.category)
    @previousSequence = @product.previous_sequence
    @nextSequence = @product.next_sequence
    @previousProduct = Product.of_type(@product.category).find_by_sequence(@previousSequence)
    @nextProduct = Product.of_type(@product.category).find_by_sequence(@nextSequence)
    set_ymals
    respond_to do |format|
      format.html
      format.xml { render :xml => @product }
    end
  end
  def displayfullimage
    @product = Product.find(params[:id])
    logger.info "======= displayfullimage: #{params.inspect} ======"
    if params[:tn] == "tn1" then
      @fullimage = @product.full1
    elsif params[:tn] == "tn2" then
      @fullimage = @product.full2
    else
      @fullimage = @product.full3
    end
    respond_to do |format|
      format.js if request.xhr?
      format.html { redirect_to_oneproduct } 
    end
  end
  def previousItem
    logger.debug "===> PC.previousItem #{params}"
    respond_to do |format|
      format.js if request.xhr?
      #format.html { redirect_to_oneearring, :id => 1001 }
      format.html { redirect_to_oneproduct(params[:id]) }
    end
  end
  def nextItem
    logger.debug "===> PC.nextItem #{params}"
    respond_to do |format|
      format.js if request.xhr?
      #format.html { redirect_to_oneearring }
      format.html { redirect_to_oneproduct(params[:id]) }
    end
  end

  def rings
    logger.debug"===> PC.rings"
    @rings = Product.of_type('rings')
  end

  def custom
  end

  def collections
    logger.info("===> PC.collections")
    @collections = Product.collections
  end
  def fakecollections
    logger.info("===> PC.fakecollections")
    @collections = Product.collections
  end

private
  def redirect_to_oneearing(msg = nil)
    flash[:notice] = msg if msg
    redirect_to :action => 'oneearring'
  end
  def redirect_to_oneproduct(id)
    #flash[:notice] = msg if msg
    redirect_to :action => 'oneproduct', :id => id
  end
  def redirect_to_onenecklace(msg = nil)
    flash[:notice] = msg if msg
    redirect_to :action => 'onenecklace'
  end
end
