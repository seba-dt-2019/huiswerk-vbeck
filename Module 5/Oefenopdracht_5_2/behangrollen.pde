
int aantalRollen(float muurBreedte, float muurHoogte, float patroonHoogte) {
  final int ROLHOOGTE = 1000,
            ROLBREEDTE = 52;

  float beperktePatroonHoogte = constrain(patroonHoogte, 1.0, muurHoogte);
  float verlengdeMuurHoogte = ceil(muurHoogte/beperktePatroonHoogte)*beperktePatroonHoogte;
  
  int nStroken = floor(ROLHOOGTE/verlengdeMuurHoogte);
  int breedtePerRol = nStroken * ROLBREEDTE;
  
  return ceil(muurBreedte/breedtePerRol);
}
