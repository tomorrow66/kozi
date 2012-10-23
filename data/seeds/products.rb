# Seed files in the ./data/seeds directory can be run one at a time, or all at once:
#  ~: rake dm:seed[users]
# or
#  ~: rake db:seed:all

# User.create email: 'johndoe@example.com', password: 'secret123'

Productline.create title: 'Fantastical', url_name: 'fantastical'
Productline.create title: 'Inspired by Nature', url_name: 'nature'
Productline.create title: 'Plushtastic', url_name: 'plushtastic'

Product.create name: 'Checkered Fur', description: '',  url_name: 'checkeredfur', pillows: '',  productline_id: '1'
Product.create name: 'Fancy Feather Gold', description: '',  url_name: 'fancyfeathergold', pillows: '',  productline_id: '1'
Product.create name: 'Fancy Feather Purple', description: '',  url_name: 'fancyfeatherpurple', pillows: 'fancyfeathersilver_fancyfeatherpurple.jpg',  productline_id: '1'
Product.create name: 'Fancy Feather Silver', description: '',  url_name: 'fancyfeathersilver', pillows: 'chinchilla_peacock_fancyfeathersilver.jpg',  productline_id: '1'
Product.create name: 'Peacock', description: '',  url_name: 'peacock', pillows: 'chinchilla_peacock_fancyfeathersilver.jpg',  productline_id: '1'
Product.create name: 'Sheared Chinchilla', description: '',  url_name: 'shearedchinchilla', pillows: 'shearedchinchilla_brandyfox_foxtail.jpg',  productline_id: '1'
Product.create name: 'Striped Mink', description: '',  url_name: 'stripedmink', pillows: '',  productline_id: '1'

Product.create name: 'Brandy Fox', description: '',  url_name: 'brandyfox', pillows: 'foxtail_beaver_brandyfox2.jpg',  productline_id: '2'
Product.create name: 'Chinchilla', description: '',  url_name: 'chinchilla', pillows: 'chinchilla_peacock_fancyfeathersilver.jpg',  productline_id: '2'
Product.create name: 'Embossed Beaver', description: '',  url_name: 'embossedbeaver', pillows: 'foxtail_beaver_brandyfox.jpg',  productline_id: '2'
Product.create name: 'Foxtail', description: '',  url_name: 'foxtail', pillows: 'foxtail_beaver_brandyfox.jpg',  productline_id: '2'
Product.create name: 'Rabbit', description: '',  url_name: 'rabbit', pillows: 'snowlynx_siberianleopard_rabbit.jpg',  productline_id: '2'
Product.create name: 'Siberian Leopard', description: '',  url_name: 'siberianleopard', pillows: 'snowlynx_siberianleopard_rabbit.jpg',  productline_id: '2'
Product.create name: 'Snow Lynx', description: '',  url_name: 'snowlynx', pillows: 'snowlynx_siberianleopard_rabbit.jpg',  productline_id: '2'

Product.create name: 'Barcelona Fresa', description: '',  url_name: 'barcelonafresa', pillows: 'granadamarina_ibizaolivia_barcelonafresa.jpg',  productline_id: '3'
Product.create name: 'Barcelona Marina', description: '',  url_name: 'barcelonamarina', pillows: '',  productline_id: '3'
Product.create name: 'Barcelona Olivia', description: '',  url_name: 'barcelonaolivia', pillows: '',  productline_id: '3'
Product.create name: 'Granada Fresa', description: '',  url_name: 'granadafresa', pillows: 'granadaolivia_granadamarina_granadafresa2.jpg',  productline_id: '3'
Product.create name: 'Granada Marina', description: '',  url_name: 'granadamarina', pillows: 'granadamarina_ibizaolivia_barcelonafresa.jpg',  productline_id: '3'
Product.create name: 'Granada Olivia', description: '',  url_name: 'granadaolivia', pillows: 'granadaolivia_granadamarina_granadafresa2.jpg',  productline_id: '3'
Product.create name: 'Ibiza Fresa', description: '',  url_name: 'ibizafresa', pillows: 'ibizamarina_ibizafresa_ibizaolivia.jpg',  productline_id: '3'
Product.create name: 'Ibiza Marina', description: '',  url_name: 'ibizamarina', pillows: 'ibizamarina_ibizafresa_ibizaolivia.jpg',  productline_id: '3'
Product.create name: 'Ibiza Olivia', description: '',  url_name: '', pillows: 'granadamarina_ibizaolivia_barcelonafresa.jpg',  productline_id: '3'
Product.create name: 'Ice Cream Cuddle Caramel', description: '',  url_name: 'icecreamcuddlecaramel', pillows: '',  productline_id: '3'
Product.create name: 'Paisley Ivory', description: '',  url_name: 'paisleyivory', pillows: '',  productline_id: '3'
Product.create name: 'Pasiley Green', description: '',  url_name: 'pasileygreen', pillows: '',  productline_id: '3'
Product.create name: 'Shaggy Camel', description: '',  url_name: 'shaggycamel', pillows: '',  productline_id: '3'
Product.create name: 'Shaggy Chocolate', description: '',  url_name: 'shaggychocolate', pillows: '',  productline_id: '3'
Product.create name: 'Vine Cuddle Fresa', description: '',  url_name: 'vinecuddlefresa', pillows: 'vinecuddlefresa_vinecuddlemarina_vinecuddleolivia.jpg',  productline_id: '3'
Product.create name: 'Vine Cuddle Marina', description: '',  url_name: 'vinecuddlemarina', pillows: 'vinecuddlefresa_vinecuddlemarina_vinecuddleolivia.jpg',  productline_id: '3'
Product.create name: 'Vine Cuddle Olivia', description: '',  url_name: 'vinecuddleolivia', pillows: 'vinecuddlefresa_vinecuddlemarina_vinecuddleolivia.jpg',  productline_id: '3'