class Array
  def random_element
    self[Kernel::rand self.length]
  end
end

a=[0,1,2,3,4,5]
b=%w(a d f r)

10.times do
  puts a.random_element
  puts b.random_element
end

