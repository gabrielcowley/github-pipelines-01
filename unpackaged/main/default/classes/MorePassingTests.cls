@isTest
public class MorePassingTests {
    
    @isTest static void test1() {
         System.assertEquals(3, 3);
    }
    
    @isTest static void test2() {
        System.assertEquals(4, 2+2);
    }
    
    @isTest static void test3() {
         System.assertEquals(3, 1+1+1);
    }
    
    @isTest static void test4() {
        System.assertEquals(6, 4+2);
    }

}
