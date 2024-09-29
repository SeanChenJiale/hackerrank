/*
Enter your query here.
*/
CREATE TABLE BST_copy AS
SELECT * FROM BST ;

SELECT DISTINCT (N) ,

CASE 
    WHEN (parent IS NULL) THEN 'Root'
    WHEN (leaf is NULL) THEN 'Leaf'
    ELSE 'Inner'
END 
FROM
(
    /*
    :)))))) 
    */
SELECT BST.N, BST.P as parent ,BST_copy.N as leaf
FROM BST
LEFT JOIN BST_copy ON 
BST.N = BST_copy.P
) AS copy
ORDER BY N;
