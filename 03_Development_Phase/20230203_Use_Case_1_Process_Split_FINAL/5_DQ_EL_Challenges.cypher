// Event Log Challenges and Data Quality Issues Taxonomy
CREATE (:`Timestamps `:`Semantic Node`)<-[:EL_CHALLENGE_2]-(n1:`Event Log Challenges`:`Semantic Node`)-[:EL_CHALLENGE_1]->(n2:Correlation:`Semantic Node`)-[:EL_CHALLENGE_1A]->(:Divergence:`Semantic Node`),
(n2)-[:EL_CHALLENGE_1B]->(:Convergence:`Semantic Node`),
(:`Scoping `:`Semantic Node`)<-[:EL_CHALLENGE_4]-(n1)-[:EL_CHALLENGE_3]->(:`Snapshots `:`Semantic Node`),
(n25:`Event Log Pre-Processing Taxonomy`:`Semantic Parent Node`:`Semantic Node` {`Amount of Children`: 2})-[:EVENT_LOG_CHALLENGES]->(n1)-[:EL_CHALLENGE_5]->(:Granularity:`Semantic Node`),
(:`Missing in Log (MIL)`:`Semantic Node`)<-[:DQ_CHALLENGE_1]-(n9:`Data Quality`:`Semantic Node`)-[:DQ_CHALLENGE_2]->(:`Missing in Reality (MIR) `:`Semantic Node`),
(:`Format Issues`:`Semantic Node`)<-[:DQ_CHALLENGE_4]-(n9)-[:DQ_CHALLENGE_3]->(:`Concealed in the Log (CIL)`:`Semantic Node`),
(n25)-[:DATA_QUALITY_CHALLENGES]->(n9)-[:DQ_CHALLENGE_5]->(:Duplicates:`Semantic Node`),
(n1)-[:EL_CHALLENGE_6]->(:Multidimensionality:`Semantic Node`)
RETURN (n25);