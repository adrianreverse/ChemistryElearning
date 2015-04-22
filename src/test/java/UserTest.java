import static org.junit.Assert.assertEquals;
import static org.junit.Assert.assertFalse;
import static org.junit.Assert.assertTrue;
import junitparams.JUnitParamsRunner;
import junitparams.Parameters;

import org.junit.Before;
import org.junit.FixMethodOrder;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.junit.runners.MethodSorters;

import pl.app.elearning.domain.UserAccount;

@RunWith(JUnitParamsRunner.class)
@FixMethodOrder(MethodSorters.NAME_ASCENDING)
public class UserTest {

	private UserAccount user;

	@Before
	public void setUp() {
		user = new UserAccount();
	}

	private static final Object[] getInvalidStringAttribute() {
		return new String[][] { { "" }, { null } };
	}

	@Test(expected = IllegalArgumentException.class)
	@Parameters(method = "getInvalidStringAttribute")
	public void aSetterShouldThrowsIAEForInvalidLogin(String invalidLogin) {
		user.setLogin(invalidLogin);
	}

	@Test(expected = IllegalArgumentException.class)
	@Parameters(method = "getInvalidStringAttribute")
	public void bSetterShouldThrowsIAEForInvalidPassword(String invalidPassword) {
		user.setPassword(invalidPassword);
	}

	@Test(expected = IllegalArgumentException.class)
	@Parameters(method = "getInvalidStringAttribute")
	public void cSetterShouldThrowsIAEForInvalidPasswordConfirmation(String invalidPasswordConfimation) {
		user.setPassword(invalidPasswordConfimation);
	}

	private static final Object[] getInvalidId() {
		return new Integer[][] { { -1234 }, { -10 }, { 0 } };
	}

	@Test(expected = IllegalArgumentException.class)
	@Parameters(method = "getInvalidId")
	public void dSetterShouldThrowsIAEForInvalidId(int invalidId) {
		user.setId(invalidId);
	}

	private static final Object[] getValidPasswordConfirmation() {
		return new String[][] { { "equal" } };
	}

	@Test
	@Parameters(method = "getValidPasswordConfirmation")
	public void ePasswordShouldBeTheSameAsPasswordConfirmation(String passwordConfirmation) {
		user.setPassword("equal");
		assertEquals(passwordConfirmation, user.getPassword());
	}

	@Test
	@Parameters(method = "getValidPasswordConfirmation")
	public void fPasswordIsNotTheSameAsPasswordConfirmation(String passwordConfirmation) {
		user.setPassword("isnotequal");
		assertFalse(passwordConfirmation.equals(user.getPassword()));
	}

	private static final Object[] getValidId() {
		return new Integer[][] { { 1 }, { 10 }, { 1234 } };
	}

	@Test
	@Parameters(method = "getValidId")
	public void gIdValueShouldBeSetForValidId(int validId) {
		user.setId(validId);
		assertTrue(validId == user.getId());
	}

	private static final Object[] getValidStringAttribute() {
		return new String[][] { { "abc123`08j)(" }, { "_nj190ks" }, { "MMMMM_KOLOPOOL" } };
	}

	@Test
	@Parameters(method = "getValidStringAttribute")
	public void hLoginValueShouldBeSetForValidLogin(String validLogin) {
		user.setLogin(validLogin);
		assertEquals(validLogin, user.getLogin());
	}

	@Test
	@Parameters(method = "getValidStringAttribute")
	public void iPasswordShouldBeSetForValidPassword(String validPassword) {
		user.setPassword(validPassword);
		assertEquals(validPassword, user.getPassword());
	}

	@Test
	@Parameters(method = "getValidStringAttribute")
	public void jPasswordConfirmationShouldBeSetForValidPasswordConfirmation(String validPasswordConfirmation) {
		user.setPassword(validPasswordConfirmation);
		assertEquals(validPasswordConfirmation, user.getPassword());
	}

	// TODO email tests
}
