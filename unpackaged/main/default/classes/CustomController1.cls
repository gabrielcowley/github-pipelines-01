public with sharing class CustomController1 {

    private User user;
    private boolean isEdit = false;

    public User getUser() {
        return user;
    }

    public CustomController1() {
        user = [SELECT id, email, username, usertype, communitynickname, timezonesidkey, languagelocalekey, firstname, lastname, phone, title,
                street, city, country, postalcode, state, localesidkey, mobilephone, extension, fax, contact.email, Custom_User_Field__c
                FROM User
                WHERE id = :UserInfo.getUserId()];
        // guest users should never be able to access this page
        String x = user.Custom_User_Field__c;
        if (user.usertype == 'GUEST') {
            throw new NoAccessException();
        }
    }   
}