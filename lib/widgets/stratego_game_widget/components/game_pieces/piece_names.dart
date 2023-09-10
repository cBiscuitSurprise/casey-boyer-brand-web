String rankToName(int rank) {
  switch (rank) {
    case 11:
      return "B";
    case 10:
      return "Ma";
    case 9:
      return "G";
    case 8:
      return "Co";
    case 7:
      return "Mj";
    case 6:
      return "Ca";
    case 5:
      return "L";
    case 4:
      return "Se";
    case 3:
      return "Mi";
    case 2:
      return "Sc";
    case 1:
      return "Sp";
    case 0:
      return "F";
    default:
      return "Missing";
  }
}
