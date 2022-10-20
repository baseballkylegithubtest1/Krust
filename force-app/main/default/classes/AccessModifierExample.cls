public class AccessModifierExample {

    public static Integer staticCounter = 5;

    public Integer classCounter = 0;

    public static void publicStaticMethod(){
        System.debug(staticCounter);
    }

    public void publicMethod(){
        System.debug(classCounter);
        //change
        //change more
    }

}