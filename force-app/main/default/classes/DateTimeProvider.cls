public virtual with sharing class DateTimeProvider {

    @TestVisible
    private static DateTimeProvider instance;
    
    public static DateTimeProvider getInstance() {
        if (instance == null) {
            instance = new DateTimeProvider();
        }

        return instance;
    }

    protected DateTimeProvider() {}

    public virtual DateTime now() {
        return DateTime.now();
    }

}