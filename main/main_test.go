package main

import (
	"os"
	"testing"
)

// Integration Test
func TestMain(t *testing.T) {
	os.Args = []string{"main", "test.txt"}
	main()
}
