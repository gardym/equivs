source 'https://supermarket.chef.io'

metadata

cookbook 'apt'
cookbook 'compat_resource'

# If we need additional Chef for the integration tests, we must tell Berkshelf
# where to find it
group :test do
  cookbook 'equivs', path: '.'
end
