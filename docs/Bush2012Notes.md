---
title: "Bush and Moore (2012) Notes"
author: "Matthiew Haines"
date: '2025-01-16'
output: 
  html_document:
    keep_md: true
editor_options: 
  markdown: 
    wrap: 72
bibliography: MyLibrary.bib
---

# Abstract: 
![*Abstract of Bush and Moore (2012)*](C:/Users/Matthiew/Documents/Research/Candidacy/JournalClub/CandidacyJournalClub/Bush2012Abstract.png)  

# Glossary/Abbreviations:
- *haplotype* - a group of SNPs ([NIH lecture](https://youtu.be/HHvdupHgeFg?si=zvgAl1gHi0-YxVmt))  
- *TAS2R* - a gene  
- *T2R* - a protein  
- *multivariate associated analysis*  
- *genome-wide association study (GWAS)* - aim to identify genetic risk factors for common diseases by utilizing DNA sequence variations (@BushMoore+shortyear)  
- *minor allele frequency (MAF)* - frequency of the less common allele in a SNP (@BushMoore+shortyear)  
- *pleiotropy* - one gene influences two or more seemingly unrelated phenotypic traits (Wikipedia)
  + one gene controls expression of multiple/several phenotypic traits  
  + ex. sickle cell disease ([ThoughtCo.](https://www.thoughtco.com/pleiotropy-definition-4687155))
- *single nucleotide polymorphism (SNP)* - a single change in a base pair, seen/occur with high frequency, common, given in terms of minor allele frequency  (@BushMoore+shortyear)  
- *linkage disequilibrium (LD)* - if 2 pairs are always seen together (at higher than chance level) (ex. AB and ab) out of possible combinations (AB, Ab, aB, ab), distance between 2 genes is assumed to be small  
  + linkage between markers on a population scale (across many many generations) (@BushMoore+shortyear)
  + *linkage equilibrium* would be when no alleles/markers are linked, independent
  + LD is reported in R^2, where $\uparrow$ r^2 means two SNPs convey similar info
- *mutation* - low frequency variation in genetic sequence, rare (@BushMoore+shortyear)
- susceptibility variant
- *penetrance* - effect size (of a genetic variant) (@BushMoore+shortyear)
- *phenotype* - the expression of a certain trait (think "physical")
- *genotype* - the genetic makeup, or the specific combination of alleles (think "genes")

![Genotype versus Phenotype](C:/Users/Matthiew/Documents/Research/Candidacy/JournalClub/CandidacyJournalClub/Genotype.jpg)
[from the **National Human Genome Research Institute**](https://www.genome.gov/genetics-glossary/genotype)

- *recombination*


# 1. Important Questions in Human Genetics
- GWAS studies aim to identify genetic risk factors for common diseases by utilizing DNA sequence variations  
  + the goal/outcome is to identify biological underpinnings of disease susceptibility, predict at-risk groups, and develop new prevention/treatments
  + could have a role in "personalizing medicine"
  + [**self**] I like this definition
- ex. application of GWAS: warfarin dosages are partially controlled by genetics  

# 2. Concepts Underlying the Study Design  
- linkage analysis is a technique that genotypes families of rare diseases and sees how genetic markers segregate with disease across multiple families  
  + this technique is not well suited for common diseases (ex. heart disease)  
- *common disease/common variant (CD/CV) hypothesis*
  + common diseases are influenced by common genetic variances in a population
  + common variants cannot have high penetrance/effect sizes
  + total genetic risk due to common genetic variation must be spread across multiple genetic factors (@BushMoore+shortyear quote)
- what is the meaning of "variance" in disease risk applications?
  + ex. if 40% of total variance in disease risk is due to genetic factors, what is the plain English?


![**Figure 1**](https://cdn.ncbi.nlm.nih.gov/pmc/blobs/6e2a/3531285/2e868bea85f6/pcbi.1002822.g001.jpg)

  + Lower Right - GWAS  
  + Upper Right - Linkage analysis and GWAS
  + Lower Left - difficult to challenge (not appropriate for GWAS)
  + *NOD2 was identified by linkage analysis, not GWAS* (@verstockt2018)
  
# 3. Capuring Common Variation
- need a systematic approach
  1. identify location and density of SNPs
  2. catalog/identify common GV
  3. correlations between common GV (to prevent redundance)
- European descendants have larger LD regions (more linkage)
  + this may be important in @HwangEtAl+shortyear
- outcomes from the presence of LD  
  1. a *direct association*, where a *functional SNP* is associated with a specific trait
  2. an *indirect association*, where a *tag SNP* is identifed and associated with a phenotype
- *01162025*: Chris mentioned a GWAS is a big association/regression study
  + in a way, GWAS is hypothesis seeking, rather than hypothesis driven  
  
# 4. Genotyping Technologies
# 5. Study Design
- two types of phenotypes: categorical and quantitative
  + quantitative can improve power and have interpretable outcome
  + categorical could be described as affected/unaffected
- need to uniformly measure the phenotype response
  + ex. classify disease type/severity
  + how to remove bias in measuring perception?

# 6. Association Test
- GWAS tests each SNP *independently* for association to the phenotype  

![From @verstockt2018](C:/Users/Matthiew/Documents/Research/Candidacy/JournalClub/CandidacyJournalClub/QuantTraitGWAS.jpg)

**Basic principles of GWAS.** GWAS has been made possible because of the haplotype structure of the human genome. Every chromosome consists of multipe haplotypes – regions that are inherited together during meiosis. Within each haplotype, there are typically many SNPs, which are co-inherited within the larger genetic region, and thus, their alleles are inherited nonrandomly (i.e. they are in linkage disequilibrium). This means that it is possible to infer the genotypes at multiple SNPs within the haplotype (shown in grey) if the genotype at one or more SNPs is known. GWAS SNPs (shown in black) are selected so as to tag each haplotype, but where association is observed, they are unlikely to be the causal variant at the locus (shown in red). By genotyping SNPs from each haplotype in the genome in disease cases and healthy controls, it is possible to identify SNPs where the allele frequency is significantly different between the cases and controls, and which are associated with the disease.

- quantitative traits are analyzed via ANOVA with a categorical main effect of genotype (ex. AA, Aa, aa)  
  + $H_0$: no differencebetween the trait means of any genotype group
  + assumptions (these are the same as any ANOVA): 
    1. trait is normally distributed
    2. trait variance among the groups are the same
    3. the groups are independent
- case/control traits are analyzed via logistic regression or chi-square tests
  + logisitic regression predicts the probability of having a case status given the patient's genotype
    + allows for covariates in the model (chi-square does not)
  - types of association tests:
    + *allelic association* test between one allele of SNP and phenotype
    + *genotypic association* test between genotype/genotype classes and phenotype
      + a genotype class would be a model of expression, ex. dominant, recessive, or additive, etc.  
      + common practice is to use additive model, such that there is a uniform, linear increase in risk for each copy of the *A* allele
      + can use multiple models with appropriate correction for multiple testing
- section 6.3 describe multiple ways of correcting the $\alpha$ value for multiple testing, from a simple Bonferroni correction to genome-wide significance
- multi-locus models can be used to investigate the interaction of several alleles
  + the combination of markers could incur a change in disease risk

# Questions
- what factors, other than genetic, could be explanations of variance in bitterness perception?
  
## Notes
- edit/update Bibtex citations
