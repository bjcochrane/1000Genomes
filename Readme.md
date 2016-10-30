## 1000 Genomes for Population Genetics

### Backgound

For several years, I have been dependent on HapMap data, accessible from the web interface at  http://www.hapmap.org, as a source of data for examining things like population structure, haplotype diversity, and signals of selection.  Alas, that is no longer available, so I've finally had to delve into the 1000 Genomes project.  The good news, of course, is that phase 3 data are much more extensive than were those available in hapmap; the bad news is that access to data is somewhat more convoluted.  The routines we'll be accumulating here will be ones designed to do what we had previously done with hapmap; in particular

1.  Download data and do necessary data munging
2.  Visualize linkage disequilibrium
3.  Calculate haplotype diversity
4.  Do F statistics and PCA
5.  Look for signals of selection

Ultimately, some of this may be incorporated into an R package for use in classes.