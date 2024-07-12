# Instruction

## 0. Install Microsoft Visual Studio and CGAL library. As for the latter, the instructions regarding installing can be found here:
https://www.cgal.org/download/windows.html

## 1. Prepare your input data in the following format:

Example 1.
X | Y| Z | id
--- | --- | --- | ---
| 919016.62 | 254566.13 | 196.04 | 1 |
| 919027.75 | 252559.20 | 237.19 | 2 |
| 919042.29 | 253658.44 | 231.49 | 3 |
| 919081.62 | 253445.45 | 234.78 | 4 |
| 919094.57 | 253812.40 | 227.02 | 5 |

Example 2.
X | Y| Z1 | Z2 | id
--- | --- | --- | --- | ---
| 919016.62 | 254566.13 | 196.04 | 189.09 | 1 |
| 919027.75 | 252559.20 | 237.19 | 121.30 | 2 |
| 919042.29 | 253658.44 | 231.49 | 201.11 | 3 |
| 919081.62 | 253445.45 | 234.78 | 211.98 | 4 |
| 919094.57 | 253812.40 | 227.02 | 234.30 | 5 |



Note: 
-X corresponds to latitude, Y corresponds to longitude, Z corresponds to elevation, id corresponds to the number of point
-the first example contains one surface and the second example contains two surfaces
-the above set contains five boreholes, each defined by XYZ coordinates
-the last column must be the index
-the Cartesian coordinates XYZ are separated by space
-the use of decimal point within a coordinate is allowed
-remove header (X Y Z id)
-the file should be saved as .txt


## 2. Open Microsoft Visual Studio, paste the code (SourceCode) and run it.

## 3. Type in the path of your input data and press ENTER. The following format should be applied:
C:\dev\CGAL-4.8\examples\Triangulation_2\JurassicBottomInput.txt

## 4. Type in the path of the output and press ENTER. The following format should be applied:
C:\dev\CGAL-4.8\examples\Triangulation_2\JurassicBottomOutput.txt

## 5. Your output files are ready for further processing.
