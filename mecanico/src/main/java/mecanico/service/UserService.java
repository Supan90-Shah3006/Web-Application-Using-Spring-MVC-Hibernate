package mecanico.service;

import java.util.List;

import mecanico.entity.Customer;

public interface UserService {

	public List<Customer> getCustomers();

	public void saveCustomer(Customer theCustomer);

	public Customer getCustomer(int theId);

	public void deleteCustomer(int theId);
}
