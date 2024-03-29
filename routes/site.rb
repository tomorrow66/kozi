['/index/?', '/index.php/?', '/index.html/?', '/home/?', '/home.php/?', '/home.html/?', '/?' ].each do |path|
  get path do
  	@path = 'index'
    erb :index, layout: false
  end
end

['/about/?', '/about.php/?', '/about.html/?'].each do |path|
  get path do
    @path = path
    erb :about
  end
end

['/calendar/?', '/calendar.php/?', '/calendar.html/?'].each do |path|
  get path do
    @path = path
    erb :calendar
  end
end

['/contact/?', '/contact.php/?', '/contact.html/?' ].each do |path|
  get path do
    @path = path
    nature = Productline.first(:title.like => "%Nature%")
    fantastical = Productline.first(:title.like => "%Fantastical%")
    plushtastic = Productline.first(:title.like => "%Plushtastic%")
    @productlines = [nature, fantastical, plushtastic]
    erb :contact
  end
end

['/press/?', '/press.php/?', '/press.html/?'].each do |path|
  get path do
    @path = path
    erb :press
  end
end

['/products/?', '/products.php/?', '/products.html/?', '/products-fantastical.php/?', '/products-plushtastic.php/?', '/products-nature.php/?'].each do |path|
  get path do
    @path = path
    erb :products
  end
end

get '/products/:id/?' do
	@productline = Productline.first(:title.like => "%#{params[:id]}%")
	@id = params[:id]
	@path = 'products'

	if @productline.nil?
	  flash[:alert] = 'I see what you tried to do there.'
	  redirect '/home'
	end
		
	products = Product.all(productline_id: @productline.id)
	@products = products.all(:order => [ :position.asc ])
	erb :product_line
end

get '/product/:id/?' do
  @path = 'product'
  @product = Product.first(url_name: params[:id])
	erb :product
end

post '/contact/?' do
	@path = 'contact'
	contact = [params[:fullname], params[:email], params[:phone], "\n\n Comments: #{params[:comments]}"] 
	products = [params[:checkfantistical1], params[:checkfantistical2], params[:checkfantistical3], params[:checkfantistical4], params[:checkfantistical5], params[:checkfantistical6], params[:checkfantistical7], params[:checkfantistical8], params[:checkplushtastic1], params[:checkplushtastic2], params[:checkplushtastic3], params[:checkplushtastic4], params[:checkplushtastic5], params[:checkplushtastic6], params[:checkplushtastic7], params[:checkplushtastic8], params[:checkplushtastic9], params[:checkplushtastic10], params[:checkplushtastic11], params[:checkplushtastic12], params[:checkplushtastic13], params[:checkplushtastic14], params[:checkplushtastic15], params[:checkplushtastic16], params[:checkplushtastic17], params[:checkplushtastic18], params[:checknature1], params[:checknature2], params[:checknature3], params[:checknature4], params[:checknature5], params[:checknature6], params[:checknature7], params[:checknature8]]

	contact.compact!
	contact.delete ''
	products.compact!
	products.delete ''
	if contact == []
		contact = 'None. ' 
	else 
		str = '' 
		contact.each {|c| str += c + ', '}
		contact = str
	end
	if products == []
		products = 'No products were selected' 
	else
		str = ''
		products.each {|p| str += p + ', '}
		products = str
	end
			Pony.mail(via: :smtp, via_options: settings.mail_server,
			to: 'charkoplin@kozishop.com',
			subject: 'From Contact Form @Kozishop.com',
			body: "Contact info: " + contact.to_s  + "\n\n Products: " + products.to_s
		)
	
	flash[:alert] = 'Thank you for contacting Kozi!'
	redirect back
end

##get('/*/?') do 
##  @path = 'index'
##  erb :index, layout: false 
##end