package mecanico.dao;

import java.util.List;

import mecanico.entity.Customer;

public interface UserDAO {
	public List<Customer> getCoustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);

}
