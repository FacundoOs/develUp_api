class Assignment < ApplicationRecord
  DEFAULT_SKILLS = ["Javascript",
                    "Ruby",
                    "HTML-CSS",
                    "Node JS",
                    "React",
                    "Angular",
                    "React Native",
                    "Fullstack"]

  validates_intersection_of :skills, in: DEFAULT_SKILLS, message: "Invalid skill"

  validates_presence_of :title, :skills, :points, :budget
end