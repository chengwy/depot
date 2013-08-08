#---
# Excerpted from "Agile Web Development with Rails",
# published by The Pragmatic Bookshelf.
# Copyrights apply to this code. It may not be used to create training material, 
# courses, books, articles, and the like. Contact us if you are in doubt.
# We make no guarantees that this code is fit for any purpose. 
# Visit http://www.pragmaticprogrammer.com/titles/rails4 for more book information.
#---
# encoding: utf-8
Product.delete_all
Product.create(title: 'CoffeeScript',
  description: 
    %{<p>
        CoffeeScript is JavaScript done right. It provides all of JavaScript's
	functionality wrapped in a cleaner, more succinct syntax. In the first
	book on this exciting new language, CoffeeScript guru Trevor Burnham
	shows you how to hold onto all the power and flexibility of JavaScript
	while writing clearer, cleaner, and safer code.
      </p>},
  image_url:   'cs.jpg',    
  price: 36.00,
  tags: 'IT',
  stock_volumes:12345)
# . . .
Product.create(title: 'Programming Ruby 1.9',
  description:
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  image_url: 'ruby.jpg',
  price: 49.95,
  tags: 'IT',
  stock_volumes:12345)
# . . .

Product.create(title: 'Rails Test Prescriptions',
  description: 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to testing
        Rails applications, covering Test-Driven Development from both a
        theoretical perspective (why to test) and from a practical perspective
        (how to test effectively). It covers the core Rails testing tools and
        procedures for Rails 2 and Rails 3, and introduces popular add-ons,
        including Cucumber, Shoulda, Machinist, Mocha, and Rcov.
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95,
  tags: 'IT',
  stock_volumes:12345)

Product.create(title: 'Testbook',
  description: 
    %{<p>
        Testbook Testbook Testbook Testbook Testbook Testbook Testbook Testbook 
        Testbook TestbookTestbook Testbook Testbook
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95,
  tags: 'math',
  stock_volumes:12345)

Product.create(title: 'Testbook2',
  description: 
    %{<p>
        Testbook Testbook Testbook Testbook Testbook Testbook Testbook Testbook 
        Testbook TestbookTestbook Testbook Testbook
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95,
  tags: 'math',
  stock_volumes:12345)

Product.create(title: 'Testbook3',
  description: 
    %{<p>
        Testbook Testbook Testbook Testbook Testbook Testbook Testbook Testbook 
        Testbook TestbookTestbook Testbook Testbook
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95,
  tags: 'math',
  stock_volumes:12345)

Product.create(title: 'Testbook4',
  description: 
    %{<p>
        Testbook Testbook Testbook Testbook Testbook Testbook Testbook Testbook 
        Testbook TestbookTestbook Testbook Testbook
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95,
  tags: 'subclass11',
  stock_volumes:12345)

Product.create(title: 'Testbook5',
  description: 
    %{<p>
        Testbook Testbook Testbook Testbook Testbook Testbook Testbook Testbook 
        Testbook TestbookTestbook Testbook Testbook
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95,
  tags: 'subclass11',
  stock_volumes:12345)

Product.create(title: 'Testbook6',
  description: 
    %{<p>
        Testbook Testbook Testbook Testbook Testbook Testbook Testbook Testbook 
        Testbook TestbookTestbook Testbook Testbook
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95,
  tags: 'subclass11',
  stock_volumes:12345)

Product.create(title: 'Testbook7',
  description: 
    %{<p>
        Testbook Testbook Testbook Testbook Testbook Testbook Testbook Testbook 
        Testbook TestbookTestbook Testbook Testbook
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95,
  tags: 'subclass31',
  stock_volumes:12345)

Product.create(title: 'Testbook8',
  description: 
    %{<p>
        Testbook Testbook Testbook Testbook Testbook Testbook Testbook Testbook 
        Testbook TestbookTestbook Testbook Testbook
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95,
  tags: 'subclass31',
  stock_volumes:12345)

Product.create(title: 'Testbook9',
  description: 
    %{<p>
        Testbook Testbook Testbook Testbook Testbook Testbook Testbook Testbook 
        Testbook TestbookTestbook Testbook Testbook
      </p>},
  image_url: 'rtp.jpg',
  price: 34.95,
  tags: 'subclass42',
  stock_volumes:12345)

User.delete_all
User.create(name: 'yumeiling',
password: '123',
password_confirmation: '123')

Type.delete_all
Type.create(type_name: 'type1')
Type.create(type_name: 'type2')
Type.create(type_name: 'type3')
Type.create(type_name: 'type4')

Subclass.delete_all
Subclass.create(type_id: 1,
  content: 'IT')
Subclass.create(type_id: 1,
  content: 'subclass11')
Subclass.create(type_id: 1,
  content: 'subclass12')
Subclass.create(type_id: 1,
  content: 'subclass13')
Subclass.create(type_id: 1,
  content: 'subclass14')
Subclass.create(type_id: 1,
  content: 'subclass15')

Subclass.create(type_id: 2,
  content: 'math')
Subclass.create(type_id: 2,
  content: 'subclass21')
Subclass.create(type_id: 2,
  content: 'subclass22')
Subclass.create(type_id: 2,
  content: 'subclass23')
Subclass.create(type_id: 2,
  content: 'subclass24')
Subclass.create(type_id: 2,
  content: 'subclass25')

Subclass.create(type_id: 3,
  content: 'subclass31')
Subclass.create(type_id: 3,
  content: 'subclass32')
Subclass.create(type_id: 3,
  content: 'subclass33')
Subclass.create(type_id: 3,
  content: 'subclass34')
Subclass.create(type_id: 3,
  content: 'subclass35')

Subclass.create(type_id: 4,
  content: 'subclass41')
Subclass.create(type_id: 4,
  content: 'subclass42')
Subclass.create(type_id: 4,
  content: 'subclass43')
Subclass.create(type_id: 4,
  content: 'subclass44')
Subclass.create(type_id: 4,
  content: 'subclass45')