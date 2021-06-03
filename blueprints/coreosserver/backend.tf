terraform {
  backend "pg" {
    conn_str    = "postgres://hcmp:Hcmp@123@10.160.128.110/hcmp?sslmode=disable"
    }
}
