enum Routes {
  rootPage('/'),
  choicePage('/choicePage'),
  resultsPage('resultsPage'),
  dateChoicePage('dateChoicePage');

  const Routes(this.path);

  final String path;
}
