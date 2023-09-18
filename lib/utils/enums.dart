enum ChoiceDiscover {
  trackPeriods(
      mainText: 'Track my period',
      additionalText: 'contraception and wellbeing'),
  getPregnant(
      mainText: 'Get pregnant',
      additionalText: 'learn about reproductive health'),;

  const ChoiceDiscover({
    required this.mainText,
    required this.additionalText,
  });

  final String mainText;
  final String additionalText;
}
