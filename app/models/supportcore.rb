require "active_support"
require "active_support/core_ext/hash"
require "active_support/core_ext"
require "active_support/all"
# puts "foo".dup  
# puts "laxmi".present?
# puts "".blank?
# puts "".present?
# puts "laxmi".blank?
# puts [].empty?
# puts [].presence
# puts ["laxmi",1].presence
# hash = { a: {b: 1}}
# hash1 = hash.dup
# puts (hash.object_id == hash1.object_id)
# puts (hash[:a].object_id == hash1[:a].object_id)

# hash2 = hash.deep_dup
# puts (hash.object_id == hash2.object_id)
# puts (hash[:a].object_id == hash2[:a].object_id)


# @person = { first_name:"laxmi", last_name:"pasi"}
# puts @person.try { |p| "#{p.first_name} #{p.last_name}" }

# user = { first_name:""}
# puts user[:first_name]


# unless user[:first_name].nil?
#   puts user[:first_name]
# end

# def number11
#   return 1
# end

# puts number11.acts_like?(:string)

# def name
#   return "laxmi"
# end

# puts name.acts_like?(:string)


# class_eval and class instance

# class Person
#   def initialize(name)
#     @name = name
#   end

#   def getName
#     @name
#   end
# end 

# person1 = Person.new("bob")
# person2 = Person.new("jane")

# puts person1.getName

# Person.class_eval do
#   def name
#     @name.capitalize
#   end
# end

# puts person1.name
# puts person2.name

# person1.instance_eval do
#   def name11
#     @name.capitalize
#   end
# end

# puts person1.name11

# uts [0, true, String].to_param # => "0/true/String"

# puts  "name firts last".parameterize

# puts "laxmi pasi".to_query("name")

# puts "simform".to_query('company[name]')

# puts [3.4, -45.6].to_query('sample')
# # => "sample%5B%5D=3.4&sample%5B%5D=-45.6"
# a1 = {c: 3, b: 2, a: 1}
# puts a1.to_query # => "a=1&b=2&c=3"

# a11 = {id: 89, name: "John Smith"}.to_query('user')
# # => "user%5Bid%5D=89&user%5Bname%5D=John+Smith"
# puts a11

# class C
#   def initialize(x, y)
#     @x, @y = x, y
#   end
# end

# C.new(0, 1).instance_values # => {"x" => 0, "y" => 1}

# class C
#   def initialize(x, y)
#     @x, @y = x, y
#   end
# end

# C.new(0, 1).instance_variable_names # => ["@x", "@y"]

# puts 1.in?([1,2])        # => true
# puts "lo".in?("hello")   # => true
# puts 25.in?(30..50)      # => false
# #puts 1.in?(1)            # => ArgumentError

# #alias_attribute :login, :email

# class ThirdPartyLibrary
#   attr_internal :log_level  #accessible for only this class so there is no conflict with MyCrawler
# end

# # client code
# class MyCrawler < ThirdPartyLibrary
#   attr_accessor :log_level
# end

# module ActiveStorage
#   mattr_accessor :logger  #this same like attributes in class
# end


# module X
#   module Y
#     module Z
#     end
#   end
# end
# M = X::Y::Z

# puts X::Y::Z.module_parent # => X::Y
# puts M.module_parent       # => X::Y

# X::Y::Z.module_parent_name # => "X::Y"
# M.module_parent_name       # => "X::Y"

# module M
# end
# puts M.name # => "M"

# N = Module.new
# puts N.name # => "N"

# puts Module.new.name # => nil

# puts M.anonymous? # => false

# puts Module.new.anonymous? # => true

# class A
#   class_attribute :x
# end

# class B < A; end

# class C < B; end

# A.x = :a
# puts B.x # => :a
# puts C.x # => :a

# B.x = :b
# puts A.x # => :a
# puts C.x # => :b

# C.x = :c
# puts A.x # => :a
# puts B.x # => :b

# A.x = 1

# a1 = A.new
# a2 = A.new
# a2.x = 2

