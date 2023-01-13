require "test_helper"

class GeometriesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @geometry = geometries(:one)
  end

  test "should get index" do
    get geometries_url
    assert_response :success
  end

  test "should get new" do
    get new_geometry_url
    assert_response :success
  end

  test "should create geometry" do
    assert_difference("Geometry.count") do
      post geometries_url, params: { geometry: { descripton: @geometry.descripton, dx: @geometry.dx, dy: @geometry.dy, dz: @geometry.dz, name: @geometry.name, x: @geometry.x, y: @geometry.y, z: @geometry.z } }
    end

    assert_redirected_to geometry_url(Geometry.last)
  end

  test "should show geometry" do
    get geometry_url(@geometry)
    assert_response :success
  end

  test "should get edit" do
    get edit_geometry_url(@geometry)
    assert_response :success
  end

  test "should update geometry" do
    patch geometry_url(@geometry), params: { geometry: { descripton: @geometry.descripton, dx: @geometry.dx, dy: @geometry.dy, dz: @geometry.dz, name: @geometry.name, x: @geometry.x, y: @geometry.y, z: @geometry.z } }
    assert_redirected_to geometry_url(@geometry)
  end

  test "should destroy geometry" do
    assert_difference("Geometry.count", -1) do
      delete geometry_url(@geometry)
    end

    assert_redirected_to geometries_url
  end
end
