// Here is a set of dummy data demonstrating how the information nodes could be included as semantic enrichment to construct the Knowledge Graph

// Schema in creating information nodes BPI_C_2019_1st_Supplier
CREATE (z:Process_Level:BPI_C_2019_1st_Supplier:Information_Node{ProcessDescription: "Purchase Order"})
CREATE (a:location:Process_Level:BPI_C_2019_1st_Supplier:Information_Node{country: "CH", location: "Heerbrugg"})
CREATE (b:PAIS:Process_Level:BPI_C_2019_1st_Supplier:Information_Node{amountoftables: 3, PAIS: "SAP Datawarehouse"})
CREATE(c:Organisational_Reference:Process_Level:BPI_C_2019_1st_Supplier:Information_Node{company: "Leica Microsystems", IT_Expert:"Romana Suter", Process_Expert: "Bruno Suttero"})
CREATE (z)-[r:Process_Reference]->(a)
CREATE (z)-[g:Process_Reference]->(b)
CREATE (z)-[j:Process_Reference]->(c)
Return a, b, c, z

// Schema in creating information nodes BPI_C_2019_2nd_Supplier
CREATE (z:Process_Level:BPI_C_2019_2nd_Supplier:Information_Node{ProcessDescription: "Purchase Order"})
CREATE (a:location:Process_Level:BPI_C_2019_2nd_Supplier:Information_Node{country: "DE", location: "Vierkirchen"})
CREATE (b:PAIS:Process_Level:BPI_C_2019_2nd_Supplier:Information_Node{amountoftables: 5, PAIS: "Oracle DW"})
CREATE(c:Organisational_Reference:Process_Level:BPI_C_2019_2nd_Supplier:Information_Node{company: "micronova AG", IT_Expert:"John Doe", Process_Expert: "Joana Van der Merwe"})
CREATE (z)-[r:Process_Reference]->(a)
CREATE (z)-[g:Process_Reference]->(b)
CREATE (z)-[j:Process_Reference]->(c)
Return a, b, c, z

// Schema in creating information nodes BPI_C_2019_3rd_Supplier
CREATE (z:Process_Level:BPI_C_2019_3rd_Supplier:Information_Node{ProcessDescription: "Purchase Order"})
CREATE (a:location:Process_Level:BPI_C_2019_3rd_Supplier:Information_Node{country: "PL", location: "Wola Grzybowska"})
CREATE (b:PAIS:Process_Level:BPI_C_2019_3rd_Supplier:Information_Node{amountoftables: 5, PAIS: "SAP Datalake"})
CREATE(c:Organisational_Reference:Process_Level:BPI_C_2019_3rd_Supplier:Information_Node{company: "Metrohm nLabs", IT_Expert:"Zofia Lewandowski", Process_Expert: "Jakub Kowalski"})
CREATE (z)-[r:Process_Reference]->(a)
CREATE (z)-[g:Process_Reference]->(b)
CREATE (z)-[j:Process_Reference]->(c)
Return a, b, c, z

// Schema in creating information nodes BPI_C 2019 FEL
CREATE (z:Process_Level:BPI_C_2019_OEM_Federated_Event_Log:Information_Node{ProcessDescription: "Purchase Order"})
CREATE (a:location:Process_Level:BPI_C_2019_OEM_Federated_Event_Log:Information_Node{country: "DE", location: "Munich"})
CREATE (b:PAIS:Process_Level:BPI_C_2019_OEM_Federated_Event_Log:Information_Node{PAIS: "Celonis EMS"})
CREATE(c:Organisational_Reference:Process_Level:BPI_C_2019_OEM_Federated_Event_Log:Information_Node{company: "Siemens Headquarters", IT_Expert:"Hans Gutenberg", Process_Expert: "Sonja Van der Merwe"})
CREATE (z)-[r:Process_Reference]->(a)
CREATE (z)-[g:Process_Reference]->(b)
CREATE (z)-[j:Process_Reference]->(c)
Return a, b, c, z

// Example Command
MATCH (n)
WHERE id(n) = 24 // caseID of event log
MATCH (m)
WHERE id(m) = 80 //process_level node
CREATE (m)-[r:PROCESS_TO_CASE]->(n)
RETURN n, r, m

