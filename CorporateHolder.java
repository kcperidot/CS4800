
public class CorporateHolder extends AccountHolder
{
    private String contact;
    public CorporateHolder(int id, String address, String con)
    {
        super(id, address);
        contact = con;
    }
    public String getContact()
    {
        return contact;
    }
    public void setContact(String c){
        contact = c;
    }
}
