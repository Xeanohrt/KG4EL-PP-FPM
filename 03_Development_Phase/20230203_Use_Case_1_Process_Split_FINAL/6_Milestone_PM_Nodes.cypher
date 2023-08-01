// Project Management Nodes as additional semantic information in a KG
CREATE(`Wave1`:`Project Management Node`:`Semantic Node` {date: "Q3 2022/2023"})<-[:OWNS]-(m:`Semantic Parent Node`:`Project Management Node`:`Semantic Node`)-[:OWNS]->(:`Wave2`:`Project Management Node`:`Semantic Node` {date: "Q4 2022/2023"}),
(m)-[:OWNS]->(:`Wave3`:`Project Management Node`:`Semantic Node` {date: "Q1 2023/2024"}) RETURN (m)


// Milestones can be added based on the analysis of the longest case(s) insights across the different source event logs
CREATE (g:Milestone {Key_Business_Process: 1, Description: "Example"})-[:DIRECTLY_FOLLOWS]->(:Milestone {Key_Business_Process: 2, Description: "Example"}) RETURN g