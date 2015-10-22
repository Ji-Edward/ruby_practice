class Prod
    
    def initialize(product,count)
        @product = product
        @count = count
    end
    
    def product
        @product
    end
    
    def count
        @count
    end
    
    def new_inv(x)
        @count += x
    end
    
    def order(x)
        @count -= x
    end
    
    def quantity_control
        if @count > 200
            puts "You have exceeded maximum inventory by #{@count-200}"
        else
            puts "Inventory is under control. There are #{200-@count} spaces available."
        end
    end
end

prod_id = Prod.new("Xbox",123)

puts "There are #{prod_id.count} #{prod_id.product}\'s in inventory. #{prod_id.quantity_control
}"

prod_id.new_inv(100)

puts "There are #{prod_id.count} #{prod_id.product}\'s in inventory. #{prod_id.quantity_control
}"

prod_id.order(3)

puts "There are #{prod_id.count} #{prod_id.product}\'s in inventory. #{prod_id.quantity_control
}"