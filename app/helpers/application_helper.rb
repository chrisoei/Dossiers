module ApplicationHelper
  def note_markup(s)
    while s =~ /\(p#(\d+)\)/
      pid = $1
      s.sub!(/\(p#\d+\)/,"<a href='/people/#{pid}' class='person'>#{Person.find(pid).display_name}</a>")
    end
    while s =~ /\(o#(\d+)\)/
      oid = $1
      s.sub!(/\(o#\d+\)/,"<a href='/organizations/#{oid}' class='organization'>#{Organization.find(oid).display_name}</a>")
    end
    s
  end
end
