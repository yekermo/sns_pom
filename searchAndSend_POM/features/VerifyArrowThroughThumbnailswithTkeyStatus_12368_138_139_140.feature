# Author: Karthik S, Photon
# Email ID : karthik.shanmugam@photoninfotech.net
# Created Date : April 25,2013
# Date Signed Off:

Feature: As a Sales Associate, I would like to be able to select different thumbnails and see the main product image switch to a larger view of that thumbnail

	#http://11.120.103.7/projects/unified_navigation/cards/12368

Scenario: Verifying Product Details & Views Screen by arrowing through thumbnails

#http://mingle/projects/oti/cards/138

 Given I am on POS simulator page
 When  I search for the "sample_data"
 Then I should be redirected to PDP page
 When I click on "T3 Product Details & Views"
 Then I should see top left thumbnail selected by default
 When I press the "right" arrow key "1" time
 Then I should see selected thumbnail notated by a yellow background and red border in PDP page
 	And I should see large picture at left matches the selected thumbnail at right
 
