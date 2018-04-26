#Codebook for U.S. President Returns 1976–2016

The data file `1976-2016-president` contains constituency (state-level) returns for elections to the U.S. presidency from 1976 to 2016.  The data source is the document "[Statistics of the Congressional Election](http://history.house.gov/Institution/Election-Statistics/Election-Statistics/)," published biennially by the Clerk of the U.S. House of Representatives.

##Variables 
The variables are listed as they appear in the data file.  

###year
 - **Description**: year in which election was held
 
---------------

###office
  - **Description**: U.S. President
  
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

### candidate
  - **Description**: name of the candidate
  - **Note**: The name is as it appears in the House Clerk report.

----------------
	
### party
- **Description**: party of the candidate (always entirely lowercase)
  - **Note**: Parties are as they appear in the House Clerk report. In states that allow candidates to appear on multiple party lines, separate vote totals are indicated for each party.  Therefore, for analysis that involves candidate totals, it will be necessary to aggregate across all party lines within a district.  For analysis that focuses on two-party vote totals, it will be necessary to account for major party candidates who receive votes under multiple party labels. Minnesota party labels are given as they appear on the Minnesota ballots. Future versions of this file will include codes for candidates who are endorsed by major parties, regardless of the party label under which they receive votes.
	
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
- **Note**: Massachusetts and New York returns often contains entries for "blank," "other/blank," "scattering/blank," and the like.  For analyses that depend on an accurate count of votes cast for candidates (rather than turnout, including blank ballots), consult state returns.  Future versions of this dataset will distinguish blank ballots from votes cast for scattering candidates.

----------------

### totalvotes
 - **Description**: total number of votes cast for this election

----------------

## Version  
 - 20171101