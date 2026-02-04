---
title: Privacy Attacks On Image AutoRegressive Models
tags: ["blog", "paper"]
type: "page"
date: "2025-02-05"
---

<div style="
  display: flex;
  justify-content: center;
  align-items: center;
  gap: 15px;
  margin-bottom: 25px;
  margin-top: 10px;
">
  <span style="
    font-size: 40px; 
    font-weight: bold; 
    font-family: sans-serif; 
  ">Accepted to ICML 2025 (Poster)</span>
  <img src="../../files/priv_iar/ICML-logo.svg" 
       alt="ICML Logo" 
       style="height: 50px; width: auto; background-color: white;" />
</div>

<center>
  <strong>Authors:</strong>
  <a href="http://antonikowalczuk.com"><sup>1</sup>Antoni Kowalczuk*</a>,
  <a href="https://scholar.google.com/citations?user=iG319iwAAAAJ&hl=pl&oi=ao"><sup>2,3</sup>Jan Dubiński*</a>,
  <a href="https://franziska-boenisch.de/"><sup>1</sup>Franziska Boenisch</a>,
  <a href="https://adam-dziedzic.com/"><sup>1</sup>Adam Dziedzic</a>
  <br><br>
  <sup>1</sup>CISPA Helmholtz Center for Information Security<br>
  <sup>2</sup>Warsaw University of Technology<br>
  <sup>3</sup>IDEAS NCBR<br><br>
  <em>*Indicates Equal Contribution</em>
</center>

<!-- Container that keeps buttons on one row -->
<div style="
  display: flex;               /* forces horizontal row */
  justify-content: center;     /* center them horizontally */
  align-items: center;         /* vertically center inside the container */
  gap: 8px;                    /* space between buttons */
  margin-top: 1em;             /* some spacing above, optional */
">

  <!-- Example Button 1 -->
  <a href="https://github.com/sprintml/privacy_attacks_against_iars" style="
    display: inline-flex;       /* allow icon+text to align side-by-side */
    align-items: center;        /* vertically center icon+text */
    text-decoration: none;      /* remove link underline */
    background-color: #444;     /* dark pill color */
    color: #fff;                /* text/icon color */
    font-size: 14px;            /* smallish text */
    font-family: sans-serif;
    line-height: 1;             /* eliminate extra vertical space */
    padding: 4px 12px;          /* adjust pill size */
    border-radius: 9999px;      /* make it a pill shape */
    border: 1px solid #ccc;
  ">
    <img src="../../files/github-mark-white.png"
         alt="Code Icon"
         style="
           width:16px; 
           height:16px;
           display: block;     /* avoids baseline alignment issues */
           margin-right:8px;
         ">
    Code
  </a>

  <!-- Example Button 2 -->
  <a href="https://arxiv.org/abs/2502.02514" style="
    display: inline-flex;
    align-items: center;
    text-decoration: none;
    background-color: #444;
    color: #fff;
    font-size: 14px;
    font-family: sans-serif;
    line-height: 1;
    padding: 4px 12px;
    border-radius: 9999px;
    border: 1px solid #ccc;
  ">
    <img src="../../files/arxiv.png"
         alt="arXiv Icon"
         style="
           width:16px; 
           height:16px;
           display: block;
           margin-right:8px;
         ">
    arXiv
  </a>
  
  <!-- Example Button 2 -->
  <a href="https://icml.cc/virtual/2025/poster/46325" style="
    display: inline-flex;
    align-items: center;
    text-decoration: none;
    background-color: #444;
    color: #fff;
    font-size: 14px;
    font-family: sans-serif;
    line-height: 1;
    padding: 4px 12px;
    border-radius: 9999px;
    border: 1px solid #ccc;
  ">
    <img src="../../files/priv_iar/icml-navbar-logo.svg"
         alt="ICML Icon"
         style="
           width:16px; 
           height:16px;
           display: block;
           margin-right:8px;
           /* background-color: white; */
         ">
    ICML Poster
  </a>
  <!-- Add more buttons as needed... -->
  <!-- Example Button 2 -->
  <a href="https://openreview.net/forum?id=7SXXczJCWP" style="
    display: inline-flex;
    align-items: center;
    text-decoration: none;
    background-color: #444;
    color: #fff;
    font-size: 14px;
    font-family: sans-serif;
    line-height: 1;
    padding: 4px 12px;
    border-radius: 9999px;
    border: 1px solid #ccc;
  ">
    <img src="../../files/openreview_logo.png"
         alt="OpenReview Icon"
         style="
           width:16px; 
           height:16px;
           display: block;
           margin-right:8px;
           /* background-color: white; */
         ">
    OpenReview
  </a>
  <!-- Add more buttons as needed... -->

</div>


<figure style="margin: 0 auto; width: 100%;">
  <!-- PNG image -->
  <img src="../../files/priv_iar/pareto_teaser.png" alt="Descriptive alternate text" style="display: block; width: 100%; height: auto;" />
  
  <!-- Caption below the image, justified -->
  <figcaption style="text-align: justify; margin-top: 8px;">
    <b>Privacy-utility and generation speed-performance trade-off for Image AutoRegressive Models (IARs) compared to Diffusion Models (DMs.)</b>
  </figcaption>
</figure>

## Abstract

