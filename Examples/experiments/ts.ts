interface Sas {
  mem(): number
}

function srs(sas: Sas) {
  sas.mem()
}

class Kek {
  mem(): number { return 4 }
}

let kek = new Kek()
srs(kek)
