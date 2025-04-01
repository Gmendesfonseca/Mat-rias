var tableDecrypt = {
  o: 'c',
  l: 'd',
  n: 's',
  u: 'i',
  c: 'o',
  q: 'f', // Mudamos 'q' de 'd' para 'f'
  m: 'n',
  v: 'a',
  b: 'w',
  s: 'y',
  a: 'e',
  e: 't',
  j: 'z',
  p: 'g',
  t: 'v',
  h: 'l',
  d: 's',
  f: 'x',
  x: 'b',
  i: 'u',
  g: 'p',
  r: 'm',
  k: 'ç',
  z: 'j',
  w: 'q',
  y: 'r',
};

var decrypt = function (str) {
  return str
    .split('')
    .map(function (char) {
      return tableDecrypt[char] || char;
    })
    .join('');
};

console.log(
  decrypt(
    'gcaivy cgvalvz qv hodv lc qvdko gvh v yvh lo ncyyvy mdqlvy lv cqlca lo gdhc, vqlo qdquzoh hvacmc xc cqvy. v ecazixv rvd gaoygoqlv, cko wzo oio qcv gvqyouzdz duqvaca. dqkaduclv o zh nvzgv cyyzykclv, yzedz cy oygclcy, o cv gxouca qv kvnv, vqgvqkavz zhc nvakc kacqgclc wzo qzqgc xcmdc mdykv cqkoy. wzcqlv gvqyouzdz cead-ic gvh ldrdgzilclo, loz lo gcac gvh yoz navnadv gvanv, lodkclv qc gchc, gvh vy vihvy rdjvy o caaouciclvy, veyoamcqlv-v. cv yo cnavjdhca, vy vixvy lo yoz aoriojv yo hvmoach ioqkcheoqko, gvhv yo oykdmoyyo cgvalcqlv.',
  ),
);
