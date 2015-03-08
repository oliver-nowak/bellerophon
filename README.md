#bellerophon
spam email filtering MVP


##Characteristics of MVP
- Rails app deployed on Amazon Elastic Beanstalk
- MySQL persistence layer (Amazon RDS)
- Delayed_Job job scheduler / background processor
- Naive Bayes Spam classifier, written in python



##TODO / Issues
- Needs nicer looking UI (bootstrap)
- Python code needs to be PEP-08 compliant
- Refactor Naive-Bayes classifier to use faster implementation in sklearn library
- Tests!
- API needs improvement, depending on user requirements
- Would consider swapping out MySQL for MongoDB depending on user requirements
- Refactor job scheduler / background processor in order to decouple classification service from API service
- Use Amazon SWF for better reliability and scalability of job scheduling and processing
- Current architecture not very scalable - would decouple API service from classficiation service within the same app (SOA instead)
- Email classification would have two queues in SWF, each of which can be scaled independently: 1. an 'interactive' queue for small sets of messages, 2. a 'batch' queue for large sets of messages
- Classification model training would occur daily, updated at lowest usage point in the day, or concurrently during application deployment
- Current model is trained using all available data - this is a mistake - we need to keep some of the data for cross-validation in order to understand accuracy 
- Genaration of ROC curves to understand false-positives / false-negatives
- Would look into serving multiple implementations of spam classification algos instead of relying on one algorithm
- Would try to narrow the feature space of the bayes classifier to provide better accuracy 
- Would implement a labeling feedback loop for the user to boost supervised learning
- System needs at least two (2) servers providing email classification in order to provide absolute minimum of reliability; it would be nice to have 'responsive' auto-scaler that spins up (and retires) new instances as needed
