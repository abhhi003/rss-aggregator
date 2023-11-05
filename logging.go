package main

import (
	"io"
	"log"
	"os"
)

func configureLogging() {
	logFile := os.Getenv("LOG_FILE")
	// file, err := os.OpenFile(logFile, os.O_APPEND|os.O_CREATE|os.O_WRONLY, 0666)
	file, err := os.OpenFile(logFile, os.O_CREATE|os.O_APPEND|os.O_RDWR, 0644)
	if err != nil {
		log.Fatal(err)
	}
	// defer file.Close()
	mw := io.MultiWriter(os.Stdout, file)
	log.SetOutput(mw)
	log.SetFlags(log.Ldate | log.Ltime | log.Lshortfile | log.LstdFlags)
	log.Println("-------------------------------------------")
	log.Println("=========== RSS - AGGREGATOR ==============")
	log.Println("-------------------------------------------")
	log.Println("Logging configured.")
}
