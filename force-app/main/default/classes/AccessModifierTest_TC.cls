@IsTest(SeeAllData=true)
private class AccessModifierTest_TC {
    public static testMethod void testRunAs() {

        User u = [SELECT Id FROM User WHERE Id = '0053s000004HeDqAAK'];

        System.runAs(u) {
            AccessModifierTest.modifyField();
        }
    }
}