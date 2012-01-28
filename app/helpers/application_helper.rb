module ApplicationHelper
  def note_markup(s)
    
    s.gsub(/\(p#(\d+)\)/) {
      person = Person.find($1)
      link_to person.display_name, person_path(person), :class => 'person'
    }.gsub(/\(o#(\d+)\)/) {
      organization = Organization.find($1)
      link_to organization.display_name, organization_path(organization), :class => 'organization'
    }
  end
end
