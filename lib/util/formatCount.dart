String formatCount(int count) {
  if (count >= 0 && count <= 999) {
    return count.toString();
  } else if (count > 999 && count < 10000) {
    return '999+';
  } else if (count >= 10000 && count < 100000) {
    return '1w+';
  } else if (count >= 100000 && count < 1000000) {
    return '10w+';
  } else {
    return '100w+';
  }
}
