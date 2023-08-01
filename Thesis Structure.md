# Thesis Structure KG4EL-PP-FPM

<img width="714" alt="image" src="https://github.com/Xeanohrt/KG4EL-PP-FPM/assets/16185957/5e9bffde-10f4-49e3-a2bc-0f925a7a58c3">

# 1. Awareness Phase
After performing the Literature Review the author interviewed industry experts on the challenges in event log preprocessing when constructing an event log based on data from distributed systems within a company. One partner conglomerate had an internal set up which enabled federated process mining model type I as proposed by Van der Aalst. The author gathered from qualitative interviews the most important areas of event log preprocessing from a practitioners perspective. The author gathered 12 requirements which can be seen in the evaluation folder.

# 2. Suggestion Phase
In the suggestion phase the author proposed a technology agnostic solution as a knowledge graph to address the 12 requirements with semantic technology concepts of adding a event log challenges and data quality challenges optionally to be explicitly modelled, graph database as a method to model and analyze the structure's of an event log's maturity based on the event log class diagram structures.

# 3. Development Phase
The result of the development phase are the scripts transforming the CSV of the different PAISs in a federated setting into an aggregated event log class diagram graph model for comparisons.

# 4. Evaluation Phase
In the evaluation phase the author evaluated the IT artefact with process mining experts.

# 5. Conclusion Phase
The conclusion of the thesis can be summarized as the following: The author used the design science research framework in this master thesis to understand how process mining practitioners can be supported through the KG4ELPP artefact by identifying which steps for data harmonization efforts are seen as important needed to construct a federated event log for the FPM model type I proposed by Van der Aalst. The gathered requirement was done in the Awareness and Suggestion phase with industry experts with experience in performing intra-organizational comparative process mining for supply chain lead time analysis. Because FPM for model type I is still a theoretical concept - a synthetic dataset was used to demonstrate how the artefact, which leverages knowledge graph concepts, can be used for constructing a federated event log for inter-organizational comparative process mining. 

As stated, the field of federated process mining is still emerging. The developed artefact is based on concepts from current research in analyzing and modelling event data in a knowledge graph for federated event log preprocessing based
on theoretical principles from the field of process mining. As not all event data can directly be compared because an abstraction of the event logs had to be created through the Meta-DataFrame by the author based on the recommendations of the interviewees. The integration and comparison through the Python script enables a process mining practitioner to query and semantically enrich each event log of a different supplier to identify which data transformations and event log challenges must be addressed before constructing the federated event log. The evaluation phase revealed which aspects of the knowledge graph were seen as advantageous and which ones remain a challenge to construct the federated
event log. The artefact with the synthetic event data proved that the gathered requirements could be fulfilled, and that the artefact can be used to achieve its objective in understand event log differences between different companies gathered from different PAIS. The author
concluded the thesis by answering the research questions related to semantic technologies and graph databases as well as provided an outlook for further research opportunities related to the artefact and the adoption of FPM. Once federated event log data sets become publicly available in academia, the artefact’s concept of using a knowledge graph and formal event log class diagram to perform comparisons in constructing a federated event log could be tested once more by the research community.

To read the thesis, please contact me personally.
