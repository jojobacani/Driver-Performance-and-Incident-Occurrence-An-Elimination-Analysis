<h1>
  Project Overview
</h1>

  This project was created to dive deep into additional metrics following the elimination findings of the <a href="https://github.com/jojobacani/Maintenance-Cost-and-Frequency-An-Elimination-Analysis.git">Maintenance Cost and frequency: An Elimination Analysis</a> project. Using postgreSQL for data extraction and exploration, Excel for visual prototyping, and Power BI for dashboard creation, this project explores driver performance metrics and their relationship to incident occurrence: 1) Average Idle Time (Hours), 2) Average Miles Per Gallon, and 3) Average Distance per Trip (Miles). The driver_monthly_metrics table was excluded because its metrics showed insufficient variation across drivers, making it unsuitable for correlation testing.

<h2>
  Do drivers with higher average idle time have more incidents?
</h2>

<img src="images/correlating incident occurrence into idle time hours.png">

  The scatter plot shows that the amount of Incident Occurrence and Average Idle Time (Hours) show no clear pattern, as most of the dots fell flat. This insight highlights the inconsistency of the relationship, eliminating this metric as a predictor of incident occurrence.

<h2>
  Do drivers with higher miles per gallon have lower incident occurrence?
</h2>

<img src="images/correlating incident occurrence into mpg.png">

  Like in the previous result, this scatter plot show no clear pattern and most of the dots fell flat. This Eliminates miles per gallon as a predictor of Incident occurrence.

<h2>
  Do drivers with higher average distance per trip have more incidents?
</h2>

<img src="images/correlating incident occurrence into average trips in miles.png">

  The result of scatter plot in this test showed similar results to the two previous tests,showing no clear pattern as most of the dots fell flat. This metric is eliminated as a predictor of Incident Occurrence.

<h1>
  Recommendation
</h1>

  With all of these results in mind, the insights highlight the inconsistency of the relationship between incident occurrence and the three metrics (Average Idle Time, Average Miles Per Gallon, Average Distance per Trip). None of these metrics reliably predict incident occurrence. 

  This eliminates driver performance as a primary driver of incident frequency. The Fleet Manager should not invest in driver training or performance monitoring as a safety solution based on these metrics alone.

  The next logical step is to pivot towards severity (cost). Rather than asking, "How often do incidents happen?", the future analysis should ask, "How expensive are incidents when they happen, and do driver metrics predict the severity?"