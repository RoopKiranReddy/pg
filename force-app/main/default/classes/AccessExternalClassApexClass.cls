public class AccessExternalClassApexClass {

    public string PersonalName;
    
    public AccessExternalClassApexClass(){ //constructor
        string PersonalName ='Vakada Roop kiran Reddy';
        system.debug(PersonalName);
    }
    
    public void testMeth(){ //Method
         system.debug('DEMO Class');
    }

    @AuraEnabled
    public static string DocreatecontactwithLwc(Contact conObj){
        insert conObj;
        return conObj.id;
    }
}