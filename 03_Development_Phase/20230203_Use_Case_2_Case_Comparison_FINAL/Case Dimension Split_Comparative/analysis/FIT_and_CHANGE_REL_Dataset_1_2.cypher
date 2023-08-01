// Delete fit and change relationships.
// MATCH (object_node:BPIC_Synthetic_Split_1) - [rel:CHANGE|FIT] -> (subject_node:BPIC_Synthetic_Split_2) DELETE rel;

// Create fit and change relationships.
MATCH (object_node:BPIC_Synthetic_Split_1:`caseID`), (subject_node:BPIC_Synthetic_Split_2:`caseID`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`caseID`), (subject_node:BPIC_Synthetic_Split_2:`caseID`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`event time:timestamp`), (subject_node:BPIC_Synthetic_Split_2:`event time:timestamp`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`event time:timestamp`), (subject_node:BPIC_Synthetic_Split_2:`event time:timestamp`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`event concept:name`), (subject_node:BPIC_Synthetic_Split_2:`event concept:name`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`event concept:name`), (subject_node:BPIC_Synthetic_Split_2:`event concept:name`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`eventID `), (subject_node:BPIC_Synthetic_Split_2:`eventID `) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`eventID `), (subject_node:BPIC_Synthetic_Split_2:`eventID `) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Document Type`), (subject_node:BPIC_Synthetic_Split_2:`case Document Type`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Document Type`), (subject_node:BPIC_Synthetic_Split_2:`case Document Type`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Sub spend area text`), (subject_node:BPIC_Synthetic_Split_2:`case Sub spend area text`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Sub spend area text`), (subject_node:BPIC_Synthetic_Split_2:`case Sub spend area text`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Purch. Doc. Category name`), (subject_node:BPIC_Synthetic_Split_2:`case Purch. Doc. Category name`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Purch. Doc. Category name`), (subject_node:BPIC_Synthetic_Split_2:`case Purch. Doc. Category name`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Vendor`), (subject_node:BPIC_Synthetic_Split_2:`case Vendor`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Vendor`), (subject_node:BPIC_Synthetic_Split_2:`case Vendor`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Item Type`), (subject_node:BPIC_Synthetic_Split_2:`case Item Type`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Item Type`), (subject_node:BPIC_Synthetic_Split_2:`case Item Type`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Item Category`), (subject_node:BPIC_Synthetic_Split_2:`case Item Category`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Item Category`), (subject_node:BPIC_Synthetic_Split_2:`case Item Category`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Spend classification text`), (subject_node:BPIC_Synthetic_Split_2:`case Spend classification text`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Spend classification text`), (subject_node:BPIC_Synthetic_Split_2:`case Spend classification text`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Source`), (subject_node:BPIC_Synthetic_Split_2:`case Source`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Source`), (subject_node:BPIC_Synthetic_Split_2:`case Source`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Name`), (subject_node:BPIC_Synthetic_Split_2:`case Name`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Name`), (subject_node:BPIC_Synthetic_Split_2:`case Name`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case GR-Based Inv. Verif.`), (subject_node:BPIC_Synthetic_Split_2:`case GR-Based Inv. Verif.`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case GR-Based Inv. Verif.`), (subject_node:BPIC_Synthetic_Split_2:`case GR-Based Inv. Verif.`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Item`), (subject_node:BPIC_Synthetic_Split_2:`case Item`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Item`), (subject_node:BPIC_Synthetic_Split_2:`case Item`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case concept:name`), (subject_node:BPIC_Synthetic_Split_2:`case concept:name`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case concept:name`), (subject_node:BPIC_Synthetic_Split_2:`case concept:name`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Goods Receipt`), (subject_node:BPIC_Synthetic_Split_2:`case Goods Receipt`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`case Goods Receipt`), (subject_node:BPIC_Synthetic_Split_2:`case Goods Receipt`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`event User`), (subject_node:BPIC_Synthetic_Split_2:`event User`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`event User`), (subject_node:BPIC_Synthetic_Split_2:`event User`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`event org:resource`), (subject_node:BPIC_Synthetic_Split_2:`event org:resource`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`event org:resource`), (subject_node:BPIC_Synthetic_Split_2:`event org:resource`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`event Cumulative net worth (EUR)`), (subject_node:BPIC_Synthetic_Split_2:`event Cumulative net worth (EUR)`) WHERE object_node.`Data type` = subject_node.`Data type` CREATE (object_node) - [:FIT] -> (subject_node);
MATCH (object_node:BPIC_Synthetic_Split_1:`event Cumulative net worth (EUR)`), (subject_node:BPIC_Synthetic_Split_2:`event Cumulative net worth (EUR)`) WHERE object_node.`Data type` <> subject_node.`Data type` CREATE (object_node) - [:CHANGE] -> (subject_node);

// Show all nodes from the two graphs, between which we have created fit and change relationships.
// MATCH (node) WHERE node:BPIC_Synthetic_Split_1 OR node:BPIC_Synthetic_Split_2 RETURN (node);

// Show any node in the graph database.
// MATCH (node) RETURN (node);

