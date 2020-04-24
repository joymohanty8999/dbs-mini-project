 **DataBase Used:** Oracle 11g XE
 
 **Front End Application Written in:** Java (JavaFX GUI Application)

<h3>Summary</h3>

1. Each query has it's own package where it is processed in the main method
2. Every package has it's own stand-alone interface for the respective query(s)
3. Sentiment Analsys is applied for feedback to sort different types of feedback

<h3>How to Run</h3>

1. Run the sql files to create the Databases in Oracle 11g XE.
2. Run the applications via run option in the Eclipse IDE

<h3>Dependencies</h3>

The lib folder will have the external JAR dependencies except the corenlp-model-3.8.0 JAR file (as it is a large file). The download link:
[CoreNLP](https://stanfordnlp.github.io/CoreNLP/history.html)
