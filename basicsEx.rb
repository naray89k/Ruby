#! /usr/bin/ruby
def say_goodnight(name)
    result = "Good night, " + name
    return result
end

# Time for bed...
puts say_goodnight("John-Boy")
puts say_goodnight("Mary-Ellen")

# Produces:
# Good night, John-Boy
# Good night, Mary-Ellen


# =============================


# Interpolation Example:
def say_goodnight(name)
    result = "Good night, #{name}"
    return result
end
puts say_goodnight('Pa')


# =============================


# Example of using the instance/objects methods in Interpolation
def say_goodnight(name)
    result = "Good night, #{name.capitalize}"
    return result
end


# =============================


# Last Statement in the functions,will be return of value of that function.
def say_goodnight(name)
    "Good night, #{name.capitalize}"
end
puts say_goodnight('Narayanan')


# =============================


# VARIABLE NAMING CONVENTION RULE:
# --------------------------------
# Local Variable:       name fish_and_chips x_axis thx1138 _x _26
# Instance Variable:    @name @point_1 @X @_ @plan9
# Class Variable:       @@total @@symtab @@N @@x_pos @@SINGLE
# Global Variable:      $debug $CUSTOMER $_ $plan9 $Global
# Class Name:           String ActiveRecord MyClass
# Constant Name:        FEET_PER_MILE DEBUG
