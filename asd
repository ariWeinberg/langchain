[Document(page_content='Further reading[edit]
Bennett, Kristin P.; Campbell, Colin (2000). "Support Vector Machines: Hype or Hallelujah?" (PDF). SIGKDD Explorations. 2 (2): 1–13. doi:10.1145/380995.380999. S2CID\xa0207753020.
Cristianini, Nello; Shawe-Taylor, John (2000). An Introduction to Support Vector Machines and other kernel-based learning methods. Cambridge University Press. ISBN\xa00-521-78019-5.
Fradkin, Dmitriy; Muchnik, Ilya (2006). "Support Vector Machines for Classification" (PDF). In Abello, J.; Carmode, G. (eds.). Discrete Methods in Epidemiology. DIMACS Series in Discrete Mathematics and Theoretical Computer Science. Vol.\xa070. pp.\xa013–20.[citation not found]
Joachims, Thorsten (1998). "Text categorization with Support Vector Machines: Learning with many relevant features". In Nédellec, Claire; Rouveirol, Céline (eds.). "Machine Learning: ECML-98. Lecture Notes in Computer Science. Vol.\xa01398. Berlin, Heidelberg: Springer. p.\xa0137-142. doi:10.1007/BFb0026683. ISBN\xa0978-3-540-64417-0. S2CID\xa02427083.
Ivanciuc, Ovidiu (2007). "Applications of Support Vector Machines in Chemistry" (PDF). Reviews in Computational Chemistry. 23: 291–400. doi:10.1002/9780470116449.ch6. ISBN\xa09780470116449.
James, Gareth; Witten, Daniela; Hastie, Trevor; Tibshirani, Robert (2013). "Support Vector Machines" (PDF). An Introduction to Statistical Learning\xa0: with Applications in R. New York: Springer. pp.\xa0337–372. ISBN\xa0978-1-4614-7137-0.
Schölkopf, Bernhard; Smola, Alexander J. (2002). Learning with Kernels. Cambridge, MA: MIT Press. ISBN\xa00-262-19475-9.
Steinwart, Ingo; Christmann, Andreas (2008). Support Vector Machines. New York: Springer. ISBN\xa0978-0-387-77241-7.
Theodoridis, Sergios; Koutroumbas, Konstantinos (2009). Pattern Recognition (4th\xa0ed.). Academic Press. ISBN\xa0978-1-59749-272-0.
External links[edit]
libsvm, LIBSVM is a popular library of SVM learners
liblinear is a library for large linear classification including some SVMs
SVM light is a collection of software tools for learning and classification using SVM
SVMJS live demo Archived 2013-05-05 at the Wayback Machine is a GUI demo for JavaScript implementation of SVMs
Authority control databases: National 
France
BnF data
Germany
Israel
United States
Czech Republic





Retrieved from "https://en.wikipedia.org/w/index.php?title=Support_vector_machine&oldid=1198920933"
Categories: Support vector machinesClassification algorithmsStatistical classificationHidden categories: Articles with short descriptionShort description matches WikidataAll articles with unsourced statementsArticles with unsourced statements from September 2021Articles with unsourced statements from March 2018Articles with unsourced statements from December 2023Articles with unsourced statements from June 2013Articles with unsourced statements from March 2022Wikipedia articles needing clarification from November 2023Articles with unsourced statements from March 2017All articles with broken links to citationsWebarchive template wayback linksArticles with BNF identifiersArticles with BNFdata identifiersArticles with GND identifiersArticles with J9U identifiersArticles with LCCN identifiersArticles with NKC identifiers






 This page was last edited on 25 January 2024, at 11:25\xa0(UTC).
Text is available under the Creative Commons Attribution-ShareAlike License 4.0;
additional terms may apply.  By using this site, you agree to the Terms of Use and Privacy Policy. Wikipedia® is a registered trademark of the Wikimedia Foundation, Inc., a non-profit organization.


Privacy policy
About Wikipedia
Disclaimers
Contact Wikipedia
Code of Conduct
Developers
Statistics
Cookie statement
Mobile view













Toggle limited content width', metadata={'source': 'https://en.wikipedia.org/wiki/Support_vector_machine', 'title': 'Support vector machine - Wikipedia', 'language': 'en'}), Document(page_content='Support vector machine - Wikipedia



























Jump to content







Main menu





Main menu
move to sidebar
hide



\t\tNavigation
\t


Main pageContentsCurrent eventsRandom articleAbout WikipediaContact usDonate





\t\tContribute
\t


HelpLearn to editCommunity portalRecent changesUpload file





Languages

Language links are at the top of the page.



















Search











Search





























Create account

Log in








Personal tools





 Create account Log in





\t\tPages for logged out editors learn more



ContributionsTalk




























Contents
move to sidebar
hide




(Top)





1Motivation







2Applications







3History







4Linear SVM



Toggle Linear SVM subsection





4.1Hard-margin







4.2Soft-margin









5Nonlinear Kernels







6Computing the SVM classifier



Toggle Computing the SVM classifier subsection





6.1Primal







6.2Dual







6.3Kernel trick







6.4Modern methods





6.4.1Sub-gradient descent







6.4.2Coordinate descent











7Empirical risk minimization



Toggle Empirical risk minimization subsection





7.1Risk minimization







7.2Regularization and stability







7.3SVM and the hinge loss





7.3.1Target functions











8Properties



Toggle Properties subsection





8.1Parameter selection







8.2Issues









9Extensions



Toggle Extensions subsection





9.1Support vector clustering (SVC)







9.2Multiclass SVM







9.3Transductive support vector machines







9.4Structured SVM







9.5Regression







9.6Bayesian SVM









10Implementation







11See also







12References







13Further reading







14External links

















Toggle the table of contents







Support vector machine



33 languages




العربيةবাংলাБългарскиCatalàČeštinaDeutschEestiEspañolEuskaraفارسیFrançais한국어Bahasa IndonesiaItalianoעבריתLietuviųМакедонскиNederlands日本語ਪੰਜਾਬੀPolskiPortuguêsРусскийSlovenščinaСрпски / srpskiSuomiSvenskaதமிழ்TürkçeУкраїнськаTiếng Việt粵語中文

Edit links











ArticleTalk





English

















ReadEditView history







Tools





Tools
move to sidebar
hide



\t\tActions
\t


ReadEditView history





\t\tGeneral
\t


What links hereRelated changesUpload fileSpecial pagesPermanent linkPage informationCite this pageGet shortened URLWikidata item





\t\tPrint/export
\t


Download as PDFPrintable version





\t\tIn other projects
\t


Wikimedia Commons

























From Wikipedia, the free encyclopedia


Set of methods for supervised statistical learning
Part of a series onMachine learningand data mining
Paradigms
Supervised learning
Unsupervised learning
Online learning
Batch learning
Meta-learning
Semi-supervised learning
Self-supervised learning
Reinforcement learning
Rule-based learning
Quantum machine learning

Problems
Classification
Generative model
Regression
Clustering
dimension reduction
density estimation
Anomaly detection
Data Cleaning
AutoML
Association rules
Semantic analysis
Structured prediction
Feature engineering
Feature learning
Learning to rank
Grammar induction
Ontology learning
Multimodal learning

Supervised learning(classification\xa0• regression) 
Apprenticeship learning
Decision trees
Ensembles
Bagging
Boosting
Random forest
k-NN
Linear regression
Naive Bayes
Artificial neural networks
Logistic regression
Perceptron
Relevance vector machine (RVM)
Support vector machine (SVM)

Clustering
BIRCH
CURE
Hierarchical
k-means
Fuzzy
Expectation–maximization (EM)
DBSCAN
OPTICS
Mean shift

Dimensionality reduction
Factor analysis
CCA
ICA
LDA
NMF
PCA
PGD
t-SNE
SDL

Structured prediction
Graphical models
Bayes net
Conditional random field
Hidden Markov

Anomaly detection
RANSAC
k-NN
Local outlier factor
Isolation forest', metadata={'source': 'https://en.wikipedia.org/wiki/Support_vector_machine', 'title': 'Support vector machine - Wikipedia', 'language': 'en'}), Document(page_content='^ a b c Cortes, Corinna; Vapnik, Vladimir (1995). "Support-vector networks" (PDF). Machine Learning. 20 (3): 273–297. CiteSeerX\xa010.1.1.15.9362. doi:10.1007/BF00994018. S2CID\xa0206787478.

^ Ben-Hur, Asa; Horn, David; Siegelmann, Hava; Vapnik, Vladimir N. ""Support vector clustering" (2001);". Journal of Machine Learning Research. 2: 125–137.

^ "1.4. Support Vector Machines — scikit-learn 0.20.2 documentation". Archived from the original on 2017-11-08. Retrieved 2017-11-08.

^ Hastie, Trevor; Tibshirani, Robert; Friedman, Jerome (2008). The Elements of Statistical Learning\xa0: Data Mining, Inference, and Prediction (PDF) (Second\xa0ed.). New York: Springer. p.\xa0134.

^ a b c Boser, Bernhard E.; Guyon, Isabelle M.; Vapnik, Vladimir N. (1992). "A training algorithm for optimal margin classifiers". Proceedings of the fifth annual workshop on Computational learning theory – COLT \'92. p.\xa0144. CiteSeerX\xa010.1.1.21.3818. doi:10.1145/130385.130401. ISBN\xa0978-0897914970. S2CID\xa0207165665.

^ Press, William H.; Teukolsky, Saul A.; Vetterling, William T.; Flannery, Brian P. (2007). "Section 16.5. Support Vector Machines". Numerical Recipes: The Art of Scientific Computing (3rd\xa0ed.). New York: Cambridge University Press. ISBN\xa0978-0-521-88068-8. Archived from the original on 2011-08-11.

^ Joachims, Thorsten (1998). "Text categorization with Support Vector Machines: Learning with many relevant features". Machine Learning: ECML-98. Lecture Notes in Computer Science. Vol.\xa01398. Springer. pp.\xa0137–142. doi:10.1007/BFb0026683. ISBN\xa0978-3-540-64417-0.

^ Pradhan, Sameer S.; et\xa0al. (2 May 2004). Shallow Semantic Parsing using Support Vector Machines. Proceedings of the Human Language Technology Conference of the North American Chapter of the Association for Computational Linguistics: HLT-NAACL 2004. Association for Computational Linguistics. pp.\xa0233–240.

^ Vapnik, Vladimir N.: Invited Speaker. IPMU Information Processing and Management 2014).

^ Barghout, Lauren (2015). "Spatial-Taxon Information Granules as Used in Iterative Fuzzy-Decision-Making for Image Segmentation" (PDF). Granular Computing and Decision-Making. Studies in Big Data. Vol.\xa010. pp.\xa0285–318. doi:10.1007/978-3-319-16829-6_12. ISBN\xa0978-3-319-16828-9. S2CID\xa04154772. Archived from the original (PDF) on 2018-01-08. Retrieved 2018-01-08.

^ A. Maity (2016). "Supervised Classification of RADARSAT-2 Polarimetric Data for Different Land Features". arXiv:1608.00501 [cs.CV].

^ DeCoste, Dennis (2002). "Training Invariant Support Vector Machines" (PDF). Machine Learning. 46: 161–190. doi:10.1023/A:1012454411458. S2CID\xa085843.

^ Maitra, D. S.; Bhattacharya, U.; Parui, S. K. (August 2015). "CNN based common approach to handwritten character recognition of multiple scripts". 2015 13th International Conference on Document Analysis and Recognition (ICDAR). pp.\xa01021–1025. doi:10.1109/ICDAR.2015.7333916. ISBN\xa0978-1-4799-1805-8. S2CID\xa025739012.

^ Gaonkar, B.; Davatzikos, C. (2013). "Analytic estimation of statistical significance maps for support vector machine based multi-variate image analysis and classification". NeuroImage. 78: 270–283. doi:10.1016/j.neuroimage.2013.03.066. PMC\xa03767485. PMID\xa023583748.

^ Cuingnet, Rémi; Rosso, Charlotte; Chupin, Marie; Lehéricy, Stéphane; Dormont, Didier; Benali, Habib; Samson, Yves; Colliot, Olivier (2011). "Spatial regularization of SVM for the detection of diffusion alterations associated with stroke outcome" (PDF). Medical Image Analysis. 15 (5): 729–737. doi:10.1016/j.media.2011.05.007. PMID\xa021752695. Archived from the original (PDF) on 2018-12-22. Retrieved 2018-01-08.

^ Statnikov, Alexander; Hardin, Douglas; & Aliferis, Constantin; (2006); "Using SVM weight-based methods to identify causally relevant and non-causally relevant variables", Sign, 1, 4.

^ "Why is the SVM margin equal to 





2

‖

w

‖





{\\displaystyle {\\frac {2}{\\|\\mathbf {w} \\|}}}

". Mathematics Stack Exchange. 30 May 2015.', metadata={'source': 'https://en.wikipedia.org/wiki/Support_vector_machine', 'title': 'Support vector machine - Wikipedia', 'language': 'en'}), Document(page_content='^ "Why is the SVM margin equal to 





2

‖

w

‖





{\\displaystyle {\\frac {2}{\\|\\mathbf {w} \\|}}}

". Mathematics Stack Exchange. 30 May 2015.

^ Aizerman, Mark A.; Braverman, Emmanuel M. & Rozonoer, Lev I. (1964). "Theoretical foundations of the potential function method in pattern recognition learning". Automation and Remote Control. 25: 821–837.

^ Jin, Chi; Wang, Liwei (2012). Dimensionality dependent PAC-Bayes margin bound. Advances in Neural Information Processing Systems. CiteSeerX\xa010.1.1.420.3487. Archived from the original on 2015-04-02.

^ Shalev-Shwartz, Shai; Singer, Yoram; Srebro, Nathan; Cotter, Andrew (2010-10-16). "Pegasos: primal estimated sub-gradient solver for SVM". Mathematical Programming. 127 (1): 3–30. CiteSeerX\xa010.1.1.161.9629. doi:10.1007/s10107-010-0420-4. ISSN\xa00025-5610. S2CID\xa053306004.

^ Hsieh, Cho-Jui; Chang, Kai-Wei; Lin, Chih-Jen; Keerthi, S. Sathiya; Sundararajan, S. (2008-01-01). "A dual coordinate descent method for large-scale linear SVM". Proceedings of the 25th international conference on Machine learning - ICML \'08. New York, NY, USA: ACM. pp.\xa0408–415. CiteSeerX\xa010.1.1.149.5594. doi:10.1145/1390156.1390208. ISBN\xa0978-1-60558-205-4. S2CID\xa07880266.

^ Rosasco, Lorenzo; De Vito, Ernesto; Caponnetto, Andrea; Piana, Michele; Verri, Alessandro (2004-05-01). "Are Loss Functions All the Same?". Neural Computation. 16 (5): 1063–1076. CiteSeerX\xa010.1.1.109.6786. doi:10.1162/089976604773135104. ISSN\xa00899-7667. PMID\xa015070510. S2CID\xa011845688.

^ Meyer, David; Leisch, Friedrich; Hornik, Kurt (September 2003). "The support vector machine under test". Neurocomputing. 55 (1–2): 169–186. doi:10.1016/S0925-2312(03)00431-4.

^ Hsu, Chih-Wei; Chang, Chih-Chung & Lin, Chih-Jen (2003). A Practical Guide to Support Vector Classification (PDF) (Technical report). Department of Computer Science and Information Engineering, National Taiwan University. Archived (PDF) from the original on 2013-06-25.

^ a b Duan, Kai-Bo; Keerthi, S. Sathiya (2005). "Which Is the Best Multiclass SVM Method? An Empirical Study" (PDF). Multiple Classifier Systems. LNCS. Vol.\xa03541. pp.\xa0278–285. CiteSeerX\xa010.1.1.110.6789. doi:10.1007/11494683_28. ISBN\xa0978-3-540-26306-7. Archived from the original (PDF) on 2013-05-03. Retrieved 2019-07-18.

^ Hsu, Chih-Wei & Lin, Chih-Jen (2002). "A Comparison of Methods for Multiclass Support Vector Machines" (PDF). IEEE Transactions on Neural Networks. 13 (2): 415–25. doi:10.1109/72.991427. PMID\xa018244442. Archived from the original (PDF) on 2013-05-03. Retrieved 2018-01-08.

^ Platt, John; Cristianini, Nello; Shawe-Taylor, John (2000). "Large margin DAGs for multiclass classification" (PDF). In Solla, Sara A.; Leen, Todd K.; Müller, Klaus-Robert (eds.). Advances in Neural Information Processing Systems. MIT Press. pp.\xa0547–553. Archived (PDF) from the original on 2012-06-16.

^ Dietterich, Thomas G.; Bakiri, Ghulum (1995). "Solving Multiclass Learning Problems via Error-Correcting Output Codes" (PDF). Journal of Artificial Intelligence Research. 2: 263–286. arXiv:cs/9501101. Bibcode:1995cs........1101D. doi:10.1613/jair.105. S2CID\xa047109072. Archived (PDF) from the original on 2013-05-09.

^ Crammer, Koby & Singer, Yoram (2001). "On the Algorithmic Implementation of Multiclass Kernel-based Vector Machines" (PDF). Journal of Machine Learning Research. 2: 265–292. Archived (PDF) from the original on 2015-08-29.

^ Lee, Yoonkyung; Lin, Yi & Wahba, Grace (2001). "Multicategory Support Vector Machines" (PDF). Computing Science and Statistics. 33. Archived (PDF) from the original on 2013-06-17.

^ Lee, Yoonkyung; Lin, Yi; Wahba, Grace (2004). "Multicategory Support Vector Machines". Journal of the American Statistical Association. 99 (465): 67–81. CiteSeerX\xa010.1.1.22.1879. doi:10.1198/016214504000000098. S2CID\xa07066611.

^ Van den Burg, Gerrit J. J. & Groenen, Patrick J. F. (2016). "GenSVM: A Generalized Multiclass Support Vector Machine" (PDF). Journal of Machine Learning Research. 17 (224): 1–42.', metadata={'source': 'https://en.wikipedia.org/wiki/Support_vector_machine', 'title': 'Support vector machine - Wikipedia', 'language': 'en'})]