SELECT salesgroup, country, annualsales,
row_number() OVER(order by annualsales desc) as RowNumber,
Rank() OVER(order by annualsales desc) as BasicRank,
dense_rank() over(order by annualsales desc) as DenseRank,
Ntile(3) over (order by annualsales desc) as NtileRank
from regionalsales