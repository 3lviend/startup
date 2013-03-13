# Load the rails application
require File.expand_path('../application', __FILE__)

# Initialize the rails application
StartupJob::Application.initialize!

#paginate information
PERPAGE = 5

#list of job information
TYPE = ["freelance", "full-time", "internship", "part-time", "temporary"]
SALARY = ["0 - 1,000", "1,001 - 2,000", "2,001 - 4,000", "4,001 - 7,000", "7,001 - 10,000", "above 10,000"]
