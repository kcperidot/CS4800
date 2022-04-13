
public class Account
{
    // instance variables - replace the example below with your own
    AccountHolder holder;
    double balance = 0.0;
    public Account(double amt, AccountHolder h)
    {
        balance = amt;
        holder = h;
    }

    public void deposit(double amt)
    {
        balance += amt;
    }
    public void withdraw(double amt){
        balance -= amt;
    }
    public double getBalance(){
        return balance;
    }
    public AccountHolder getHolder(){
        return holder;
    }
    public void setBalance(double amt){
        balance = amt;
    }
    public void setHolder(AccountHolder h){
        holder = h;
    }
}
