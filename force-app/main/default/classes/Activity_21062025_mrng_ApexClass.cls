public virtual class Activity_21062025_mrng_ApexClass {

    public static string TodayDate = '21-06-2025';
    public static string Name = 'Activity_21062025';
    public static string contactvar = '+4 21062025';
    public static string EndStatement;
    
    public Activity_21062025_mrng_ApexClass(){
        EndStatement = 'Diclaration Value using constructor';
    }
    
    //calling Methods from Activiity_20062025  Apex Class
    public void GetMethods(){
        system.debug('TodayDate :'+TodayDate);
        system.debug('Name :'+Name);
        system.debug('contactvar :'+contactvar);
        system.debug('EndStatement :'+EndStatement);
        //Below Two Methods Calling From Outer Class
        Activity_20062025_ApexClass.IntializationMethod();   //Calling from another calss.
        Activity_20062025_ApexClass.Dynamic_Calclator(10, 20); // Calling from another calss using with dynamic value.
    }
    
    public void BulkAccountcreate(){
        List<Account> AcntList = new List<Account>();
        for(integer i=0; i<= 155; i++ ){
            Account acnts = new Account(Name = 'Activity_21202025'+i , Phone = '8074743277', Customer_status__c = 'Retail');
            AcntList.add(acnts);
        }
         insert AcntList;
        system.debug(' insert AcntLists :'+ AcntList.size());
    }
    
    public void DoDeleteAcc(){  //Delete multiple Account with Similar name with small changes.
        List<Account> AccListount = [select id , Name from Account where Name like 'Activity_21202025%'];
        if(!AccListount.isEmpty()){
            delete AccListount;
        }
    }
    
    public class InnerClassConcept{			//Inner Class as a parent
        
        public string PersonalData; 	//inner class Declaration.
        
        public InnerClassConcept(){ //inner class Constructor
             PersonalData = 'Roop Kiran reddy';
        }
        
        public void InnerMethod(){
            system.debug('Pesonal data :'+PersonalData);
        }
        
     }
    
}