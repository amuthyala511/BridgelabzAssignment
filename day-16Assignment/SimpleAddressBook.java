import java.util.*;
public class SimpleAddressBook
{
   String fname;
   String lname;
   String address;
   String city;
   String state;
   long phno;
   int zip;

   public SimpleAddressBook(String fname,String lname,String address,String city,String state,long phno,int zip)
   {
      this.fname=fname;
      this.lname=lname;
      this.address=address;
      this.city=city;
      this.state=state;
      this.phno=phno;
      this.zip=zip;
   }
}
class Person
{
	public static void main(String[] args)
	{
		Scanner s=new Scanner(System.in);
		ArrayList<SimpleAddressBook> al=new ArrayList<SimpleAddressBook>();

		while(true)
		{
			System.out.println("1.Add a new contact to the Address Book");
			System.out.println("2.Delete a contact from the Address Book");
			System.out.println("3.Print the number of contacts in the Address Book");
			System.out.println("4.List out all contacts of the Address Book");
			System.out.println("5.Quit");
			System.out.println("Enter your choice: ");

			int choice=s.nextInt();
			switch (choice)
			{
				case 1:
						System.out.println("Enter first name: ");
							String fname=s.next();
						System.out.println("Enter last name: ");
							String lname=s.next();
						System.out.println("Enter address name: ");
							String address=s.next();
						System.out.println("Enter city name: ");
							String city=s.next();
						System.out.println("Enter state name: ");
							String state=s.next();
						System.out.println("Enter phone number: ");
							long phno=s.nextLong();
						System.out.println("Enter postal code: ");
							int zip=s.nextInt();
					SimpleAddressBook a1=new SimpleAddressBook(fname,lname,address,city,state,phno,zip);
						al.add(a1);
					Collections.sort(al,new NameComparator());
						break;
				case 2:
						System.out.println("Enter values to remove");
							String item=s.next();
					Iterator itr=al.iterator();
               while(itr.hasNext())
					{
						SimpleAddressBook ab=(SimpleAddressBook)itr.next();
						if(item.equals(ab.fname))
						{
							al.remove(ab);
							break;
						}
					}
						break;
				case 3:
						System.out.println(al.size());
						break;
				case 4:
						if(al.size() == 0)
						{
							System.out.println("Address Book is empty. Please add entries!");
						}
						else
						{
							Iterator itr1=al.iterator();
							while(itr1.hasNext())
							{
								SimpleAddressBook ab=(SimpleAddressBook)itr1.next();
								System.out.println(ab.fname+" "+ab.lname+" "+ab.address+" "+ab.city+" "+ab.state+" "+ab.phno+" "+ab.zip);
      					}
						}
						break;
				case 5:
						System.exit(0);
			}
		}
	}
}
