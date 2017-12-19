/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.diansetiyadi.dao;

import com.diansetiyadi.model.Product;
import java.util.List;
import java.util.logging.Logger;
import javax.persistence.EntityManager;
import javax.persistence.EntityManagerFactory;
import javax.persistence.PersistenceUnit;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

/**
 *
 * @author user
 */
@Repository
@Transactional
public class ProductService {

    static final Logger logger = Logger.getLogger(ProductService.class.getName());

    @PersistenceUnit
    EntityManagerFactory emf;

    private EntityManager em;

    public List<Product> findAll() {
        em = emf.createEntityManager();
        List<Product> product;
        product = this.em.createNamedQuery("Product.findAll").getResultList();
        return product;
    }
    
    
    public Product findById(Integer productId) {
        em = emf.createEntityManager();
        return em.find(Product.class, productId);
    }

    @Transactional
    public void saveProduct(Product product) {
        em = emf.createEntityManager();
        em.getTransaction().begin();
        em.persist(product);
        em.getTransaction().commit();
        em.close();

    }

    /**
     * @return the em
     */
    public EntityManager getEm() {
        return em;
    }

    /**
     * @param em the em to set
     */
    public void setEm(EntityManager em) {
        this.em = em;
    }
}
