class CoursesController < ApplicationController
  # fix ActionNotFound
  @courses = Course.all
end
