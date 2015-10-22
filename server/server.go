package server

import (
	"fmt"
	"log"
	"net/http"
)

func helloHandler(w http.ResponseWriter, r *http.Request) {
	log.Println("/")
	fmt.Fprintf(w, "Hello world!")
}

func RunServer() {
	log.Println("Running Go server")
	http.HandleFunc("/", helloHandler)
	if err := http.ListenAndServe(":8080", nil); err != nil {
		log.Fatalln(err)
	}
}

func Warmup() {
	log.Println("Warming up")
}
