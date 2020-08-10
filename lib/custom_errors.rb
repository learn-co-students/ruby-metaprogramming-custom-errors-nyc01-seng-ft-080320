

class Person
  attr_accessor :partner, :name

  def initialize(name)
    @name = name
  end

  def get_married(person)
    begin
      if person.class == Person
        self.partner = person
        person.partner = self
      else
        raise PartnerError
      end
    rescue PartnerError => error
      puts error.message
    end
  end

  class PartnerError < StandardError
    def message
      "You must pass an instance of the class Person to the method get_married"
    end
  end

end

beyonce = Person.new("Beyonce")
beyonce.get_married("Jay-Z")
puts beyonce.name




