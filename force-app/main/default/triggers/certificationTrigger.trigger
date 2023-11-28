trigger certificationTrigger on Certification__c (before Insert, after Insert, before Update, after Update, before delete, after delete, after Undelete){
    // Before Events
    if(Trigger.isBefore){
        if(Trigger.isInsert){
          for(Certification__c  cer : Trigger.new){
          if(cer.Date_of_Completion__c == null){
          cer.addError('Date_of_Completion__c cannot be empty');
          }
          }  
        }
        
    }
}