/*
 * ECE 461 - Spring 2023 - Project 2
 *
 * API for ECE 461/Spring 2023/Project 2: A Trustworthy Module Registry
 *
 * API version: 3.0.2
 * Contact: davisjam@purdue.edu
 * Generated by: Swagger Codegen (https://github.com/swagger-api/swagger-codegen.git)
 */
package swagger

// The \"Name\" and \"Version\" are used as a unique identifier pair when uploading a package.  The \"ID\" is used as an internal identifier for interacting with existing packages.
type PackageMetadata struct {

	Name string `json:"Name"`
	// Package version
	Version string `json:"Version"`

	ID string `json:"ID"`
}
