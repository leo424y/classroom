class CoursesController < ApplicationController
  @courses = Course.all
end
