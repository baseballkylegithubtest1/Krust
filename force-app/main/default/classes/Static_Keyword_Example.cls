/**
 * Created by kylecarter on 7/21/22.
 */

public with sharing class Static_Keyword_Example {

    public static String staticString = 'StaticStuff';
    public String nonStaticString = 'InstanceStuff';

    public static void staticMethod(){

    }

    public void nonStaticMethod(String stringUpdate){
        staticString = stringUpdate;
        nonStaticString = stringUpdate;
    }

    public void printStringValues(){
        System.debug('This is the static String ::: ' + staticString);
        System.debug('This is the non static String ::: ' + nonStaticString);
    }


}