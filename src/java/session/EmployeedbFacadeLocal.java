/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package session;

import entity.Employeedb;
import java.util.List;
import javax.ejb.Local;

/**
 *
 * @author nguye
 */
@Local
public interface EmployeedbFacadeLocal {

    void create(Employeedb employeedb);

    void edit(Employeedb employeedb);

    void remove(Employeedb employeedb);

    Employeedb find(Object id);

    List<Employeedb> findAll();

    List<Employeedb> findRange(int[] range);

    int count();
   
    Employeedb getEmployeeById(long id);
    
}
