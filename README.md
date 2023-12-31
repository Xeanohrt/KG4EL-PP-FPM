# Master Thesis: Knowledge Graph for Event Log Preprocessing in Federated Process Mining (KG4EL-PP-FPM)
# 1. Description of the Thesis Topic
Process mining is a research area that supports discovering information about business processes based on their recorded event logs in Process Aware Information Systems (PAIS) such as SAP, Salesforce or MS Dynamics. Mannhardt stated that inter-organizational process mining has been less well researched at the time of the publication of this thesis (2022). This repository contains the IT artefact of the author's master thesis examining how knowledge graphs can be leveraged to support the construction of a federated event log from multiple Process Aware Information Systems (PAIS) for inter-organizational process mining (Federated Process Mining), addressing challenges in event log data and preprocessing. The author aims to contribute to the novel field by providing a structured approach in constructing a federated event log. 

The aim of the master thesis was to demonstrate how the knowledge graph-driven approach to preprocess event logs, can support the acitivites during the event data extraction, transformation, and integration of heterogeneous data sources (from single event logs of different companies) into a homogeneous, structured format representing the merged federated event log. The approach combines semantic technologies concepts, graph databases, and event log preprocessing to harmonize diverse event data fields. The developed IT artifact can identify data quality issues and enables comparison of event logs, thus providing a blueprint for building high-quality federated event logs collaboratively. Finally, the research maps out steps for creating a homogeneous merged distributed event log in alignment with the federated process mining model type I by Van der Aalst ([Van der Aalst, 2021](https://www.vdaalst.com/publications/p1231.pdf)).

# 2. Intra- and Inter-Organizational Process Mining
Intra- and Inter-Organizational Process Mining focuses on discovering processes within and between
organizations trying to learn from their commonalities and bottlenecks or aiming at enhancing their collaboration efforts in a production process. 
<img width="673" alt="image" src="https://github.com/Xeanohrt/KG4EL-PP-FPM/assets/16185957/f7007859-7cbf-4cea-b0a3-9f18b59f3c8a">

Figure 1: Vertical and Horizontal Splitting of Processes for Intra- and Inter-Organizational Process Mining (Van der Aalst, 2011)

Van der Aalst stated in 2011 that a process either can be **partitioned vertically**:
Analyzing the same process, but different variants - also termed nowadays as comparative process mining e.g. for bench mark analysis ([Carmona and Van der Aalst et al., 2022](https://link.springer.com/book/10.1007/978-3-031-08848-3)). Or **horizontally partitioned**: Which is chaining different sub-processes  in supply-chain and product-production chains across organisations which are combined based on a common case identifier, for which the Federated Process Mining use case reveals the need to harmonize the different heterogenous event logs structures of different companies (three in this example) and merged in to one single federated event log.

![image](https://github.com/Xeanohrt/KG4EL-PP-FPM/assets/16185957/7cbd03ab-150f-4ab9-95f3-07a18b3bf9e7)

Figure 2: Federated Process Mining across Organizational Boundaries (van der Aalst, 2021)

The author chose to compare the different event logs of L1, L2 and L3 (in the image below) as graphs containing in formation on their data quality and event log challenges as well as their event log class attribute's data model to identify harmonization efforts to ETL the data before merging the data into a federated event log.

<img width="368" alt="image" src="https://github.com/Xeanohrt/KG4EL-PP-FPM/assets/16185957/fced538f-6a2c-49b7-856d-5323b4ea74fa">

Figure 3: Federated Process Mining Type I (van der Aalst, 2021)


# 3. Graph-based Process Mining Approaches
The concept to use graphs to compare the event log class digram models of event logs to construct a federated event log is rooted upon graph-based process mining research conducted by Amin Jalali (2020), Stefan Esser & Dirk Fahland (2021, 2022). The IT artefact runs an analysis on each event log's maturity level of L1, L2 and L3 which are required to construct the federated event log. Further event data aspects on data quality and event log challenges are analyzed and explicitly modelled with a relation to a semantic taxonomy in the graph database for each event log attribute of a given event log. The event log of e.g. L1 is compared to the defined Federated Event Log's data model and differences betweeen the models are highlighted with edges to note that data trasnformations on a specific event log class attribute will be necessary before L1 can be merged with L2 and L3 into the federated event log.

The image below highlights the author's main concept applicable with the provided code in the repository.

<img width="943" alt="image" src="https://github.com/Xeanohrt/KG4EL-PP-FPM/assets/16185957/4d66705d-4d1c-4a3b-a0b1-5b2f3469327c">

   1. First a so-called "Meta-DataFrame" is constructed based on requirements gathered from real world process mining practitioners to measure the event log's maturity level, providing an aggregated view of each event log attribute of a given event log
   2. Based on the "Meta-DataFrame" a script transforms the DataFrame into an event log class graph an constructed in Neo4j
   3. Step 1 and Step 2 is performed for each event log as a Labelled Property Graph (LPG) (in pink: L1, L2, L3 event log class graphs)
   4. Then the Target Data Model for the Federated Event Log is created in Neo4j (below in blue)
   5. To complete the knowledge graph additional information such as the Taxonomy Graph and Process Level Nodes are added
   6. Event log attribute dificiencies are explicitly modelled as edges between the event attribute and the semantic taxonomy.
   7. The information on the structure of an event attribute in the Target Data Model for the Federated Event Log is compared to each fitting event attribute of one of L1, L2 and L3 on data quality, data format and event log challenges. The relationships are used in the LPG to define if given event log attribute is present from the Target Data Model to the event log L1, L2 and L3 or not and if additional changes are required.
   8. Based on these insights the original event log data can be transformed to be merged into a federated event log containing a higher level of data homogeneity required for the process mining algorithms to discover process models. 

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
