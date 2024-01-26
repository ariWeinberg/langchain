[Document(page_content='Support vector machine - Wikipedia



























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
Isolation forest', metadata={'source': 'https://en.wikipedia.org/wiki/Support_vector_machine', 'title': 'Support vector machine - Wikipedia', 'language': 'en'}), Document(page_content="Properties[edit]
SVMs belong to a family of generalized linear classifiers and can be interpreted as an extension of the perceptron. They can also be considered a special case of Tikhonov regularization. A special property is that they simultaneously minimize the empirical classification error and maximize the geometric margin; hence they are also known as maximum margin classifiers.
A comparison of the SVM to other classifiers has been made by Meyer, Leisch and Hornik.[23]

Parameter selection[edit]
The effectiveness of SVM depends on the selection of kernel, the kernel's parameters, and soft margin parameter 



λ


{\\displaystyle \\lambda }

.
A common choice is a Gaussian kernel, which has a single parameter 



γ


{\\displaystyle \\gamma }

. The best combination of 



λ


{\\displaystyle \\lambda }

 and 



γ


{\\displaystyle \\gamma }

 is often selected by a grid search with exponentially growing sequences of 



λ


{\\displaystyle \\lambda }

 and 



γ


{\\displaystyle \\gamma }

, for example, 



λ
∈
{

2

−
5


,

2

−
3


,
…
,

2

13


,

2

15


}


{\\displaystyle \\lambda \\in \\{2^{-5},2^{-3},\\dots ,2^{13},2^{15}\\}}

; 



γ
∈
{

2

−
15


,

2

−
13


,
…
,

2

1


,

2

3


}


{\\displaystyle \\gamma \\in \\{2^{-15},2^{-13},\\dots ,2^{1},2^{3}\\}}

. Typically, each combination of parameter choices is checked using cross validation, and the parameters with best cross-validation accuracy are picked. Alternatively, recent work in Bayesian optimization can be used to select 



λ


{\\displaystyle \\lambda }

 and 



γ


{\\displaystyle \\gamma }

 , often requiring the evaluation of far fewer parameter combinations than grid search. The final model, which is used for testing and for classifying new data, is then trained on the whole training set using the selected parameters.[24]

Issues[edit]
Potential drawbacks of the SVM include the following aspects:

Requires full labeling of input data
Uncalibrated class membership probabilities—SVM stems from Vapnik's theory which avoids estimating probabilities on finite data
The SVM is only directly applicable for two-class tasks. Therefore, algorithms that reduce the multi-class task to several binary problems have to be applied; see the multi-class SVM section.
Parameters of a solved model are difficult to interpret.
Extensions[edit]
Support vector clustering (SVC)[edit]
SVC is a similar method that also builds on kernel functions but is appropriate for unsupervised learning.[citation needed]

Multiclass SVM[edit]
Multiclass SVM aims to assign labels to instances by using support vector machines, where the labels are drawn from a finite set of several elements.
The dominant approach for doing so is to reduce the single multiclass problem into multiple binary classification problems.[25] Common methods for such reduction include:[25][26]

Building binary classifiers that distinguish between one of the labels and the rest (one-versus-all) or between every pair of classes (one-versus-one). Classification of new instances for the one-versus-all case is done by a winner-takes-all strategy, in which the classifier with the highest-output function assigns the class (it is important that the output functions be calibrated to produce comparable scores). For the one-versus-one approach, classification is done by a max-wins voting strategy, in which every classifier assigns the instance to one of the two classes, then the vote for the assigned class is increased by one vote, and finally the class with the most votes determines the instance classification.
Directed acyclic graph SVM (DAGSVM)[27]
Error-correcting output codes[28]
Crammer and Singer proposed a multiclass SVM method which casts the multiclass classification problem into a single optimization problem, rather than decomposing it into multiple binary classification problems.[29] See also Lee, Lin and Wahba[30][31] and Van den Burg and Groenen.[32]", metadata={'source': 'https://en.wikipedia.org/wiki/Support_vector_machine', 'title': 'Support vector machine - Wikipedia', 'language': 'en'}), Document(page_content='Applications[edit]
SVMs can be used to solve various real-world problems:

SVMs are helpful in text and hypertext categorization, as their application can significantly reduce the need for labeled training instances in both the standard inductive and transductive settings.[7] Some methods for shallow semantic parsing are based on support vector machines.[8]
Classification of images can also be performed using SVMs. Experimental results show that SVMs achieve significantly higher search accuracy than traditional query refinement schemes after just three to four rounds of relevance feedback. This is also true for image segmentation systems, including those using a modified version SVM that uses the privileged approach as suggested by Vapnik.[9][10]
Classification of satellite data like SAR data using supervised SVM.[11]
Hand-written characters can be recognized using SVM.[12][13]
The SVM algorithm has been widely applied in the biological and other sciences.  They have been used to classify proteins with up to 90% of the compounds classified correctly. Permutation tests based on SVM weights have been suggested as a mechanism for interpretation of SVM models.[14][15] Support vector machine weights have also been used to interpret SVM models in the past.[16] Posthoc interpretation of support vector machine models in order to identify features used by the model to make predictions is a relatively new area of research with special significance in the biological sciences.
History[edit]
The original SVM algorithm was invented by Vladimir N. Vapnik and Alexey Ya. Chervonenkis in 1964.[citation needed] In 1992, Bernhard Boser, Isabelle Guyon and Vladimir Vapnik suggested a way to create nonlinear classifiers by applying the kernel trick to maximum-margin hyperplanes.[5] The "soft margin" incarnation, as is commonly used in software packages, was proposed by Corinna Cortes and Vapnik in 1993 and published in 1995.[1]

Linear SVM[edit]
Maximum-margin hyperplane and margins for an SVM trained with samples from two classes. Samples on the margin are called the support vectors. Comment:  Plot as shown is incorrect!!  Please rotate all content in the graph by 90 degrees clockwise, and flip w to then point inward.
We are given a training dataset of 



n


{\\displaystyle n}

 points of the form




(


x


1


,

y

1


)
,
…
,
(


x


n


,

y

n


)
,


{\\displaystyle (\\mathbf {x} _{1},y_{1}),\\ldots ,(\\mathbf {x} _{n},y_{n}),}


where the 




y

i




{\\displaystyle y_{i}}

 are either 1 or −1, each indicating the class to which the point 





x


i




{\\displaystyle \\mathbf {x} _{i}}

 belongs. Each 





x


i




{\\displaystyle \\mathbf {x} _{i}}

 is a 



p


{\\displaystyle p}

-dimensional real vector. We want to find the "maximum-margin hyperplane" that divides the group of points 





x


i




{\\displaystyle \\mathbf {x} _{i}}

 for which 




y

i


=
1


{\\displaystyle y_{i}=1}

 from the group of points for which 




y

i


=
−
1


{\\displaystyle y_{i}=-1}

, which is defined so that the distance between the hyperplane and the nearest point 





x


i




{\\displaystyle \\mathbf {x} _{i}}

 from either group is maximized.
Any hyperplane can be written as the set of points 




x



{\\displaystyle \\mathbf {x} }

 satisfying






w



T




x

−
b
=
0
,


{\\displaystyle \\mathbf {w} ^{\\mathsf {T}}\\mathbf {x} -b=0,}


where 




w



{\\displaystyle \\mathbf {w} }

 is the (not necessarily normalized) normal vector to the hyperplane. This is much like Hesse normal form, except that 




w



{\\displaystyle \\mathbf {w} }

 is not necessarily a unit vector. The parameter 






b

‖

w

‖






{\\displaystyle {\\tfrac {b}{\\|\\mathbf {w} \\|}}}

 determines the offset of the hyperplane from the origin along the normal vector 




w



{\\displaystyle \\mathbf {w} }

.', metadata={'source': 'https://en.wikipedia.org/wiki/Support_vector_machine', 'title': 'Support vector machine - Wikipedia', 'language': 'en'}), Document(page_content='Further reading[edit]
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













Toggle limited content width', metadata={'source': 'https://en.wikipedia.org/wiki/Support_vector_machine', 'title': 'Support vector machine - Wikipedia', 'language': 'en'})]