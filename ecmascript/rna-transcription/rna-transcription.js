export default function tranScriptor() {
    const tranTable = {
        'G': 'C',
        'C': 'G',
        'T': 'A',
        'A': 'U'
    }

    this.toRna = function (dna) {
        return dna.split('').map((dnaStrand) => {
             let rnaStrand = tranTable[dnaStrand]

             if (rnaStrand) {
               return rnaStrand
             } else {
               throw new Error('Invalid input DNA.')
             }
        }).join('')
    }
}
