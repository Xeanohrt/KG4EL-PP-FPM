// Delete fit and change relationships.
// MATCH (object_node:BPIC_Synthetic_Split_3) - [rel:CHANGE|FIT] -> (subject_node:BPIC_Synthetic_Split_2_Reduced) DELETE rel;

// Create fit and change relationships.
MATCH (object_node:BPIC_Synthetic_Split_3:`caseID`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`caseID`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`caseID`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`caseID`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`event time:timestamp`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`event time:timestamp`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`event time:timestamp`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`event time:timestamp`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`event concept:name`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`event concept:name`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`event concept:name`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`event concept:name`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`eventID `), (subject_node:BPIC_Synthetic_Split_2_Reduced:`eventID `) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`eventID `), (subject_node:BPIC_Synthetic_Split_2_Reduced:`eventID `) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`case Sub spend area text`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`case Sub spend area text`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`case Sub spend area text`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`case Sub spend area text`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`case Item Category`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`case Item Category`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`case Item Category`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`case Item Category`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`case Name`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`case Name`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`case Name`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`case Name`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`case Goods Receipt`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`case Goods Receipt`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`case Goods Receipt`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`case Goods Receipt`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`event org:resource`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`event org:resource`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_3:`event org:resource`), (subject_node:BPIC_Synthetic_Split_2_Reduced:`event org:resource`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);

// Show all nodes from the two graphs, between which we have created fit and change relationships.
// MATCH (node) WHERE node:BPIC_Synthetic_Split_3 OR node:BPIC_Synthetic_Split_2_Reduced RETURN (node);

// Show any node in the graph database.
// MATCH (node) RETURN (node);

