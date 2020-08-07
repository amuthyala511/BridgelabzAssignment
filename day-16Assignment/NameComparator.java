import java.util.*;
class NameComparator implements Comparator<SimpleAddressBook>
{
	public int compare(SimpleAddressBook a1,SimpleAddressBook a2)
	{
		int x=a1.lname.compareTo(a2.lname);
		if(x == 0)
			{
				if(a1.zip == a2.zip)
					return 0;
				else if(a1.zip>a2.zip)
					return 1;
				else
					return -1;
			}
		return x;
	}
}
