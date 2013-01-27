
system "echo 'drop database metricminerdsl; create database metricminerdsl; use metricminerdsl;' | mysql -u root"
system "mysql -u root metricminerdsl < db/schema.sql"

puts "initial data imported"

