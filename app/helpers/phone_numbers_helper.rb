module PhoneNumbersHelper
  def phone_format(p)
    if p.start_with?('1')
      if p.length == 11
        "1 #{p[1..3]} #{p[4..6]}-#{p[7..10]}"
      else
        "1 #{p[1..3]} #{p[4..6]}-#{p[7..10]} X#{p[11..-1]}"
      end
    elsif p.start_with?('91')
      "91 #{p[2..-1]}"
    else
      p
    end
  end
end
