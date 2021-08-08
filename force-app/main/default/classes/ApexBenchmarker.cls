/**
 * Name: ApexBenchmarker
 * Description: Utility Class for Benchmarking of Apex Code
 * Author: Stephen Moss
 * Date: 08/08/2021
 */
public with sharing class ApexBenchmarker {

    private Integer referenceStartTime;
    private Integer referenceEndTime;
    private Integer targetStartTime;
    private Integer targetEndTime;
    
    /**
     * Method Name: ApexBenchmarker()
     * Description: Constructor Class
     * Author: Stephen Moss
     * Date: 08/08/2021
     */
    public ApexBenchmarker() {
        // bootstrapping code here
    }

    /**
     * Method Name: markReferenceStartTime()
     * Description: Mark Start of Reference Time
     * Author: Stephen Moss
     * Date: 08/08/2021
     */
    public void markReferenceStartTime() {
        referenceStartTime = Limits.getCpuTime();
    }

    /**
     * Method Name: markReferenceEndTime()
     * Description: Mark End of Reference Time
     * Author: Stephen Moss
     * Date: 08/08/2021
     */
     public void markReferenceEndTime() {
         referenceEndTime = Limits.getCpuTime();
     }

     /**
     * Method Name: markTargetStartTime()
     * Description: Mark Start of Target Time
     * Author: Stephen Moss
     * Date: 08/08/2021
     */
     public void markReferenceEndTime() {
         targetStartTime = Limits.getCpuTime();
     }

     /**
     * Method Name: markTargetEndTime()
     * Description: Mark Start of Target Time
     * Author: Stephen Moss
     * Date: 08/08/2021
     */
     public void markTargetEndTime() {
         targetEndTime = Limits.getCpuTime();
     }

     /**
     * Method Name: reportResults()
     * Description: Report Benchmarking Results
     * Author: Stephen Moss
     * Date: 08/08/2021
     */
    public void reportResults(Integer loops) {
        // check if end time is set
        if (referenceEndTime == null) {
            markTargetEndTime();
        }

        // calculate durations
        Integer referenceDuration = referenceEndTime -
            referenceStartTime;
        Integer targetDuration = targetEndTime - 
            targetStartTime;

        // Overall Duration
        Integer benchmarkResults = targetDuration - 
            referenceDuration;

        // Time in microseconds is duration
        // * 1000 / loops
        Decimal eachItem = benchmarkResults * 1000;
        eachItem /= loops;
        System.debug(LoggingLevel.ERROR,
            'Reference Duration: ' + referenceDuration + 
            ' Target Duration: ' + targetDuration + 
            ' Benchmark Results: ' + benchmarkResults + 
            'ms or ' + eachItem + ' us per operation');
    }
}
