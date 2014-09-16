class Account
    attr_reader :name, :balance
    def initialize(name, balance=100)
        @name = name
        @balance = balance
    end

    def display_balance(pin_number)
        if pin_number == pin
            puts "Balance $#{@balance}"
        else
            puts pin_error
        end
    end
    
    def withdraw(pin_number, amount)
        if pin_number == pin
            while @balance < amount.to_i do 
                puts "Sorry you don't have enough in your account to withdraw that much. Try an amount less than $#{@balance}."
                amount = gets.chomp()
            end
            @balance -= amount.to_i
            puts "Withdrew $#{amount}. New balance: $#{@balance}"
        else
            puts pin_error
        end
    end
    
    def deposit(pin_number, amount)
        if pin_number == pin
            @balance += amount
            puts "Deposited $#{amount} to account named #{@name}. New balance is $#{@balance}."
        else
            puts pin_error
        end
    end

    private
    
    def pin
        @pin = 1234
    end
    
    def pin_error
        "Access denied: incorrect PIN."
    end   
end

class CheckingAccount < Account
end

class SavingsAccount < Account
end

checking_account = CheckingAccount.new(:personal, 39403)
checking_account.withdraw(1234, 23092)
