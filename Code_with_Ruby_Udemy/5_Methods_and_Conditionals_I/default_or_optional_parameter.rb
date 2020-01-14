#! /usr/bin/env ruby


def make_phone_call(number, international_code="+91", area_code="974")
  puts "Calling #{international_code}-#{area_code}-#{number}"
end

number = "3832921"

make_phone_call(number)
make_phone_call(number, "+49")
make_phone_call(number, area_code = "638")