<div style="text-align: justify">Image AutoRegressive generation has emerged as a new powerful paradigm with
image autoregressive models (IARs) surpassing state-of-the-art diffusion models
(DMs) in both image quality (FID: 1.48 vs. 1.58) and generation speed. However,
the privacy risks associated with IARs remain unexplored, raising concerns regard-
ing their responsible deployment. To address this gap, we conduct a comprehensive
privacy analysis of IARs, comparing their privacy risks to the ones of DMs as
reference points. Concretely, we develop a novel membership inference attack
(MIA) that achieves a remarkably high success rate in detecting training images
(with a TPR@FPR=1% of 94.57% vs. 6.38% for DMs with comparable attacks).
We leverage our novel MIA to provide dataset inference (DI) for IARs, and show
that it requires as few as 4 samples to detect dataset membership (compared to
200 for DI in DMs), confirming a higher information leakage in IARs. Finally, we
are able to extract hundreds of training data points from an IAR (e.g., 698 from
VAR-<i>d</i>30). Our results demonstrate a fundamental privacy-utility trade-off: while
IARs excel in image generation quality and speed, they are significantly more
vulnerable to privacy attacks compared to DMs. This trend suggests that utilizing
techniques from DMs within IARs, such as modeling the per-token probability
distribution using a diffusion procedure, holds potential to help mitigating IARs’
vulnerability to privacy attacks.
</div>

## Contributions

<ul>
<li>
  Our new MIA for IARs achieves extremely strong performance of even <strong>94.57%</strong> TPR@FPR, improving over naive application of MIAs by up to <strong>77%</strong>.
</li>
<li>
  We provide a potent DI method for IARs, which requires as few as <strong>4</strong> samples to assess dataset membership signal.
</li>
<li>
  We propose an efficient method of training data extraction from IARs, and successfully extract up to <strong>698</strong> images.
</li>
<li>
  IARs outperform DMs in generation efficiency and quality but suffer <strong>order-of-magnitude</strong> higher privacy leakage compared to them in MIAs, DI, and data extraction.
</li>
</ul>

## Membership Inference Attacks Results

| **Model**   | **VAR-*d*16** | **VAR-*d*20** | **VAR-*d*24** | **VAR-*d*30** | **MAR-B** | **MAR-L** | **MAR-H** | **RAR-B** | **RAR-L** | **RAR-XL** | **RAR-XXL** |
|-------------|----------------------|----------------------|----------------------|----------------------|-----------|-----------|-----------|-----------|-----------|------------|-------------|
| Baselines   | 1.62                 | 2.21                 | 3.72                 | 16.68                | 1.69      | 1.89      | 2.18      | 2.36      | 3.25      | 6.27       | 14.62       |
| Our Methods | **3.05**             | **9.26**             | **25.39**            | **94.57**            | **2.09**  | **2.61**  | **3.40**  | **4.30**  | **8.66**  | **26.14**  | **49.80**   |
| Improvement | **+1.43**            | **+7.05**            | **+21.67**           | **+77.89**           | **+0.40** | **+0.73** | **+1.22** | **+1.94** | **+5.41** | **+19.87** | **+35.17**  |

We improve over baseline Membership Inference Attacks by up to **77.89%** for VAR-*d*30. 

## Dataset Inference Results

| **Model**            | **VAR-*d*16** | **VAR-*d*20** | **VAR-*d*24** | **VAR-*d*30** | **MAR-B** | **MAR-L** | **MAR-H** | **RAR-B** | **RAR-L** | **RAR-XL** | **RAR-XXL** |
|----------------------|---------------|---------------|---------------|---------------|-----------|-----------|-----------|-----------|-----------|------------|-------------|
| Baseline             | 2000          | 300           | 60            | 20            | 5000      | 2000      | 900       | 500       | 200       | 40         | 30          |
| +Optimized Procedure | 600           | 200           | 40            | 8             | 4000      | 2000      | 800       | 300       | 80        | 30         | 10          |
| Improvement          | -1400         | -100          | -20           | -12           | -1000     | 0         | -100      | -200      | -120      | -10        | -20         |
| +Our MIAs for IARs   | **100**       | **20**        | **7**        | **4**         | **2000**  | **600**   | **300**   | **80**    | **30**    | **20**     | **8**       |
| Improvement          | -500          | -180          | -33           | -4            | -2000     | -1400     | -500      | -220      | -50       | -10        | -2          |

## Data Extraction

We successfully perform data extraction attack against IARs, extracting up to **698** images. We extract **698** images for VAR-*d*30, **5** images for MAR-H, and **36** images for RAR-XXL.

<figure style="margin: 0 auto; width: 80%;">
  <!-- PNG image -->
  <img src="../../files/priv_iar/mem_teaser.png" alt="Descriptive alternate text" style="display: block; width: 100%; height: auto;" />
  
  <!-- Caption below the image, justified -->
  <figcaption style="text-align: justify; margin-top: 8px;">
    <b>Extracted Training Samples. IARs can reconstruct verbatim images from their training data. The first row shows the original training samples, and the second presents the extracted images.</b>
  </figcaption>
</figure>

## Bibtex

```
@InProceedings{kowalczuk2025privacy,
  title = 	 {Privacy Attacks on Image {A}uto{R}egressive Models},
  author =       {Kowalczuk, Antoni and Dubi\'{n}ski, Jan and Boenisch, Franziska and Dziedzic, Adam},
  booktitle = 	 {Proceedings of the 42nd International Conference on Machine Learning},
  pages = 	 {31667--31695},
  year = 	 {2025},
  volume = 	 {267},
  series = 	 {Proceedings of Machine Learning Research},
  month = 	 {13--19 Jul},
  publisher =    {PMLR},
  pdf = 	 {https://raw.githubusercontent.com/mlresearch/v267/main/assets/kowalczuk25a/kowalczuk25a.pdf},
  url = 	 {https://proceedings.mlr.press/v267/kowalczuk25a.html},
}
```
## Acknowledgment 

We would like to thank Bihe Zhao for identifying a configuration issue in our VAR experiments.