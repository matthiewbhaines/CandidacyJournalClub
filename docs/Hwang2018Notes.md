---
title: "Hwang et al. (2018) Notes"
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
![*Abstract of Hwang et al. (2018)*](C:/Users/Matthiew/Documents/Research/Candidacy/JournalClub/CandidacyJournalClub/Hwang18Abstract.png)  

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
- *recombination*
- *penetrance* - effect size (of a genetic variant) (@BushMoore+shortyear)
- *phenotype* - the expression of a certain trait (think "physical")
- *genotype* - the genetic makeup, or the specific combination of alleles (think "genes")

![Genotype versus Phenotype](C:/Users/Matthiew/Documents/Research/Candidacy/JournalClub/CandidacyJournalClub/Genotype.jpg)
[from the **National Human Genome Research Institute**](https://www.genome.gov/genetics-glossary/genotype)



# Introduction  
- bitterness perception is partially determined by genetics  
  + genetic effect is estimated to be between 36% and 73%
  + this would be the "variance" described in @BushMoore+shortyear
- *TAS2R* is a gene; *T2R* is the protein product
- bitter taste perception has been correlated with disease status and certain surgical outcomes, so it is important to understand bitterness perception in the interest in personalizing medicine  
- what is a **haplotype**?
- PROP is associated with TAS2R38
- Quinine (Q) is associated with TAS2R19
- this study aims to $\uparrow$ N (sample size) and use multivariate associated analysis (?) to identify common genetic variances (minor allele frequency [MAF] $\geq$ 5%) with small effects  
  + what is the "plain English" version?
- using MV GWAS can find associations that didn't reach significance in univariate analysis

![**Figure 1**](https://media.springernature.com/full/springer-static/image/art%3A10.1186%2Fs12864-018-5058-2/MediaObjects/12864_2018_5058_Fig1_HTML.png?as=webp)  

  + 1A: spread on y axis, not on x axis
    + only T1 (y axis) is associated with variant (non-pleiotropic)
    + better separation seen in 2D (practice with the pencil test from high school math class)
  + 1B: spread on y and x axis
    + minor allele has opposing effects, $\uparrow$ T1 (Y) and $\downarrow$ T2 (X)
    + starting to see the spread on y and x axes, especially when combined
  + 1C: minor allele has similar effects, $\uparrow$ T1 (Y) and $\uparrow$ T2 (X)
    + no greater separation with bivariate analysis than would get with univariate
    
- what is/are the hypotheses when conducting a GWAS?
  + see @BushMoore+shortyear, hypothesis seeking associations of genetic variances (SNPs) to a trait/disease  
  
# Methods
- 1999 Caucasians (this is important from an ancestral history POV for the GWAS)
  + mention this is an increase (by 40% of sample size)
- taste battery methods described in @HansenEtAl+shortyear
- removed participants > 6 SD away from PC1 and PC2, only those with exclusively European ancestry was kept

## GWAS analysis
- linear mixed model
- covariates: age, sex, ear infection history, first 5 PC from genotype
  + why were 5 PC included?
  
- bivariate analysis complemented univariate analysis
- what is conditional analysis

**Notes**
- review linear mixed models
- finish reading methods section
