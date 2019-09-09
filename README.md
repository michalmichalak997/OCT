# OCT
An application OCT (Orientation Computing Tool) computes the local orientations of a geological contact using Delaunay triangulation. This code is related to the following paper accepted for publication in Computers&Geosciences:
"Using Delaunay triangulation and cluster analysis to determine the orientation of a sub-horizontal and noise including contact in Kraków-Silesian Homocline, Poland"
Authors: 
1. Michał Michalak (mimichalak@us.edu.pl), Department of Applied Geology, Faculty of Earth Sciences, University of Silesia in Katowice, Poland.
2. Waldemar Bardziński (waldemar.bardzinski@us.edu.pl), Department of Fundamental Geology, Faculty of Earth Sciences, University of Silesia in Katowice, Poland.
3. Lesław Teper (leslaw.teper@us.edu.pl), Department of Applied Geology, Faculty of Earth Sciences, University of Silesia in Katowice, Poland.
4. Zbigniew Małolepszy (zbigniew.malolepszy@pgi.gov.pl), Polish Geological Institute – National Research Institute Upper Silesian Branch.

Abstract
In this work, we combined a three-point problem with Delaunay triangulation to determine the average orientation of a sub-horizontal contact lying within the Kraków-Silesian Homocline, Poland. This contact was assumed to represent the regional trend due to the conformable or sub-conformable relationships between the geological units. The approach presented involved computing the local orientation of Delaunay triangles that represented the investigated surface. A C++ application was developed to compute the required figures, to which we added computer code that is open source and freely available. The pre-processing stage required the removal of collinear configurations that contributed to floating-point arithmetic inaccuracies. We then assigned dip angle and direction to the Delaunay triangles and performed a stereographic projection of the unit normal vectors. For statistical analysis, we conducted inertia moment analysis and followed the mean vector approach. As a part of exploring the orientation data—and as a way of achieving better consistency between stereonet results—we used several clustering algorithms: k-means, k-medoids and hierarchical. We indicated that the Euclidean distance could be beneficial for extracting the dominant orientation calculated for the sub-population assumed to represent the regional trend. We concluded that considering four clusters and the combination of the Euclidean distance and Ward linkage methods gave us the best extraction results for the dominant orientation. We identified limitations to the proposed approach relating to the lack of statistical information on the calculated orientations and suggested potential extensions to the research, including mixture models and investigation of spatial patterns.




%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%
%   ORIENTATION COMPUTING TOOL is distributed in the hope that it will be useful,
%   but WITHOUT ANY WARRANTY.  See the
%   GNU General Public License for more details.
%
% AUTHOR
%   Michalak Michał  mimichalak@us.edu.pl
%
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

