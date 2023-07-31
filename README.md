# Knowledge Graph for Event Log Preprocessing in Federated Process Mining (KG4EL-PP-FPM)
# 1. Description of the Thesis Topic
Process mining is a research area that supports discovering information about business processes based on their recorded event logs in Process Aware Information Systems (PAIS) such as SAP, Salesforce or MS Dynamics. 

This repository contains the IT artefact of the author's master thesis examining how knowledge graphs can be leveraged to support the construction of a federated event log from multiple Process Aware Information Systems (PAIS) for interorganizational process mining (Federated Process Mining), addressing challenges in event log data and preprocessing. 

The aim of the master thesis was to demonstrate how the knowledge graph-driven approach to preprocess event logs, can support the acitivites during the event data extraction, transformation, and integration of heterogeneous data sources (from single event logs of different companies) into a homogeneous, structured format representing the merged federated event log. The approach combines semantic technologies concepts, graph databases, and event log preprocessing to harmonize diverse event data fields. The developed IT artifact can identify data quality issues and enables comparison of event logs, thus providing a blueprint for building high-quality federated event logs collaboratively. Finally, the research maps out steps for creating a homogeneous merged distributed event log in alignment with the federated process mining model type I by Van der Aalst ([Van der Aalst, 2021](https://www.vdaalst.com/publications/p1231.pdf)).

# 2. Intra- and Inter-Organizational Process Mining
Intra- and Inter-Organizational Process Mining focuses on discovering processes within and between
organizations trying to learn from their commonalities and bottlenecks or aiming at enhancing their collaboration efforts in a production process. 
<img width="673" alt="image" src="https://github.com/Xeanohrt/KG4EL-PP-FPM/assets/16185957/f7007859-7cbf-4cea-b0a3-9f18b59f3c8a">

Figure 1: Vertical and Horizontal Splitting of Processes for Intra- and Inter-Organizational Process Mining (Van der Aalst, 2011)

Van der Aalst stated in 2011 that a process either can be **partitioned vertically**:
Analyzing the same process, but different variants - also termed nowadays as comparative process mining e.g. for bench mark analysis ([Carmona and Van der Aalst et al., 2022](https://link.springer.com/book/10.1007/978-3-031-08848-3)). Or **horizontally partitioned**: Which is chaining different sub-processes  in supply-chain and product-production chains across organisations which are combined based on a common case identifier, for which the Federated Process Mining use case reveals the need to harmonize the different heterogenous event logs structures of different companies (three in this example) and merged in to one single federated event log.

<img width="368" alt="image" src="https://github.com/Xeanohrt/KG4EL-PP-FPM/assets/16185957/fced538f-6a2c-49b7-856d-5323b4ea74fa">
Figure 2: Federated Process Mining Type I (van der Aalst, 2021)

The author chose to compare the different event logs of L1, L2 and L3 (in the image above) as graphs containing in formation on their data quality and event log challenges as well as their event log class attribute's data model to identify harmonization efforts to ETL the data before merging the data into a federated event log.


# 3. Graph-based Process Mining Approaches
The concept to use graphs to compare the event log class digram models of event logs to construct a federated event log is rooted upon graph-based process mining research conducted by Amin Jalali (2020), Stefan Esser & Dirk Fahland (2021, 2022). The image below highlights the author's main concept applicable with the provided code in the repository.


# 4. Installation
To run the event log pre-processing scripts, you will require a Python 3 environment and a code editor: The author recommends pip3 and Visual Studio Code. The scripts are run in a Jupyter Notebook sequentially on the .CSV files of each event log. The generated Cypher commands from the scripts are then imported into the LPG database Neo4j.

# 5. Usage
The repository contains all of the data and the steps to construct three event log class diagram graphs to consturct the federated event log based on comparison checks of the datatypes and common event log class attributes. Run the scripts sequentially is based on their numbering and the  following steps: 
1. Preprocess the event log data from a single PAIS and transform it into a Meta-DataFrame representing an aggregated view of the event data as an event log class digram table.
2. Import preprocessed data in a ‘Meta-DataFrame’ as an overview table of the state
of an event log’s data quality and variables from Python into Neo4j.
3. Define how queries in Neo4j can visualize the identified event log challenges and
data quality issues.
4. Leverage graph edges in Neo4j “relationships” to summarize all the
challenges identified.
