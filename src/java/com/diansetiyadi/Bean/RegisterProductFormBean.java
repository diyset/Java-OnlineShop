/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.diansetiyadi.Bean;

/**
 *
 * @author user
 */
public class RegisterProductFormBean {
//    private String productId;
    private String purchaseCost;
    private String quantityOnHand;
    private String available;
    private String description;
    private String imagepath;


    /**
     * @return the available
     */
    public String getAvailable() {
        return available;
    }

    /**
     * @param available the available to set
     */
    public void setAvailable(String available) {
        this.available = available;
    }

    /**
     * @return the description
     */
    public String getDescription() {
        return description;
    }

    /**
     * @param description the description to set
     */
    public void setDescription(String description) {
        this.description = description;
    }

    /**
     * @return the purchaseCost
     */
    public String getPurchaseCost() {
        return purchaseCost;
    }

    /**
     * @param purchaseCost the purchaseCost to set
     */
    public void setPurchaseCost(String purchaseCost) {
        this.purchaseCost = purchaseCost;
    }

    /**
     * @return the quantityOnHand
     */
    public String getQuantityOnHand() {
        return quantityOnHand;
    }

    /**
     * @param quantityOnHand the quantityOnHand to set
     */
    public void setQuantityOnHand(String quantityOnHand) {
        this.quantityOnHand = quantityOnHand;
    }

    /**
     * @return the imagepath
     */
    public String getImagepath() {
        return imagepath;
    }

    /**
     * @param imagepath the imagepath to set
     */
    public void setImagepath(String imagepath) {
        this.imagepath = imagepath;
    }

    
}
