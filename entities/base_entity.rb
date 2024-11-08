class BaseEntity
    attr_reader :id, :type
  
    def initialize(*args)
      @id = Time.now.to_f
      @type = self.class.name
    end
  end