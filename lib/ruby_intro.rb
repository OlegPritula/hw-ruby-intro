# When done, submit this entire file to the autograder.

# Part 1 

def sum arr
  # YOUR CODE HERE Run associated tests via:  `$ rspec spec/part1_spec.rb:5`
  arr.inject(0){ |total, elem| total + elem }
end

def max_2_sum arr
  # YOUR CODE HERE Run associated tests via:  `$ rspec spec/part1_spec.rb:23`
  arr.sort.last(2).inject(0) { |total, elem| total + elem }
end

def sum_to_n? arr, n
  # YOUR CODE HERE Run associated tests via:  `$ rspec spec/part1_spec.rb:42`
  #Сдесть нужно проверять сумму двох любих элементов масива, я ее не выжу...
  if  arr.length >= 2
=begin
    index = 0
    while arr[index] < arr.index(arr.last)
      elem1 = n-arr[index]
      if arr.include?(elem1)
        return true
        break
      else
        index += 1
      end
    end
=end

  # Это мой код, простой перебор
=begin
Вот так работает для масива 4 элементов[1,2,3,4]

    1+2
    1+3
    1+4
    2+3
    3+4
=end


    i=0
    while i<arr.length-1 do
      j=i+1
      a = arr[i]
      while j<arr.length do
        b=arr[j]
        if  a+b == n
          return true
        end
        j=j+1
      end
      i=i+1
    end


  end  
  return false  
end

# Part 2

def hello(name)
  # YOUR CODE HERE Run associated tests via:  `$ rspec -e '#hello' spec/part2_spec.rb`
 return  "Hello, #{name}"
end

def starts_with_consonant? s
  # YOUR CODE HERE Run associated tests via:  `$ rspec -e '#starts_with_consonant?' spec/part2_spec.rb`
 #(/\A[^AEIOUaeiou\s\d]/=~s)? true:false
  #Поставил свою регулярку. все сработало
  # \W - исключить спецсимволи
  (/(^[^ouaeiOUAEI\W])/=~s)? true:false
end

def binary_multiple_of_4? s
=begin
Определите метод `binary_multiple_of_4? (S)`, который берет строку и возвращает значение true, если строка представляет двоичное число, которое кратно 4. ПРИМЕЧАНИЕ: убедитесь, что он возвращает false, если строка не является действительным двоичным числом!
=end
  # YOUR CODE HERE Run associated tests via:  `$ rspec -e '#binary_multiple_of_4?' spec/part2_spec.rb` You can check your progress on the all the above by running `$ rspec spec/part2_spec.rb`.

  #result = s[/(^[01]{1,})/]
  #Можно и так
  result = s[/(^[01]+)/]
    if result == nil
      return false
    end

  # Что это
=begin
    a = s
    b = (a >> 2).to_s(2)
    if  (b << 2) == a
      return true
    end
=end

  # я б сделал так
   if result.to_i(2)%4 == 0
     return true
   end


  return false

  end

# Part 3

class BookInStock
=begin
Определите класс `BookInStock`, который представляет книгу с ISBN
номер, `isbn` и цена книги как число с плавающей запятой,
`цена`, как атрибуты. Запуск связанных тестов с помощью: `$ rspec -e 'getters и seters' spec / part3_spec.rb`

Конструктор должен принять номер ISBN
(строка, поскольку в реальной жизни номера ISBN могут начинаться с нуля и могут
включают дефисы) в качестве первого аргумента и цены в качестве второго аргумента и
должен поднять `ArgumentError` (один из встроенных типов исключений Ruby), если
номер ISBN - это пустая строка или если цена меньше или равна
равным нулю. Включите правильные геттеры и сеттеры для этих
атрибутов. Запуск связанных тестов с помощью: `$ rspec -e 'constructor' spec / part3_spec.rb`

Включите метод `price_as_string`, который возвращает цену
книга, отформатированная с помощью знака доллара и двух знаков после запятой, то есть цены
из 20 следует отформатировать как «20,00 долларов США», а цена 33,8 должна отформатировать как
«$ 33,80»
=end
# YOUR CODE HERE

  def initialize (isbn, price)
    if isbn.length == 0
      raise ArgumentError.new("the ISBN number is the empty string")
    end
  
    if price <= 0
      raise ArgumentError.new("the price is less than or equal to zero")
    end

    @isbn = isbn
    @price = price
  end
  
  attr_accessor :isbn, :price #Setters&Getters

  # def price_as_string (price) - Зачем параметр передавать, это сетер
  def price_as_string
  #  "$%.2f" % price
    sprintf("$%.2f",@price)
  end
  
end

