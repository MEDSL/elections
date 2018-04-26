
#Codebook for U.S. House Returns 1976–2016

The data file `1976-2016-house` contains constituency (district) returns for elections to the U.S. House of Representatives from 1976 to 2016.  The data source is the document "[Statistics of the Congressional Election](http://history.house.gov/Institution/Election-Statistics/Election-Statistics/)," published biennially by the Clerk of the U.S. House of Representatives.

##Variables 
The variables are listed as they appear in the data file.  

###year
 - **Description**: year in which election was held
 
---------------

###office
  - **Description**: U.S. House (constant)
  
---------------

###state
 - **Description**: state name

 ---------------
 
###state_po
 - **Description**: U.S. postal code state abbreviation

 ---------------
 
###state_fips
 - **Description**: State FIPS code

----------------

###state_cen
 - **Description**: U.S. Census state code

 ---------------
 
### state_ic
 - **Description**: ICPSR state code

 --------------- 
 
### district
 - **Description**: district number
 - ****Note****:	At-large districts are coded as 0 (zero).

----------------

### stage
 - **Description**: electoral stage
 - **Coding**: 

|:--|:--|
| "gen" | general elections |
| "pri" | primary elections |

 - **Note**: Only appears in special cases. Consult original House Clerk report for these cases.

----------------

### special
- **Description**: special election
- Coding  

|:--|:--|
| "TRUE" | special elections |
| "FALSE" | regular elections |

----------------

### candidate
  - **Description**: name of the candidate
  - **Note**: The name is as it appears in the House Clerk report.

----------------

### party
- **Description**: party of the candidate (always entirely lowercase)
  - **Note**: Parties are as they appear in the House Clerk report.  In states that allow candidates to appear on multiple party lines, separate vote totals are indicated for each party.  Therefore, for analysis that involves candidate totals, it will be necessary to aggregate across all party lines within a district.  For analysis that focuses on two-party vote totals, it will be necessary to account for major party candidates who receive votes under multiple party labels. Minnesota party labels are given as they appear on the  Minnesota ballots. Future versions of this file will include codes for candidates who are endorsed by major parties, regardless of the party label under which they receive votes.
	
----------------
	
### writein
- **Description**: vote totals associated with write-in candidates
- Coding:

|:--|:--|
| "TRUE" | write-in candidates |
| "FALSE" | non-write-in candidates |

----------------
	
### candidatevotes 
 - **Description**: votes received by this candidate for this particular party

----------------

### totalvotes
 - **Description**: total number of votes cast for this election

----------------

## Version 
- 20171101
