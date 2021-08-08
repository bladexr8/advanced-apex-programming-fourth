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
    public void primitiveTests(){
        
        // create class to measure benchmarking
        ApexBenchmarker testBenchmark = new ApexBenchmarker();

        Test.startTest();

        // benchmark code testing
        Integer v = 0;
        testBenchmark.markReferenceStartTime();
        for (Integer x = 0; x < 1000000; x++) {}
        testBenchmark.markReferenceEndTime();
        testBenchmark.markTargetStartTime();
        for (Integer x = 0; x < 1000000; x++) {
            x += 5;
        }
        testBenchmark.reportResults('primitiveTests', 1000000);

        Test.stopTest();
        
    }

    /**
     * Method Name: allocateNewTest()
     * Description: Test Benchmark Code
     * Author: Stephen Moss
     * Date: 08/08/2021
     */
    static @IsTest
    public void allocateNewTest(){

        System.Debug(LoggingLevel.ERROR, '***Starting allocateNewTest...');
        
        // create class to measure benchmarking
        ApexBenchmarker testBenchmark = new ApexBenchmarker();

        List<List<Integer>> numbers = new List<List<Integer>>();
        List<Integer> emptyList = new List<Integer>();

        Test.startTest();

        // benchmark code testing
        testBenchmark.markReferenceStartTime();
        System.Debug(LoggingLevel.ERROR, '***Populating Empty List...');
        for (Integer x = 0; x < 1000000; x++) {
            numbers.add(emptyList);
        }
        testBenchmark.markReferenceEndTime();

        testBenchmark.markTargetStartTime();
        System.Debug(LoggingLevel.ERROR, '***Populating Non-Empty List...');
        for (Integer x = 0; x < 1000000; x++) {
            // add a new list
            numbers.add(new List<Integer>{x});
        }
        testBenchmark.reportResults('allocateNewTest', 1000000);

        Test.stopTest();
        
    }
}
