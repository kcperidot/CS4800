
public class IndividualHolder extends AccountHolder implements Util
{
    private String name;
    private String SSN;
    public IndividualHolder(int id, String address, String n, String s)
    {
        super(id, address);
        name = n;
        SSN = s;
    }
    public String convertNameUpperCase(String n){
        name = n.toUpperCase();
        return name;
    }
    public String getName()
    {
        return name;
    }
    public String getSSN(){
        return SSN;
    }
    public void setName(String n){
        name = n;
    }
    public void setSSN(String s){
        SSN = s;
    }
}
