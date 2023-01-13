require "application_system_test_case"

class GeometriesTest < ApplicationSystemTestCase
  setup do
    @geometry = geometries(:one)
  end

  test "visiting the index" do
    visit geometries_url
    assert_selector "h1", text: "Geometries"
  end

  test "should create geometry" do
    visit geometries_url
    click_on "New geometry"

    fill_in "Descripton", with: @geometry.descripton
    fill_in "Dx", with: @geometry.dx
    fill_in "Dy", with: @geometry.dy
    fill_in "Dz", with: @geometry.dz
    fill_in "Name", with: @geometry.name
    fill_in "X", with: @geometry.x
    fill_in "Y", with: @geometry.y
    fill_in "Z", with: @geometry.z
    click_on "Create Geometry"

    assert_text "Geometry was successfully created"
    click_on "Back"
  end

  test "should update Geometry" do
    visit geometry_url(@geometry)
    click_on "Edit this geometry", match: :first

    fill_in "Descripton", with: @geometry.descripton
    fill_in "Dx", with: @geometry.dx
    fill_in "Dy", with: @geometry.dy
    fill_in "Dz", with: @geometry.dz
    fill_in "Name", with: @geometry.name
    fill_in "X", with: @geometry.x
    fill_in "Y", with: @geometry.y
    fill_in "Z", with: @geometry.z
    click_on "Update Geometry"

    assert_text "Geometry was successfully updated"
    click_on "Back"
  end

  test "should destroy Geometry" do
    visit geometry_url(@geometry)
    click_on "Destroy this geometry", match: :first

    assert_text "Geometry was successfully destroyed"
  end
end
