FROM rocker/verse:3.5.1

# My sales report required an additional latex package called `eurosym`.
# RUN tlmgr install eurosym

# Set a user and the working directory
USER rstudio
WORKDIR /report

# Set the container to run `Rscript --vanilla ` by default
ENTRYPOINT ["/usr/local/bin/Rscript", "--vanilla"]

# Set the `example_report.R data.csv` as the default script to run with ENTRYPOINT's Rscript
CMD ["example_report.R", "data.csv"]
