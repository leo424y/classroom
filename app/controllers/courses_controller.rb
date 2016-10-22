class CoursesController < ApplicationController
  # fix ActionNotFound
  def index
    @courses = Course.all
  end
end
