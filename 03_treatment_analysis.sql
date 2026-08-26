SELECT m.DESCRIPTION, COUNT(*) AS Number_Prescriptions FROM medications AS m JOIN conditions AS c
ON m.PATIENT = c.PATIENT WHERE c.DESCRIPTION LIKE '%anemia%'
GROUP BY m.DESCRIPTION ORDER BY Number_Prescriptions DESC;

SELECT m.DESCRIPTION, COUNT(*) AS Number_Prescriptions FROM medications AS m JOIN conditions AS c
ON m.PATIENT = c.PATIENT WHERE c.DESCRIPTION LIKE '%anemia%' AND (m.DESCRIPTION LIKE '%Epoetin%'
OR m.DESCRIPTION LIKE '%ferrous%' OR m.DESCRIPTION LIKE '%folic%' OR m.DESCRIPTION LIKE '%iron%'
OR m.DESCRIPTION LIKE '%B12%')
GROUP BY m.DESCRIPTION ORDER BY Number_Prescriptions DESC;