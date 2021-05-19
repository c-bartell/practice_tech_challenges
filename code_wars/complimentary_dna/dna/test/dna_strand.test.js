const DNAStrand = require('../modules/dna_strand')

test('DNAStrand function', () => {
	expect(DNAStrand("AAAA")).toBe("TTTT");
	expect(DNAStrand("ATTGC")).toBe("TAACG");
	expect(DNAStrand("GTAT")).toBe("CATA");
});
