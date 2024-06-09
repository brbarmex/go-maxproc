package main

import (
	"fmt"
	"math/rand"
	"net/http"
	"runtime"
	"time"

	"github.com/gin-gonic/gin"
	_ "go.uber.org/automaxprocs"
)

// Purchase struct para o payload
type Purchase struct {
	ProductID    string  `json:"product_id"`
	CustomerID   string  `json:"customer_id"`
	Quantity     int     `json:"quantity"`
	TotalPrice   float64 `json:"total_price"`
	PurchaseDate string  `json:"purchase_date"`
}

func main() {

	fmt.Println("Runtime CPU >>> ", runtime.NumCPU())
	fmt.Println("GOMAXPROCS  >>> ", runtime.GOMAXPROCS(0))

	r := gin.Default()

	r.POST("/register", func(c *gin.Context) {

		go func() {
			var purchase Purchase

			// Bind JSON recebido ao struct Purchase
			if err := c.ShouldBindJSON(&purchase); err != nil {
				c.JSON(http.StatusBadRequest, gin.H{"error": err.Error()})
				return
			}

			// Gerar um delay aleatório entre 10 a 20 segundos
			delay := time.Duration(rand.Intn(11)+10) * time.Second
			time.Sleep(delay)
		}()

		delay := time.Duration(rand.Intn(11)+10) * time.Second
		time.Sleep(delay)		

		// Retornar status 202 (Accepted)
		c.JSON(http.StatusAccepted, gin.H{"status": "accepted"})
	})

	r.Run(":8080") // Rodar o servidor na porta 8080
}
