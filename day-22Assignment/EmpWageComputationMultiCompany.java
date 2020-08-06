public class EmpWageComputationMultiCompany
{
      public static final int IS_PART_TIME=1;
      public static final int IS_FULL_TIME=2;
      int empHrs=0,totalEmpHrs=0,totalWorkingDays=0;
   public int ComputeEmpWage(String company,int empWagePerHr,int numofWorkingDays,int maxHrsPerMonth)
   {
      while(totalEmpHrs<=maxHrsPerMonth && totalWorkingDays<numofWorkingDays)
      {
            totalWorkingDays++;
            double empCheck=Math.floor(Math.random()*10)%3;
         switch((int)empCheck)
         {
            case IS_FULL_TIME:
                  empHrs = 8;
                  break;
            case IS_PART_TIME:
                  empHrs = 4;
                  break;
            default:
                  empHrs=0;
         }
         totalEmpHrs+=empHrs;
         System.out.println("Day "+totalWorkingDays+" employee working hours: "+empHrs);
         int empWagePerDay=empHrs*empWagePerHr;
         System.out.println("Day "+totalWorkingDays+" employee salary is: "+empWagePerDay);
      }
      int totalEmpWage=totalEmpHrs*empWagePerHr;
      System.out.println("Employee total wage per month in "+company+" is: "+totalEmpWage);
      return totalEmpWage;
   }
   public static void main(String[] args)
   {
      System.out.println("WELCOME TO EMPLOYEE WAGE COMPUTATION PROGRAM ON MASTER BRANCH");
      int IS_PRESENT=1;
      double empAttendance=Math.floor(Math.random()*10)%2;
      if(empAttendance == IS_PRESENT)
      {
         System.out.println("Employee is Present");
         EmpWageComputationMultiCompany obj=new EmpWageComputationMultiCompany();
         obj.ComputeEmpWage("DMart",20,20,100);
         obj.ComputeEmpWage("Amazon",10,20,100);
         obj.ComputeEmpWage("Reliance",25,20,100);
      }
      else
      {
         System.out.println("Employee is Absent");
      }
   }
}
