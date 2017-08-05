package main

import temp "github.com/jochasinga/go-weather"
import "fmt"

func main() {
	theTemp := temp.Now("Rotterdam")
	fmt.Printf("Hello there! The temperature in Rotterdam is %d degrees.\n", theTemp)
}
