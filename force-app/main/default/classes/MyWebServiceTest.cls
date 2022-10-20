@RestResource(urlMapping='/MyWebServiceTest/*')
global with sharing class MyWebServiceTest {

    @HttpGet
    global static Account doGet() {
        Account acc= new Account();
        Map<String,String> paramsMap = RestContext.request.params;
        String accid=paramsMap.get('id');
        acc = [select id,name,AnnualRevenue from Account where Id =:accid];
        return acc;
    }
  
}