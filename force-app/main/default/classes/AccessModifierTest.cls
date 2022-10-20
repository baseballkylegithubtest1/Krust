/**
 * Created by kylecarter on 8/16/22.
 */

public without sharing class AccessModifierTest {

    public static void modifyField(){

        Account a =
            [SELECT Id, Description
             FROM Account
             WHERE Id = '0013s000014u6cLAAQ'
             LIMIT 1];
        System.debug('a.Description (BEFORE): '+a.Description);
        Account aU = new Account();
        aU.Id = '0013s000014u6cLAAQ';
        aU.Description = 'test2';
        update aU;

        Account a2 =
        [SELECT Id, Description
         FROM Account
         WHERE Id = '0013s000014u6cLAAQ'
         LIMIT 1];
        System.debug('a2.Description (AFTER): '+a2.Description);


    }
}