# puts a1.x # => 1, comes from A
# puts a2.x # => 2, overridden in a2


# class Base
#   class_attribute :x, instance_writer: false, default: "my"
#   class_attribute :y, instance_reader: false
# end

#Base.new.x = 1  //get error you cannnoy write 
# puts Base.new.x 

# Base.new.y = 2

#puts Base.new.y  #get error you cannot read

# class C; end
# puts C.subclasses # => []

# class B < C; end
# puts C.subclasses # => [B]

# class A < B; end
# puts C.subclasses # => [B]

# class D < C; end
# puts C.subclasses # => [B, D]

# class C; end
# puts C.descendants # => []

# class B < C; end
# puts C.descendants # => [B]

# class A < B; end
# puts C.descendants # => [B, A]          

# class D < C; end
# puts C.descendants # => [B, A, D]

# class C; end
# class B < C; end
# class A < B; end

# puts C.subclasses.inspect
# puts C.descendants.inspect

# p "".html_safe? # => false
# s = "".html_safe
# p s.html_safe? # => true  

# s = "<script>...</script>".html_safe
# p s.html_safe? # => true
# p s            # => "<script>...</script>"
# p "".html_safe + "<" # => "&lt;"
# p "".html_safe + "<".html_safe # => "<"

# p "Hello World".remove(/Hello /) # => "World"
# p " \n  foo\n\r \t bar \n".squish # => "foo bar"
# p "Oh dear! Oh dear! I shall be late!".truncate(20)
# # => "Oh dear! Oh dear!..."
# p "Oh dear! Oh dear! I shall be late!".truncate(20, omission: '&hellip;')
# # => "Oh dear! Oh &hellip;"
# p "laxmipasi".truncate(8,omission: '--')
# p "laxmipasi abc 112432".truncate(15,separator: ' ')
# p "👍👍👍👍".truncate_bytes(15)
# # => "👍👍👍…"
# p "👍👍👍👍".truncate_bytes(15, omission: "🖖")
# # => "👍👍🖖"

# p "Oh dear! Oh dear! I shall be late!".truncate_words(5)
# # => "Oh dear! Oh dear!..."
# a= "laxmi"
# p a.inquiry.laxmi? # => true
# p "active".inquiry.inactive?       # => false

# p "foo".starts_with?("f") # => true
# p "foo".ends_with?("o")   # => true

# p "  foo".indent(2)        # => "    foo"
# p "foo\n\t\tbar".indent(2) # => "\t\tfoo\n\t\t\t\tbar"
# p "foo".indent(2, "\t")    # => "\t\tfoo"

# p "foo\n\nbar".indent(2)            # => "  foo\n\n  bar"
# p "foo\n\nbar".indent(2, nil, true) # => "  foo\n  \n  bar"
# p "hello".at(0)  # => "h"
# p "hello".at(4)  # => "o"
# p "hello".at(-1) # => "o"
# p "hello".at(10) # => nil
# p "hello".to(0)  # => "h"
# p "hello".to(2)  # => "hel"
# p "hello".to(-2) # => "hell"
# p "hello".to(10) # => "hello"
# p "table".pluralize     # => "tables"
# p "ruby".pluralize      # => "rubies"
# p "equipment".pluralize # => "equipment"

# p "dude".pluralize(0) # => "dudes"
# p "dude".pluralize(1) # => "dude"  for only count =1 singular form will be return else return plural
# p "dude".pluralize(2) # => "dudes"

# p "tables".singularize    # => "table"
# p "rubies".singularize    # => "ruby"
# p "equipment".singularize # => "equipment"

# p "product".camelize    # => "Product"
# p "admin_user".camelize # => "AdminUser"
# p "backoffice/session".camelize # => "Backoffice::Session"

# p "   hey, laxmi! how are you?    ".squish

# p "foo"
# p "foo".indent(2)
# p "laxmi\tpasi".indent(2, "\t")
# p "laxmi\npasi".indent(2,"*")
# p "foo\nbar".indent(2,"+")

