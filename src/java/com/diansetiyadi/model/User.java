/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.diansetiyadi.model;

import java.io.Serializable;
import java.util.List;
import javax.persistence.Basic;
import javax.persistence.CascadeType;
import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.NamedQueries;
import javax.persistence.NamedQuery;
import javax.persistence.OneToMany;
import javax.persistence.Table;

/**
 *
 * @author user
 */
@Entity
@Table(name = "APPUser")
@NamedQueries({
    @NamedQuery(name = "User.findAll", query = "SELECT c FROM User c")
    , @NamedQuery(name = "User.findByUserId", query = "SELECT c FROM User c WHERE c.userId = :userId")
    , @NamedQuery(name = "User.findByFirstName", query = "SELECT c FROM User c WHERE c.firstName = :firstbame")
    , @NamedQuery(name = "User.findByKota", query = "SELECT c FROM User c WHERE c.kota = :kota")
    , @NamedQuery(name = "User.findByKecamatan", query = "SELECT c FROM User c WHERE c.kecamatan = :kecamatan")
    , @NamedQuery(name = "User.findByEmail", query = "SELECT c FROM User c WHERE c.email = :email")
})
public class User implements Serializable {

    /**
     * @return the email
     */
    public String getEmail() {
        return email;
    }

    /**
     * @param email the email to set
     */
    public void setEmail(String email) {
        this.email = email;
    }

    /**
     * @return the noHp
     */
    public String getNoHp() {
        return noHp;
    }

    /**
     * @param noHp the noHp to set
     */
    public void setNoHp(String noHp) {
        this.noHp = noHp;
    }

    /**
     * @return the alamatJalan
     */
    public String getAlamatJalan() {
        return alamatJalan;
    }

    /**
     * @param alamatJalan the alamatJalan to set
     */
    public void setAlamatJalan(String alamatJalan) {
        this.alamatJalan = alamatJalan;
    }

    /**
     * @return the kota
     */
    public String getKota() {
        return kota;
    }

    /**
     * @param kota the kota to set
     */
    public void setKota(String kota) {
        this.kota = kota;
    }

    /**
     * @return the kecamatan
     */
    public String getKecamatan() {
        return kecamatan;
    }

    /**
     * @param kecamatan the kecamatan to set
     */
    public void setKecamatan(String kecamatan) {
        this.kecamatan = kecamatan;
    }

    private static long serialVersionUID = 1L;
    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    @Basic(optional = false)
    @Column(name = "USER_ID")
    private Integer userId;
    @Column(name = "FIRSTNAME")
    private String firstName;
    @Column(name = "LASTNAME")
    private String lastName;
    @Column(name = "USERNAME")
    private String username;
    @Column(name = "PASSWORD")
    private String password;
    @Column(name = "EMAIL")
    private String email;
    @Column(name = "NOHP")
    private String noHp;
    @Column(name = "ALAMATJALAN")
    private String alamatJalan;
    @Column(name = "KOTA")
    private String kota;
    @Column(name = "KECAMATAN")
    private String kecamatan;

    @OneToMany(cascade = CascadeType.ALL, mappedBy = "userId")
    private List<PurchaseOrder> purchaseOrderList;

    public Integer getUserId() {
        return userId;
    }

    public void seUserId(Integer userid) {
        this.userId = userid;
    }

    @Override
    public int hashCode() {
        int hash = 0;
        hash += (userId != null ? userId.hashCode() : 0);
        return hash;
    }

    @Override
    public boolean equals(Object object) {
        // TODO: Warning - this method won't work in the case the id fields are not set
        if (!(object instanceof User)) {
            return false;
        }
        User other = (User) object;
        if ((this.userId == null && other.userId != null) || (this.userId != null && !this.userId.equals(other.userId))) {
            return false;
        }
        return true;
    }

    @Override
    public String toString() {
        return "com.valensi.model.User[ userId=" + userId + " ]";
    }

    /**
     * @return the serialVersionUID
     */
    public static long getSerialVersionUID() {
        return serialVersionUID;
    }

    /**
     * @param aSerialVersionUID the serialVersionUID to set
     */
    public static void setSerialVersionUID(long aSerialVersionUID) {
        serialVersionUID = aSerialVersionUID;
    }

    /**
     * @return the firstName
     */
    public String getFirstName() {
        return firstName;
    }

    /**
     * @param firstName the firstName to set
     */
    public void setFirstName(String firstName) {
        this.firstName = firstName;
    }

    /**
     * @return the lastName
     */
    public String getLastName() {
        return lastName;
    }

    /**
     * @param lastName the lastName to set
     */
    public void setLastName(String lastName) {
        this.lastName = lastName;
    }

    /**
     * @return the username
     */
    public String getUsername() {
        return username;
    }

    /**
     * @param username the username to set
     */
    public void setUsername(String username) {
        this.username = username;
    }

    /**
     * @return the password
     */
    public String getPassword() {
        return password;
    }

    /**
     * @param password the password to set
     */
    public void setPassword(String password) {
        this.password = password;
    }

    /**
     * @return the purchaseOrderList
     */
    public List<PurchaseOrder> getPurchaseOrderList() {
        return purchaseOrderList;
    }

    /**
     * @param purchaseOrderList the purchaseOrderList to set
     */
    public void setPurchaseOrderList(List<PurchaseOrder> purchaseOrderList) {
        this.purchaseOrderList = purchaseOrderList;
    }

}
