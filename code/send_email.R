# Load blastula package
library(blastula)

# Create file containing credentials for email account
create_smtp_creds_file(file = "mgthrow",
                       user = "gaunt_throwaway_123@outlook.com",
                       provider = "outlook",
                       use_ssl = TRUE)

# Generate the email object using blastula
my_email_object <- render_email("analysis/blastula_email.rmd")

# Send email
smtp_send(my_email_object,
          from = "gaunt_throwaway_123@outlook.com",
          to = "merkaberk91@yahoo.com",
          subject = paste0("Email from blastula on ", Sys.Date()),
          credentials = creds_file("mgthrow"))
