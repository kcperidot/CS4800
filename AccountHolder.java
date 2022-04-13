
public abstract class AccountHolder
{
    protected int id;
    protected String address;
    public AccountHolder(int i, String add){
        id = i;
        address = add;
    }
    public int getNextID(){
        return 1;
    }
}
