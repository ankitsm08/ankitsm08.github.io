# Set Jekyll environment to production
$env:JEKYLL_ENV="production"

# Optional: Print the environment to verify
Write-Host "JEKYLL_ENV is set to $env:JEKYLL_ENV"

# Run the Jekyll build command with custom configuration
bundle exec jekyll build --config _config.yml

# Set Jekyll environment to production
$env:JEKYLL_ENV="development"

# Optional: Print the environment to verify
Write-Host "JEKYLL_ENV is reverted back to $env:JEKYLL_ENV"