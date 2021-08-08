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
    public static void primitiveTests(){
        
        // create class to measure benchmarking
        ApexBenchmarker testBenchmark = new ApexBenchmarker();

        Test.startTest();
        System.runAs(contextuser){
            // benchmark code testing
            Integer v = 0;
            testBenchmark.markReferenceStartTime();
            for (Integer x = 0; x < 1000000; x++) {}
            testBenchmark.markReferenceEndTime();
            testBenchmark.markTargetStartTime();
            for (Integer x = 0; x < 1000000; x++) {
                x += 5;
            }
            testBenchmark.reportResults(1000000);
        }
        Test.stopTest();
        
    }
}
