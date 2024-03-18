package com.entity;
import javax.persistence.*;
public class cartitem {


    @Entity
    @Table(name = "cart_items")
    public class CartItem {
        public Long getId() {
            return id;
        }

        public void setId(Long id) {
            this.id = id;
        }

        public String getItemName() {
            return itemName;
        }

        public void setItemName(String itemName) {
            this.itemName = itemName;
        }

        public double getPrice() {
            return price;
        }

        public void setPrice(double price) {
            this.price = price;
        }

        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        private Long id;

        @Column
        private String itemName;

        @Column
        private double price;

        // Getters and setters
    }

}
