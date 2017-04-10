import re
from string import maketrans

def to_rna(dna):
    if re.search(r'[^GCTA]+', dna):
        return ''

    intab = "GCTA"
    outtab = "CGAU"
    trantab = maketrans(intab, outtab)
    return dna.translate(trantab)
