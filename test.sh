# bash/--
echo "Running tests..."
curl -s --head https://www.google.com | grep "HTTP/1.1 200" || exit 1
echo "Tests passed!"