# p "laxmi".at(-2)
# p "laxmi".from(-2)
# p "laxmi".to(-2)
# p "visual_effect".camelize
# p "visualEffect".underscore
# p "alice in wonderland".titleize # => "Alice In Wonderland"
# p "fermat's enigma".titleize     # => "Fermat's Enigma"
# p "name".dasherize         # => "name"
# p "contact_data".dasherize # => "contact-data"
# p "Product".demodulize                        # => "Product"
# p "Backoffice::UsersController".demodulize    # => "UsersController"
# p "Admin::Hotel::ReservationUtils".demodulize # => "ReservationUtils"
# p "::Inflections".demodulize                  # => "Inflections"
# p "".demodulize                               # => ""
# p "Product".deconstantize                        # => ""
# p "Backoffice::UsersController".deconstantize    # => "Backoffice"
# p "Admin::Hotel::ReservationUtils".deconstantize # => "Admin::Hotel"

# p "John Smith".parameterize # => "john-smith"
# p "Kurt Gödel".parameterize # => "kurt-godel"
# p "Person".tableize      # => "people"
# p "Invoice".tableize     # => "invoices"
# p "InvoiceLine".tableize # => "invoice_lines"

# p "name".humanize                         # => "Name"
# p "author_id".humanize                    # => "Author"
# p "author_id".humanize(capitalize: false) # => "author"
# p "comments_count".humanize               # => "Comments count"
# p "_id".humanize                          # => "Id"
# p "User".foreign_key           # => "user_id"
# p "InvoiceLine".foreign_key    # => "invoice_line_id"
# p "Admin::Session".foreign_key # => "session_id"
# p "User".foreign_key(false) # => "userid"
# p "2010-07-27".to_date              # => Tue, 27 Jul 2010
# p "2010-07-27 23:37:00".to_time     # => 2010-07-27 23:37:00 +0200
# p "2010-07-27 23:37:00".to_datetime # => Tue, 27 Jul 2010 23:37:00 +0000
#  # equivalent to Time.current.advance(days: 1)
# p 1.day.from_now

# # equivalent to Time.current.advance(weeks: 2)
# p 2.weeks.from_now

# # equivalent to Time.current.advance(days: 4, weeks: 5)
# p (4.days + 5.weeks).from_now

# p 123.to_fs(:human)               # => "123"
# p 1234.to_fs(:human)              # => "1.23 Thousand"
# p 12345.to_fs(:human)             # => "12.3 Thousand"
# p 1234567.to_fs(:human)           # => "1.23 Million"
# p 1234567890.to_fs(:human)        # => "1.23 Billion"
# p 1234567890123.to_fs(:human)     # => "1.23 Trillion"
# p 1234567890123456.to_fs(:human)  # => "1.23 Quadrillion"
# p [1, 2, 3].sum # => 6
# p (1..100).sum  # => 5050

# p [ 1, 2, 3 ].including(4, 5)                    # => [ 1, 2, 3, 4, 5 ]
# p ["David", "Rafael"].including %w[ Aaron Todd ] # => ["David", "Rafael", "Aaron", "Todd"]

# p [ 1, 2, 3 ].include?(4)                    # =>false
# p ["David", "Rafael", "Aaron", "Todd"].excluding("Aaron", "Todd") # => ["David", "Rafael"]
# p ["David", "Rafael", "Aaron", "Todd"].exclude?("Aaron") # => false
# p ["David", "Rafael", "Aaron", "Todd"].exclude?("laxmi") # true

# a = [{ id:1,name:"laxmi"},{id:2, name:"dhara"}]
# p a.pluck(:id)
# p a.pick(:id)
# p %w(a b c d).to(2) # => ["a", "b", "c"]
# p [].to(7)          # => []
# p %w(a b c d).from(2)  # => ["c", "d"]
# p %w(a b c d).from(10) # => []
# p [].from(0)           # => []
# p %w(a b c d).third # => "c"
# p %w(a b c d).fifth # => nil

