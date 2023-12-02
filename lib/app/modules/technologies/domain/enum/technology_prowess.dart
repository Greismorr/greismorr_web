enum TechnologyProwess {
  mains(
    titleI18nKey: 'technologies.technologyProwess.mains.title',
    descriptionI18nKey: 'technologies.technologyProwess.mains.description',
  ),
  knowns(
    titleI18nKey: 'technologies.technologyProwess.knowns.title',
    descriptionI18nKey: 'technologies.technologyProwess.knowns.description',
  ),
  familiars(
    titleI18nKey: 'technologies.technologyProwess.familiars.title',
    descriptionI18nKey: 'technologies.technologyProwess.familiars.description',
  );

  const TechnologyProwess({
    required this.titleI18nKey,
    required this.descriptionI18nKey,
  });

  final String titleI18nKey;
  final String descriptionI18nKey;
}
