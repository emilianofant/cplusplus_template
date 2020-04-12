#include "catch2/catch.hpp"
#include "Math.h"

//  Scenario: Math library do math!
//      Given: A Math instance class with a defined number 7
//      When: The instance is ready to process
//      Then: The add function adds

Math* math;

SCENARIO( "Math library do math!", "[math]" ) {

    GIVEN( "A Math instance class with a defined number 7" ) {
        math = new Math(7);

        REQUIRE( math->getMyNumber() == 7 );

        WHEN( "The instance is ready to process" ) {
            math->state = "Processing";

            THEN( "The add function adds" ) {
                REQUIRE( math->Add(3) == 10 );
            }
        }
    }
}