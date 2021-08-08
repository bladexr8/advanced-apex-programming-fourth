/**
 * Name: ApexBenchmarkerTest
 * Description: Test Class for ApexBenchmarker Apex Code
 * Author: Stephen Moss
 * Date: 08/08/2021
 */
@isTest
public with sharing class ApexBenchmarkerTest {
    
    /**
     * Method Name: benchMarkTest()
     * Description: Test Benchmark Code
     * Author: Stephen Moss
     * Date: 08/08/2021
     */
    static @IsTest
    static void benchMarkTest(){
        
        Test.startTest();
        System.runAs(contextuser){
            
        }
        Test.stopTest();
        
    }
}
