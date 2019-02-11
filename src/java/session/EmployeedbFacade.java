/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.Employeedb;
import javax.ejb.Stateless;
import javax.persistence.EntityManager;
import javax.persistence.PersistenceContext;

/**
 *
 * @author nguye
 */
@Stateless
public class EmployeedbFacade extends AbstractFacade<Employeedb> implements EmployeedbFacadeLocal {

    @PersistenceContext(unitName = "MVCvsJPA_v2PU")
    private EntityManager em;

    @Override
    protected EntityManager getEntityManager() {
        return em;
    }

    public EmployeedbFacade() {
        super(Employeedb.class);
    }

    @Override
    public Employeedb getEmployeeById(long id) {
        return em.find(Employeedb.class, id);
        //throw new UnsupportedOperationException("Not supported yet."); //To change body of generated methods, choose Tools | Templates.
    }
    
}
