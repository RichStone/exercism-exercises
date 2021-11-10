const rnaToDnaMapping = {
  G: "C",
  C: "G",
  T: "A",
  A: "U",
};

export const toRna = (dna) => {
  let rna = "";

  [...dna].forEach((nucleotide) => {
    rna += rnaToDnaMapping[nucleotide];
  });

  return rna;
};
