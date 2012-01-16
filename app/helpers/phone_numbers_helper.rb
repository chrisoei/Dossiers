module PhoneNumbersHelper
  def phone_format(p)
    if p.start_with?('1')
      if p.length == 11
        "<span class='phone'>1 #{p[1..3]} #{p[4..6]}-#{p[7..10]}</span>".html_safe
      else
        "<span class='phone'>1 #{p[1..3]} #{p[4..6]}-#{p[7..10]} X#{p[11..-1]}</span>".html_safe
      end
    elsif p.start_with?('91')
      "<span class='phone'>91 #{p[2..-1]}</span>".html_safe
    else
      p
    end
  end
end
