package com.entity;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class newbook {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private  int book_Id;
    private  String bookname;
    private String bookImage;
    private  String author;
    private int book_price;
    private String book_description;


    public int getBook_Id() {
        return book_Id;
    }

    public void setBook_Id(int book_Id) {
        this.book_Id = book_Id;
    }

    public String getBookname() {
        return bookname;
    }

    public void setBookname(String bookname) {
        this.bookname = bookname;
    }

    public String getBookImage() {
        return bookImage;
    }

    public void setBookImage(String bookImage) {
        this.bookImage = bookImage;
    }

    public String getAuthor() {
        return author;
    }

    public void setAuthor(String author) {
        this.author = author;
    }

    public int getBook_price() {
        return book_price;
    }

    public void setBook_price(int book_price) {
        this.book_price = book_price;
    }

    public String getBook_description() {
        return book_description;
    }

    public void setBook_description(String book_description) {
        this.book_description = book_description;
    }
}
