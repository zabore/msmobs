# One-time setup log for msmobs — NOT meant to be re-run as a whole.
# Individual use_* calls (use_package(), use_r(), use_test(), etc.)
# are safe to re-run/repeat; create_package(), use_git(), use_github(),
# and use_github_action() are not.
library(usethis)

# One-time setup to create a new token
git_vaccinate()
create_github_token()
gitcreds::gitcreds_set()

# Create the package skeleton
create_package("C:\\Users\\ZABORE2\\repos\\msmobs")

# Put it under version control and push to GitHub
use_git()
use_github(private = TRUE)

# Set up a directory to save this script
use_directory("dev")
use_build_ignore("dev")

# Create license
use_mit_license("Emily Zabor")

# Documentation workflow
use_roxygen_md()
use_package_doc()
use_readme_rmd()

# Setup testing infrastructure
use_testthat()

# Setup continuous integration - R CMD check and code coverage
use_github_action("check-standard")
usethis::use_github_action("test-coverage")

# Changelog and contribution scaffolding
usethis::use_news_md()
usethis::use_code_of_conduct("emily.zabor@gmail.com")
usethis::use_lifecycle_badge("experimental")

# Check fail without any actual tests, set a placeholder
usethis::use_test("placeholder")
