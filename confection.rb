class Confection
    def prepare
      puts "Baking at 350 degrees for 25 minutes."
    end
  end
  
  class CupCake < Confection
    def frosting
      puts "Applying frosting"
    end
  
    def prepare
      super
      frosting
    end
  end
  
  class BananaCake < Confection
  end
  
  bananacake = BananaCake.new
  bananacake.prepare
  
  cupcake = CupCake.new
  cupcake.prepare
  
  