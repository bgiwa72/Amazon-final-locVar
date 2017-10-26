*** Settings ***
Documentation  Basic browser test case
Resource  ../Resources/AmazonApp.robot
Resource  ../Resources/Common.robot
Suite Setup  Configure Test Suite
Test Setup  Begin Web Test
Test Teardown  End Web Test
Suite Teardown  Cleaning Testing Data


*** Variables ***
${BROWSER} =  ff
${START_URL} =  https://www.amazon.com
${SEARCH_TERM} =  Lamborghini Gallardo


*** Test Cases ***

Logged out user should be able to search for products
    [Documentation]  This test verfies user should be able to search for products
    [Tags]  Search
    AmazonApp.Search for Products
    AmazonApp.Do Some Custom Thing

Logged out user should be able to view a product
    [Documentation]  This test verfies user should be able to view a product
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results

Logged out user should be able to add product to cart
    [Documentation]  This test verfies user should be able to add product to cart
    [Tags]  Smoke
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart

Logged out user should sign in to checkout
    [Documentation]  This test verfies user should sign into account to checkout
    [Tags]  Current
    AmazonApp.Search for Products
    AmazonApp.Select Product from Search Results
    AmazonApp.Add Product to Cart
    AmazonApp.Begin checkout
