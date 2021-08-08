/**
 * Name: ApexBenchmarker
 * Description: Utility Class for Benchmarking of Apex Code
 * Author: Stephen Moss
 * Date: 08/08/2021
 */
public with sharing class ApexBenchmarker {

    private static Integer referenceStartTime;
    private static Integer referenceEndTime;
    private static Integer targetStartTime;
    private static Integer targetEndTime;
    
    /**
     * Method Name: ApexBenchmarker()
     * Description: Constructor Class
     * Author: Stephen Moss
     * Date: 08/08/2021
     */
    public ApexBenchmarker() {
        referenceStartTime = 0;
        referenceEndTime = 0;
        targetStartTime = 0;
        targetEndTime = 0;
    }

    /**
     * Method Name: markReferenceStartTime()
     * Description: Mark Start of Reference Time
     * Author: Stephen Moss
     * Date: 08/08/2021
     */

}
