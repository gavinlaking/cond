require_relative '../lib/cond'

# value based example

class MyClass
  def execute
    Cond::Ret[truthiness, falsehood][condition].call
  end

  def condition
    1 > 0
  end

  def truthiness
    'truth'
  end

  def falsehood
    'lies'
  end
end

# MyClass.new.execute # => 'truth'