# numbers = [0, 1, 2, 3, 4, 5, 6, 7, 8, 9]
# p odd_numbers = numbers.extract! { |number| number.odd? } # => [1, 3, 5, 7, 9]
# p numbers # => [0, 2, 4, 6, 8]

# user = [{id:1,name:"laxmi",email:"lp@gmail.com"}]
# #p user.exists?(email:"lp@gmail.com")  #getting error

# # p %w(Earth Wind).to_sentence      # => "Earth and Wind"
# # p %w(Earth Wind Fire).to_sentence # => "Earth, Wind, and Fire"
# #p [{a: 1, b: 2}, {c: 3}].to_xml
# array = [1, [2, 3]]
# dup = array.deep_dup
# # p dup[1][1]
# # p array[0]
# dup[1][2] = 4
# p dup
# p array
# array[1][2] == nil   # => true
# p [1, 2, 3].in_groups_of(2) # => [[1, 2], [3, nil]]
# p [1, 2, 3].in_groups_of(2, 0) # => [[1, 2], [3, 0]]
# p %w(1 2 3 4 5 6 7).in_groups(3) # => [["1", "2", "3"], ["4", "5", nil], ["6", "7", nil]]
# p %w(1 2 3 4 5 6 7).in_groups_of(3) #[["1", "2", "3"], ["4", "5", "6"], ["7", nil, nil]]
# p (-5..5).to_a.split { |i| i.multiple_of?(4) }
# => [[-5], [-3, -2, -1], [1, 2, 3], [5]]
aa = { a:1, b:1}
# p aa.merge(a: 0, c: 2, d:4)
# # => {:a=>0, :b=>1, :c=>2, :d =>4}
# p aa
# p aa.reverse_merge(a: 0, c: 2, d:4) # => {:a=>0, :c=>2, :d =>4, :b =>1}
# aa1 = { a:1, b:1}
# p aa1.reverse_merge!(a: 0, c: 2, d:4) #{:a=>1, :c=>2, :d=>4, :b=>1}
# p aa1                                #{:a=>1, :c=>2, :d=>4, :b=>1}
hash1= {a: {b: 1}}
# p hash1.deep_merge(a: {c: 2}) # => {:a=>{:b=>1, :c=>2}}
# p hash1  #{:a=>{:b=>1}}

# hash2 = {a: {b:1}}
# p hash1.deep_merge!(a: {c: 2}) in all bank symbol is used to give a changes in
# original data where without bank it will create new object and doesn't modify previous data
h2 = {nil => nil, 1 => 1, nested: {a: 3, 5 => 5}}

# p h2.stringify_keys #{""=>nil, "1"=>1, "nested"=>{:a=>3, 5=>5}}
# p h2.deep_stringify_keys
# # => {""=>nil, "1"=>1, "nested"=>{"a"=>3, "5"=>5}}

# h3 = {nil => nil, 1 => 1, "a" => "a"}
# p h3.symbolize_keys
# # => {nil=>nil, 1=>1, :a=>"a"}
# h4 ={nil => nil, 1 => 1, "nested" => {"a" => 3, 5 => 5}}
# p h4.deep_symbolize_keys
# p hash1.assert_valid_keys(:a)  # passes
# # p {a: 1}.assert_valid_keys("a") # ArgumentError
# hash = { person: { name: 'Rob', age: '28' } }

# p hash.deep_transform_values{ |value| value.to_s.upcase }
# # => {person: {name: "ROB", age: "28"}}
h5 = { a:"laxmi", b:"dhara", c:"twinkle"}
h6 = h5.slice!(:a,:b)
p h5
p h6
h11 = { a:"laxmi", b:"dhara", c:"twinkle"}
h = h11.extract!(:a,:b)
p h11
p h
now = Time.current
p now.all_day
t = Time.new(2010, 5, 8) # => 2010-05-08 00:00:00 +0900
p t.prev_year              # => 2009-05-08 00:00:00 +0900
p t.next_year              # => 2011-05-08 00:00:00 +0900
